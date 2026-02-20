/**
 * Bidirectional family relationship definitions for cemetery plot connections.
 *
 * Each entry defines:
 *  - label:    What the MEMBER calls themselves relative to the OCCUPANT
 *              e.g. "I am the occupant's Nephew"
 *  - inverse:  What the OCCUPANT would call the MEMBER
 *              e.g. "The occupant is my Uncle"
 *  - category: Generation / tree position for family-tree rendering
 */

export interface RelationshipDef {
  value: string;          // stored in member_relationship column
  label: string;          // shown in the dropdown: "I am their ___"
  inverse: string;        // stored in occupant_relationship column
  inverseLabel: string;   // shown in display: "Occupant is my ___"
  category: string;       // family-tree generation bucket
  generation: number;     // relative generation offset (0 = same, 1 = parent, -1 = child, etc.)
}

export const RELATIONSHIPS: RelationshipDef[] = [
  // ── Direct descendants (member is BELOW the occupant) ──────────────────
  { value: 'child',             label: 'Child (Son / Daughter)',        inverse: 'Parent',            inverseLabel: 'Parent',             category: 'child',       generation: -1 },
  { value: 'grandchild',        label: 'Grandchild',                    inverse: 'Grandparent',       inverseLabel: 'Grandparent',        category: 'grandchild',  generation: -2 },
  { value: 'great_grandchild',  label: 'Great-Grandchild',              inverse: 'Great-Grandparent', inverseLabel: 'Great-Grandparent',  category: 'grandchild',  generation: -3 },

  // ── Direct ancestors (member is ABOVE the occupant) ────────────────────
  { value: 'parent',            label: 'Parent (Father / Mother)',      inverse: 'Child',             inverseLabel: 'Child',              category: 'parent',      generation: 1  },
  { value: 'grandparent',       label: 'Grandparent',                   inverse: 'Grandchild',        inverseLabel: 'Grandchild',         category: 'grandparent', generation: 2  },
  { value: 'great_grandparent', label: 'Great-Grandparent',             inverse: 'Great-Grandchild',  inverseLabel: 'Great-Grandchild',   category: 'grandparent', generation: 3  },

  // ── Siblings (same generation) ─────────────────────────────────────────
  { value: 'sibling',           label: 'Sibling (Brother / Sister)',    inverse: 'Sibling',           inverseLabel: 'Sibling',            category: 'sibling',     generation: 0  },
  { value: 'half_sibling',      label: 'Half-Sibling',                  inverse: 'Half-Sibling',      inverseLabel: 'Half-Sibling',       category: 'sibling',     generation: 0  },
  { value: 'step_sibling',      label: 'Step-Sibling',                  inverse: 'Step-Sibling',      inverseLabel: 'Step-Sibling',       category: 'sibling',     generation: 0  },

  // ── Spouse / Partner ───────────────────────────────────────────────────
  { value: 'spouse',            label: 'Spouse (Husband / Wife)',       inverse: 'Spouse',            inverseLabel: 'Spouse',             category: 'spouse',      generation: 0  },
  { value: 'partner',           label: 'Domestic Partner',              inverse: 'Domestic Partner',  inverseLabel: 'Domestic Partner',   category: 'spouse',      generation: 0  },

  // ── Aunts / Uncles (member is BELOW the occupant's generation) ─────────
  { value: 'nephew_niece',      label: 'Nephew / Niece',                inverse: 'Aunt/Uncle',        inverseLabel: 'Aunt / Uncle',       category: 'nibling',     generation: -1 },
  { value: 'great_nephew_niece',label: 'Great-Nephew / Great-Niece',    inverse: 'Great-Aunt/Uncle',  inverseLabel: 'Great-Aunt / Uncle', category: 'nibling',     generation: -2 },

  // ── Aunts / Uncles (member is ABOVE the occupant's generation) ─────────
  { value: 'aunt_uncle',        label: 'Aunt / Uncle',                  inverse: 'Nephew/Niece',      inverseLabel: 'Nephew / Niece',     category: 'pibling',     generation: 1  },
  { value: 'great_aunt_uncle',  label: 'Great-Aunt / Great-Uncle',      inverse: 'Great-Nephew/Niece',inverseLabel: 'Great-Nephew / Niece', category: 'pibling',  generation: 2  },

  // ── Cousins ────────────────────────────────────────────────────────────
  { value: 'first_cousin',      label: '1st Cousin',                    inverse: '1st Cousin',        inverseLabel: '1st Cousin',         category: 'cousin',      generation: 0  },
  { value: 'second_cousin',     label: '2nd Cousin',                    inverse: '2nd Cousin',        inverseLabel: '2nd Cousin',         category: 'cousin',      generation: 0  },
  { value: 'cousin_once_removed','label': '1st Cousin Once Removed',    inverse: '1st Cousin Once Removed', inverseLabel: '1st Cousin Once Removed', category: 'cousin', generation: 1 },

  // ── Step / In-law ──────────────────────────────────────────────────────
  { value: 'step_child',        label: 'Step-Child',                    inverse: 'Step-Parent',       inverseLabel: 'Step-Parent',        category: 'step',        generation: -1 },
  { value: 'step_parent',       label: 'Step-Parent',                   inverse: 'Step-Child',        inverseLabel: 'Step-Child',         category: 'step',        generation: 1  },
  { value: 'child_in_law',      label: 'Child-in-Law (Son/Daughter)',   inverse: 'Parent-in-Law',     inverseLabel: 'Parent-in-Law',      category: 'in_law',      generation: -1 },
  { value: 'parent_in_law',     label: 'Parent-in-Law',                 inverse: 'Child-in-Law',      inverseLabel: 'Child-in-Law',       category: 'in_law',      generation: 1  },
  { value: 'sibling_in_law',    label: 'Sibling-in-Law',                inverse: 'Sibling-in-Law',    inverseLabel: 'Sibling-in-Law',     category: 'in_law',      generation: 0  },

  // ── Adoptive ───────────────────────────────────────────────────────────
  { value: 'adoptive_child',    label: 'Adoptive Child',                inverse: 'Adoptive Parent',   inverseLabel: 'Adoptive Parent',    category: 'adoptive',    generation: -1 },
  { value: 'adoptive_parent',   label: 'Adoptive Parent',               inverse: 'Adoptive Child',    inverseLabel: 'Adoptive Child',     category: 'adoptive',    generation: 1  },

  // ── General / Distant ──────────────────────────────────────────────────
  { value: 'descendant',        label: 'Descendant (general)',          inverse: 'Ancestor',          inverseLabel: 'Ancestor',           category: 'descendant',  generation: -99 },
  { value: 'ancestor',          label: 'Ancestor (general)',            inverse: 'Descendant',        inverseLabel: 'Descendant',         category: 'ancestor',    generation: 99  },
  { value: 'godchild',          label: 'Godchild',                      inverse: 'Godparent',         inverseLabel: 'Godparent',          category: 'other',       generation: -1 },
  { value: 'godparent',         label: 'Godparent',                     inverse: 'Godchild',          inverseLabel: 'Godchild',           category: 'other',       generation: 1  },
  { value: 'family_friend',     label: 'Close Family Friend',           inverse: 'Close Family Friend', inverseLabel: 'Close Family Friend', category: 'other',    generation: 0  },
  { value: 'other',             label: 'Other (specify in notes)',       inverse: 'Other',             inverseLabel: 'Other',              category: 'other',       generation: 0  },
];

/** Look up a relationship definition by its stored value */
export function getRelationship(value: string): RelationshipDef | undefined {
  return RELATIONSHIPS.find(r => r.value === value);
}

/**
 * Given what the member says they are (e.g. "nephew_niece"),
 * return what the occupant is to them (e.g. "Aunt/Uncle").
 */
export function deriveOccupantRelationship(memberRelationshipValue: string): string {
  const def = getRelationship(memberRelationshipValue);
  return def ? def.inverse : memberRelationshipValue;
}

/**
 * Given what the member says they are, return the category
 * for family-tree positioning.
 */
export function getRelationshipCategory(memberRelationshipValue: string): string {
  const def = getRelationship(memberRelationshipValue);
  return def ? def.category : 'other';
}

/** Group relationships by category for the dropdown */
export const RELATIONSHIP_GROUPS: { label: string; values: RelationshipDef[] }[] = [
  { label: 'Direct Descendants',   values: RELATIONSHIPS.filter(r => ['child','grandchild','great_grandchild'].includes(r.value)) },
  { label: 'Direct Ancestors',     values: RELATIONSHIPS.filter(r => ['parent','grandparent','great_grandparent'].includes(r.value)) },
  { label: 'Siblings',             values: RELATIONSHIPS.filter(r => r.category === 'sibling') },
  { label: 'Spouse / Partner',     values: RELATIONSHIPS.filter(r => r.category === 'spouse') },
  { label: 'Niece / Nephew',       values: RELATIONSHIPS.filter(r => r.category === 'nibling') },
  { label: 'Aunt / Uncle',         values: RELATIONSHIPS.filter(r => r.category === 'pibling') },
  { label: 'Cousins',              values: RELATIONSHIPS.filter(r => r.category === 'cousin') },
  { label: 'Step / In-Law',        values: RELATIONSHIPS.filter(r => ['step','in_law'].includes(r.category)) },
  { label: 'Adoptive',             values: RELATIONSHIPS.filter(r => r.category === 'adoptive') },
  { label: 'Other',                values: RELATIONSHIPS.filter(r => ['descendant','ancestor','godchild','godparent','family_friend','other'].includes(r.value)) },
];
