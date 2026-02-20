# Cemetery Committee Portal - Design & Implementation Plan

**Created:** Feb 20, 2026

## 1. Overview

This document outlines the full plan to build the Cemetery Committee Portal. This includes a new `cemetery_committee` role, a back office for committee members, a public-facing page, and a system for managing change requests and media uploads from the public.

## 2. Database Schema Additions

Five new tables will be added to the Supabase database:

**1. `committee_meetings`**
- `id` (uuid, pk)
- `meeting_date` (date, not null)
- `start_time` (time)
- `end_time` (time)
- `location` (varchar)
- `title` (varchar, not null)
- `agenda_published` (boolean, default: false)
- `minutes_published` (boolean, default: false)
- `created_at`, `updated_at` (timestamps)

**2. `meeting_agendas`**
- `id` (uuid, pk)
- `meeting_id` (uuid, fk -> committee_meetings.id)
- `item_number` (integer, not null)
- `title` (varchar, not null)
- `description` (text)
- `submitted_by` (uuid, fk -> users.id, nullable) - *for public submissions*
- `status` (varchar, default: pending) - *pending, approved, rejected*
- `created_at`, `updated_at` (timestamps)

**3. `meeting_minutes`**
- `id` (uuid, pk)
- `meeting_id` (uuid, fk -> committee_meetings.id)
- `content` (text, not null) - *Markdown format*
- `approved` (boolean, default: false)
- `created_at`, `updated_at` (timestamps)

**4. `committee_goals`**
- `id` (uuid, pk)
- `title` (varchar, not null)
- `description` (text)
- `status` (varchar, default: in_progress) - *in_progress, completed, archived*
- `due_date` (date, nullable)
- `created_by` (uuid, fk -> users.id)
- `created_at`, `updated_at` (timestamps)

**5. `change_requests`**
- `id` (uuid, pk)
- `request_type` (varchar, not null) - *occupant_details, media_upload*
- `deceased_id` (uuid, fk -> deceased_records.id, nullable)
- `submitted_by_name` (varchar, not null)
- `submitted_by_email` (varchar, not null)
- `details` (jsonb, not null) - *stores the requested changes or media info*
- `status` (varchar, default: pending) - *pending, approved, rejected*
- `notes` (text)
- `created_at`, `updated_at` (timestamps)

## 3. User Role - `cemetery_committee`

A new `cemetery_committee` role will be added to the `users` table `role` enum. This will grant access to the new back office sections.

## 4. Back Office - Cemetery Committee Portal (`/admin/committee`)

This will be a new section in the admin dashboard, accessible only to `admin` and `cemetery_committee` roles.

- **Meetings:** CRUD for meetings, with actions to publish agendas and minutes.
- **Agendas:** View agenda items, approve/reject public submissions.
- **Minutes:** A Markdown editor to write and publish meeting minutes.
- **Goals:** CRUD for committee goals and tracking their status.
- **Change Requests:** A spreadsheet-like view of all public submissions (occupant details changes, media uploads) with approve/reject actions.

## 5. Public-Facing Portal (`/cemetery-committee`)

A new public page with:
- Information about the cemetery committee.
- A list of published meeting agendas and minutes.
- A form to **submit an agenda item** for consideration.
- A form to **request a change** to an occupant's details or **upload media**.

## 6. Implementation Steps

1. **Database:** Write and run the SQL migration script for the new tables.
2. **User Management:** Update the existing `/admin/users` page to include the `cemetery_committee` role in the role dropdown and add a filter for it.
3. **API Routes:** Create all necessary API endpoints for the new features (meetings, agendas, minutes, goals, change requests).
4. **Committee Back Office:** Build the new React components and pages for the `/admin/committee` section.
5. **Public Portal:** Build the public-facing page and forms.
6. **Navigation:** Add a link to `/cemetery-committee` in the main site navigation and a link to `/admin/committee` in the admin dashboard.
7. **Deploy:** Push all changes to GitHub to trigger a Vercel deployment.
