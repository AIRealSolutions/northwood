-- Northwood Cemetery G-H addition mapping
-- Working rows A-D are internal mapping lanes only:
-- A = G1 (Gardenia–Gladiola)
-- B = G2 (Gladiola–Heather)
-- C = H1 (Heather–Hydrangea)
-- D = H2 (Hydrangea–north boundary)

create extension if not exists pgcrypto;

create table if not exists public.gh_map_blocks (
  id text primary key,
  official_section text not null check (official_section in ('G', 'H')),
  official_subsection text not null check (official_subsection in ('G1', 'G2', 'H1', 'H2')),
  working_row text not null check (working_row in ('A', 'B', 'C', 'D')),
  block_number integer not null check (block_number between 1 and 25),
  columns_count integer not null check (columns_count between 1 and 12),
  rows_count integer not null check (rows_count between 1 and 12),
  lower_road text,
  upper_road text,
  is_verified boolean not null default false,
  notes text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (working_row, block_number)
);

create table if not exists public.gh_map_plots (
  id uuid primary key default gen_random_uuid(),
  block_id text not null references public.gh_map_blocks(id) on delete cascade,
  row_index integer not null check (row_index > 0),
  column_index integer not null check (column_index > 0),
  status text not null default 'unverified'
    check (status in ('unverified', 'available', 'reserved', 'occupied', 'no_sell')),
  legacy_plot_id uuid references public.plots(id) on delete set null,
  notes text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (block_id, row_index, column_index)
);

create table if not exists public.gh_ownership_groups (
  id uuid primary key default gen_random_uuid(),
  historical_number text not null,
  owner_name text,
  owner_contact text,
  purchase_date date,
  source_reference text,
  notes text,
  created_by text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.gh_ownership_group_plots (
  ownership_group_id uuid not null references public.gh_ownership_groups(id) on delete cascade,
  map_plot_id uuid not null references public.gh_map_plots(id) on delete cascade,
  created_at timestamptz not null default now(),
  primary key (ownership_group_id, map_plot_id),
  unique (map_plot_id)
);

create index if not exists gh_map_plots_block_idx
  on public.gh_map_plots(block_id, row_index, column_index);
create index if not exists gh_ownership_number_idx
  on public.gh_ownership_groups(historical_number);
create index if not exists gh_ownership_owner_idx
  on public.gh_ownership_groups(owner_name);

create or replace function public.touch_gh_mapping_updated_at()
returns trigger
language plpgsql
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

drop trigger if exists touch_gh_map_blocks on public.gh_map_blocks;
create trigger touch_gh_map_blocks
before update on public.gh_map_blocks
for each row execute function public.touch_gh_mapping_updated_at();

drop trigger if exists touch_gh_map_plots on public.gh_map_plots;
create trigger touch_gh_map_plots
before update on public.gh_map_plots
for each row execute function public.touch_gh_mapping_updated_at();

drop trigger if exists touch_gh_ownership_groups on public.gh_ownership_groups;
create trigger touch_gh_ownership_groups
before update on public.gh_ownership_groups
for each row execute function public.touch_gh_mapping_updated_at();

alter table public.gh_map_blocks enable row level security;
alter table public.gh_map_plots enable row level security;
alter table public.gh_ownership_groups enable row level security;
alter table public.gh_ownership_group_plots enable row level security;

-- The Next.js admin API uses the service-role client. No browser-write
-- policies are created, so ownership data cannot be changed anonymously.

do $$
declare
  band text;
  n integer;
  first_block integer;
  last_block integer;
  block_columns integer;
  block_rows integer;
  official_section_value text;
  subsection_value text;
  lower_road_value text;
  upper_road_value text;
  verified_value boolean;
begin
  foreach band in array array['A', 'B', 'C', 'D']
  loop
    first_block := case when band in ('C', 'D') then 3 else 1 end;
    last_block := 25;
    block_rows := case band when 'A' then 4 when 'B' then 7 when 'C' then 6 else 5 end;
    official_section_value := case when band in ('A', 'B') then 'G' else 'H' end;
    subsection_value := case band when 'A' then 'G1' when 'B' then 'G2' when 'C' then 'H1' else 'H2' end;
    lower_road_value := case band when 'A' then 'Gardenia' when 'B' then 'Gladiola' when 'C' then 'Heather' else 'Hydrangea' end;
    upper_road_value := case band when 'A' then 'Gladiola' when 'B' then 'Heather' when 'C' then 'Hydrangea' else 'Northern boundary' end;

    for n in first_block..last_block
    loop
      block_columns := case n when 1 then 2 when 2 then 3 when 3 then 4 when 4 then 5 when 5 then 3 else 3 end;
      verified_value := n between 1 and 5;

      insert into public.gh_map_blocks (
        id, official_section, official_subsection, working_row, block_number,
        columns_count, rows_count, lower_road, upper_road, is_verified
      ) values (
        band || n, official_section_value, subsection_value, band, n,
        block_columns, block_rows, lower_road_value, upper_road_value, verified_value
      )
      on conflict (id) do nothing;
    end loop;
  end loop;
end;
$$;

insert into public.gh_map_plots (block_id, row_index, column_index, status)
select
  block.id,
  row_number,
  column_number,
  case
    when block.id = 'A1' and column_number = 1 then 'no_sell'
    else 'unverified'
  end
from public.gh_map_blocks block
cross join lateral generate_series(1, block.rows_count) row_number
cross join lateral generate_series(1, block.columns_count) column_number
on conflict (block_id, row_index, column_index) do nothing;

create or replace view public.gh_map_plot_details as
select
  p.id,
  p.block_id,
  b.official_section,
  b.official_subsection,
  b.working_row,
  b.block_number,
  p.row_index,
  p.column_index,
  p.status,
  p.legacy_plot_id,
  g.id as ownership_group_id,
  g.historical_number,
  g.owner_name,
  g.owner_contact,
  g.purchase_date,
  g.source_reference,
  g.notes as ownership_notes
from public.gh_map_plots p
join public.gh_map_blocks b on b.id = p.block_id
left join public.gh_ownership_group_plots gp on gp.map_plot_id = p.id
left join public.gh_ownership_groups g on g.id = gp.ownership_group_id;
