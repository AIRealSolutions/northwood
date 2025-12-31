# Northwood Cemetery - Detailed Layout Analysis

## Orientation (Corrected)
Based on official plat drawings:
- **Fodale Avenue** = EAST side
- **Mitchell Street** = NORTH side  
- **Sweet Bay / Leaf Dr** = SOUTH side
- **Azalea** = WEST border (no road west of Section A)
- **Hibiscus** = EAST border (no road east of Section H)

## Visual Layout (Bird's Eye View)
```
                    MITCHELL STREET (North)
                           ↑
    ┌─────────────────────────────────────────────────────────┐
    │                                                         │
    │  A    B    C    D    E    F    G    H                   │ F
    │  z    e    h    o    l    i    a    e                   │ O
    │  a    e    i    g    m    g    r    a                   │ D
    │  l    c    n    w         d    t    │ A
    │  e    h    q    o              e    h                   │ L
    │  a    u    o    d              n    e                   │ E
    │       a    d         i    r                   │
    │       p         a              │ (East)
    │       i                                                 │
    │       n                                                 │
    │                                                         │
    └─────────────────────────────────────────────────────────┘
                    SWEET BAY / LEAF DR (South)
```

## Block Structure (Within Each Section)

Each section is divided into BLOCKS. Each block contains rows that go in alternating directions:

### Block 1: Rows 1-36
- Start at SOUTH end (Sweet Bay)
- Row 1 at bottom, Row 36 at top
- Ascending order (1 → 36)

### [BLANK LINE / PATH between blocks]

### Block 2: Rows 37-72 (or 37-74 depending on section)
- Start at NORTH end (after the blank line)
- Row 37 at top, descending back down
- Descending order (37 → 72)

### Visual of Block Structure:
```
                    ← Mitchell St (North)
    ┌─────────────────────────────────────┐
    │  Row 37  ←─────────────────────────  │  Block 2
    │  Row 38                              │  (descending)
    │  ...                                 │
    │  Row 72                              │
    ├─────────────────────────────────────┤  ← Blank line/path
    │  Row 36  ←─────────────────────────  │  Block 1
    │  Row 35                              │  (ascending)
    │  ...                                 │
    │  Row 2                               │
    │  Row 1   ←─────────────────────────  │
    └─────────────────────────────────────┘
                    ← Sweet Bay (South)
```

## Plot Layout Per Row

Each row contains **8 full-sized burial plots**:
- 4 plots on west side
- 4 plots on east side
- (Or possibly 2 groups of 4 with a center path)

```
Row N:  [1][2][3][4]  |  [5][6][7][8]
        ← West side   |   East side →
```

## Roads Between Sections

Roads run NORTH-SOUTH between sections:

| West Section | Road | East Section |
|--------------|------|--------------|
| (border) | Azalea | A |
| A | Beech | B |
| B | Chinquapin | C |
| C | Dogwood | D |
| D | Elm | E |
| E | Fig | F |
| F | Gardenia | G |
| G | Heather | H |
| H | Hibiscus | (border) |

**Note:** Azalea is the WEST border (no road west of it), Hibiscus is the EAST border (no road east of it).

## Sections G & H - Internal Drives

Sections G and H have additional 12' internal drives running EAST-WEST:
- Hydrangia Drive
- Heather Drive  
- Gardinia Drive

These divide G & H into sub-blocks.

## Plot Number Format

Based on the data:
- Format: `NW-[Section]-[Row]-[Position]`
- Example: `NW-A-015-3` = Section A, Row 15, Position 3
- Positions: 1-8 (or 1-4 depending on how they're numbered)

## Summary

| Aspect | Value |
|--------|-------|
| Orientation | Mitchell (N), Sweet Bay (S), Azalea (W), Fodale (E) |
| Sections | A-H (West to East) |
| Rows per block | 36 (rows 1-36, then 37-72+) |
| Plots per row | 8 |
| Block pattern | Ascending (1-36), blank, Descending (37+) |
| Roads | Between sections, running N-S |
