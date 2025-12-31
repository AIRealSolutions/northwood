# Northwood Cemetery - Block/Row Structure

## Understanding from Official Plat Drawings

### Terminology
- **Block = Row** - Each numbered row (1, 2, 3... 37, 38...) is a "block"
- Each block/row contains **8 burial locations**:
  - 4 FRONT locations (positions 1-4)
  - 4 BACK locations (positions 5-8)

### Visual of a Single Block/Row
```
┌─────────────────────────────────────────────┐
│  FRONT (facing road)                        │
│  [1]  [2]  [3]  [4]                         │
│  ─────────────────── (center line)          │
│  [5]  [6]  [7]  [8]                         │
│  BACK (facing away from road)               │
└─────────────────────────────────────────────┘
```

### Row Numbering Pattern (Serpentine/Boustrophedon)

**First Pass (Rows 1-37): Sweet Bay → Mitchell St**
```
Mitchell St (North)
        ↑
   Row 37
   Row 36
   Row 35
    ...
   Row 3
   Row 2
   Row 1
        ↑
Sweet Bay (South) - START HERE
```

**Second Pass (Rows 38+): Mitchell St → Sweet Bay**
```
Mitchell St (North) - START HERE
        ↓
   Row 38
   Row 39
   Row 40
    ...
   Row 72
   Row 73
   Row 74
        ↓
Sweet Bay (South)
```

### Complete Section Layout (Bird's Eye View)

Looking at Section A from above:
```
                MITCHELL ST (North)
                      │
    ┌─────────────────┼─────────────────┐
    │                 │                 │
    │  Row 38 ←───────┼─────────────────│
    │  [1][2][3][4]   │   [5][6][7][8]  │
    │  ─────────────  │  ─────────────  │
    │                 │                 │
    │  Row 39         │                 │
    │  ...            │                 │
    │                 │                 │
    │  Row 74         │                 │
    │                 │                 │
    ├─────────────────┼─────────────────┤  ← Path/Divider
    │                 │                 │
    │  Row 37         │                 │
    │  ...            │                 │
    │                 │                 │
    │  Row 2          │                 │
    │  [1][2][3][4]   │   [5][6][7][8]  │
    │  ─────────────  │  ─────────────  │
    │  Row 1 ←────────┼─────────────────│
    │                 │                 │
    └─────────────────┼─────────────────┘
                      │
                SWEET BAY (South)

    ←── Azalea        │        Beech ──→
       (West)         │        (East)
```

### Plot Number Format
Based on the data: `NW-[Section]-[Row]-[Position]`
- Example: `NW-A-015-3` = Section A, Row 15, Position 3 (front side)
- Example: `NW-A-015-7` = Section A, Row 15, Position 7 (back side)

### Positions within a Block/Row
| Position | Side | Location |
|----------|------|----------|
| 1 | Front | West end |
| 2 | Front | West-center |
| 3 | Front | East-center |
| 4 | Front | East end |
| 5 | Back | West end |
| 6 | Back | West-center |
| 7 | Back | East-center |
| 8 | Back | East end |

### Summary
- 8 sections (A-H) running West to East
- Each section has ~74 rows (varies by section)
- Each row has 8 burial plots (4 front + 4 back)
- Rows 1-37: Start at Sweet Bay, go toward Mitchell St
- Rows 38-74: Start at Mitchell St, return toward Sweet Bay
- Roads run North-South between sections
