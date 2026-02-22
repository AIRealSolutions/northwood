/**
 * Bidirectional family relationship definitions for cemetery plot connections.
 *
 * Each entry defines:
 *  - label:    What the MEMBER calls themselves relative to the OCCUPANT
 *              e.g. "I am the occupant's Nephew"
 *  - inverse:  What the OCCUPANT would call the MEMBER
 *              e.g. "The occupant is my Uncle"
 *  - category: Generation / tree position for family-tree rendering
 *
 * Paternal = through the father's side
 * Maternal = through the mother's side
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

  // ── Spouse / Partner ───────────────────────────────────────────────────────
  { value: 'spouse',                    label: 'Spouse (Husband / Wife)',             inverse: 'Spouse',                    inverseLabel: 'Spouse',                   category: 'spouse',      generation: 0  },
  { value: 'partner',                   label: 'Domestic Partner',                    inverse: 'Domestic Partner',          inverseLabel: 'Domestic Partner',         category: 'spouse',      generation: 0  },

  // ── Direct descendants ─────────────────────────────────────────────────────
  { value: 'child',                     label: 'Child (Son / Daughter)',              inverse: 'Parent',                    inverseLabel: 'Parent',                   category: 'child',       generation: -1 },
  { value: 'grandchild',                label: 'Grandchild',                          inverse: 'Grandparent',               inverseLabel: 'Grandparent',              category: 'grandchild',  generation: -2 },
  { value: 'great_grandchild',          label: 'Great-Grandchild',                    inverse: 'Great-Grandparent',         inverseLabel: 'Great-Grandparent',        category: 'grandchild',  generation: -3 },
  { value: 'great_great_grandchild',    label: 'Great-Great-Grandchild',              inverse: 'Great-Great-Grandparent',   inverseLabel: 'Great-Great-Grandparent',  category: 'grandchild',  generation: -4 },

  // ── Direct ancestors — Paternal ────────────────────────────────────────────
  { value: 'father',                    label: 'Father (Paternal Parent)',            inverse: 'Child',                     inverseLabel: 'Child',                    category: 'parent',      generation: 1  },
  { value: 'paternal_grandfather',      label: 'Grandfather — Paternal',              inverse: 'Grandchild',                inverseLabel: 'Grandchild',               category: 'grandparent', generation: 2  },
  { value: 'paternal_grandmother',      label: 'Grandmother — Paternal',              inverse: 'Grandchild',                inverseLabel: 'Grandchild',               category: 'grandparent', generation: 2  },
  { value: 'paternal_great_grandfather',label: 'Great-Grandfather — Paternal',        inverse: 'Great-Grandchild',          inverseLabel: 'Great-Grandchild',         category: 'grandparent', generation: 3  },
  { value: 'paternal_great_grandmother',label: 'Great-Grandmother — Paternal',        inverse: 'Great-Grandchild',          inverseLabel: 'Great-Grandchild',         category: 'grandparent', generation: 3  },
  { value: 'paternal_2x_great_grandfather', label: 'Great-Great-Grandfather — Paternal', inverse: 'Great-Great-Grandchild', inverseLabel: 'Great-Great-Grandchild',   category: 'grandparent', generation: 4  },
  { value: 'paternal_2x_great_grandmother', label: 'Great-Great-Grandmother — Paternal', inverse: 'Great-Great-Grandchild', inverseLabel: 'Great-Great-Grandchild',   category: 'grandparent', generation: 4  },

  // ── Direct ancestors — Maternal ────────────────────────────────────────────
  { value: 'mother',                    label: 'Mother (Maternal Parent)',            inverse: 'Child',                     inverseLabel: 'Child',                    category: 'parent',      generation: 1  },
  { value: 'maternal_grandfather',      label: 'Grandfather — Maternal',              inverse: 'Grandchild',                inverseLabel: 'Grandchild',               category: 'grandparent', generation: 2  },
  { value: 'maternal_grandmother',      label: 'Grandmother — Maternal',              inverse: 'Grandchild',                inverseLabel: 'Grandchild',               category: 'grandparent', generation: 2  },
  { value: 'maternal_great_grandfather',label: 'Great-Grandfather — Maternal',        inverse: 'Great-Grandchild',          inverseLabel: 'Great-Grandchild',         category: 'grandparent', generation: 3  },
  { value: 'maternal_great_grandmother',label: 'Great-Grandmother — Maternal',        inverse: 'Great-Grandchild',          inverseLabel: 'Great-Grandchild',         category: 'grandparent', generation: 3  },
  { value: 'maternal_2x_great_grandfather', label: 'Great-Great-Grandfather — Maternal', inverse: 'Great-Great-Grandchild', inverseLabel: 'Great-Great-Grandchild',   category: 'grandparent', generation: 4  },
  { value: 'maternal_2x_great_grandmother', label: 'Great-Great-Grandmother — Maternal', inverse: 'Great-Great-Grandchild', inverseLabel: 'Great-Great-Grandchild',   category: 'grandparent', generation: 4  },

  // ── Generic parent / grandparent (when side is unknown) ───────────────────
  { value: 'parent',                    label: 'Parent (Father / Mother)',            inverse: 'Child',                     inverseLabel: 'Child',                    category: 'parent',      generation: 1  },
  { value: 'grandparent',               label: 'Grandparent',                         inverse: 'Grandchild',                inverseLabel: 'Grandchild',               category: 'grandparent', generation: 2  },
  { value: 'great_grandparent',         label: 'Great-Grandparent',                   inverse: 'Great-Grandchild',          inverseLabel: 'Great-Grandchild',         category: 'grandparent', generation: 3  },

  // ── Siblings ───────────────────────────────────────────────────────────────
  { value: 'sibling',                   label: 'Sibling (Brother / Sister)',          inverse: 'Sibling',                   inverseLabel: 'Sibling',                  category: 'sibling',     generation: 0  },
  { value: 'half_sibling',              label: 'Half-Sibling',                        inverse: 'Half-Sibling',              inverseLabel: 'Half-Sibling',             category: 'sibling',     generation: 0  },
  { value: 'step_sibling',              label: 'Step-Sibling',                        inverse: 'Step-Sibling',              inverseLabel: 'Step-Sibling',             category: 'sibling',     generation: 0  },

  // ── Aunts & Uncles — Paternal ──────────────────────────────────────────────
  { value: 'paternal_uncle',            label: 'Uncle — Paternal',                    inverse: 'Nephew/Niece',              inverseLabel: 'Nephew / Niece',           category: 'pibling',     generation: 1  },
  { value: 'paternal_aunt',             label: 'Aunt — Paternal',                     inverse: 'Nephew/Niece',              inverseLabel: 'Nephew / Niece',           category: 'pibling',     generation: 1  },
  { value: 'paternal_great_uncle',      label: 'Great-Uncle — Paternal',              inverse: 'Great-Nephew/Niece',        inverseLabel: 'Great-Nephew / Niece',     category: 'pibling',     generation: 2  },
  { value: 'paternal_great_aunt',       label: 'Great-Aunt — Paternal',               inverse: 'Great-Nephew/Niece',        inverseLabel: 'Great-Nephew / Niece',     category: 'pibling',     generation: 2  },

  // ── Aunts & Uncles — Maternal ──────────────────────────────────────────────
  { value: 'maternal_uncle',            label: 'Uncle — Maternal',                    inverse: 'Nephew/Niece',              inverseLabel: 'Nephew / Niece',           category: 'pibling',     generation: 1  },
  { value: 'maternal_aunt',             label: 'Aunt — Maternal',                     inverse: 'Nephew/Niece',              inverseLabel: 'Nephew / Niece',           category: 'pibling',     generation: 1  },
  { value: 'maternal_great_uncle',      label: 'Great-Uncle — Maternal',              inverse: 'Great-Nephew/Niece',        inverseLabel: 'Great-Nephew / Niece',     category: 'pibling',     generation: 2  },
  { value: 'maternal_great_aunt',       label: 'Great-Aunt — Maternal',               inverse: 'Great-Nephew/Niece',        inverseLabel: 'Great-Nephew / Niece',     category: 'pibling',     generation: 2  },

  // ── Generic Aunt / Uncle (side unknown) ───────────────────────────────────
  { value: 'aunt_uncle',                label: 'Aunt / Uncle',                        inverse: 'Nephew/Niece',              inverseLabel: 'Nephew / Niece',           category: 'pibling',     generation: 1  },
  { value: 'great_aunt_uncle',          label: 'Great-Aunt / Great-Uncle',            inverse: 'Great-Nephew/Niece',        inverseLabel: 'Great-Nephew / Niece',     category: 'pibling',     generation: 2  },

  // ── Nephews & Nieces ───────────────────────────────────────────────────────
  { value: 'nephew',                    label: 'Nephew',                              inverse: 'Aunt/Uncle',                inverseLabel: 'Aunt / Uncle',             category: 'nibling',     generation: -1 },
  { value: 'niece',                     label: 'Niece',                               inverse: 'Aunt/Uncle',                inverseLabel: 'Aunt / Uncle',             category: 'nibling',     generation: -1 },
  { value: 'nephew_niece',              label: 'Nephew / Niece',                      inverse: 'Aunt/Uncle',                inverseLabel: 'Aunt / Uncle',             category: 'nibling',     generation: -1 },
  { value: 'great_nephew',              label: 'Great-Nephew',                        inverse: 'Great-Aunt/Uncle',          inverseLabel: 'Great-Aunt / Uncle',       category: 'nibling',     generation: -2 },
  { value: 'great_niece',               label: 'Great-Niece',                         inverse: 'Great-Aunt/Uncle',          inverseLabel: 'Great-Aunt / Uncle',       category: 'nibling',     generation: -2 },
  { value: 'great_nephew_niece',        label: 'Great-Nephew / Great-Niece',          inverse: 'Great-Aunt/Uncle',          inverseLabel: 'Great-Aunt / Uncle',       category: 'nibling',     generation: -2 },

  // ── Cousins — Paternal ─────────────────────────────────────────────────────
  { value: 'paternal_first_cousin',     label: '1st Cousin — Paternal',               inverse: '1st Cousin',                inverseLabel: '1st Cousin',               category: 'cousin',      generation: 0  },
  { value: 'paternal_second_cousin',    label: '2nd Cousin — Paternal',               inverse: '2nd Cousin',                inverseLabel: '2nd Cousin',               category: 'cousin',      generation: 0  },
  { value: 'paternal_third_cousin',     label: '3rd Cousin — Paternal',               inverse: '3rd Cousin',                inverseLabel: '3rd Cousin',               category: 'cousin',      generation: 0  },
  { value: 'paternal_first_cousin_once_removed', label: '1st Cousin Once Removed — Paternal', inverse: '1st Cousin Once Removed', inverseLabel: '1st Cousin Once Removed', category: 'cousin', generation: 1 },

  // ── Cousins — Maternal ─────────────────────────────────────────────────────
  { value: 'maternal_first_cousin',     label: '1st Cousin — Maternal',               inverse: '1st Cousin',                inverseLabel: '1st Cousin',               category: 'cousin',      generation: 0  },
  { value: 'maternal_second_cousin',    label: '2nd Cousin — Maternal',               inverse: '2nd Cousin',                inverseLabel: '2nd Cousin',               category: 'cousin',      generation: 0  },
  { value: 'maternal_third_cousin',     label: '3rd Cousin — Maternal',               inverse: '3rd Cousin',                inverseLabel: '3rd Cousin',               category: 'cousin',      generation: 0  },
  { value: 'maternal_first_cousin_once_removed', label: '1st Cousin Once Removed — Maternal', inverse: '1st Cousin Once Removed', inverseLabel: '1st Cousin Once Removed', category: 'cousin', generation: 1 },

  // ── Generic Cousins (side unknown) ────────────────────────────────────────
  { value: 'first_cousin',              label: '1st Cousin',                          inverse: '1st Cousin',                inverseLabel: '1st Cousin',               category: 'cousin',      generation: 0  },
  { value: 'second_cousin',             label: '2nd Cousin',                          inverse: '2nd Cousin',                inverseLabel: '2nd Cousin',               category: 'cousin',      generation: 0  },
  { value: 'third_cousin',              label: '3rd Cousin',                          inverse: '3rd Cousin',                inverseLabel: '3rd Cousin',               category: 'cousin',      generation: 0  },
  { value: 'cousin_once_removed',       label: '1st Cousin Once Removed',             inverse: '1st Cousin Once Removed',   inverseLabel: '1st Cousin Once Removed',  category: 'cousin',      generation: 1  },
  { value: 'second_cousin_once_removed',label: '2nd Cousin Once Removed',             inverse: '2nd Cousin Once Removed',   inverseLabel: '2nd Cousin Once Removed',  category: 'cousin',      generation: 1  },

  // ── Step / In-Law ──────────────────────────────────────────────────────────
  { value: 'step_child',                label: 'Step-Child',                          inverse: 'Step-Parent',               inverseLabel: 'Step-Parent',              category: 'step',        generation: -1 },
  { value: 'step_parent',               label: 'Step-Parent',                         inverse: 'Step-Child',                inverseLabel: 'Step-Child',               category: 'step',        generation: 1  },
  { value: 'child_in_law',              label: 'Child-in-Law (Son / Daughter)',        inverse: 'Parent-in-Law',             inverseLabel: 'Parent-in-Law',            category: 'in_law',      generation: -1 },
  { value: 'parent_in_law',             label: 'Parent-in-Law',                       inverse: 'Child-in-Law',              inverseLabel: 'Child-in-Law',             category: 'in_law',      generation: 1  },
  { value: 'sibling_in_law',            label: 'Sibling-in-Law',                      inverse: 'Sibling-in-Law',            inverseLabel: 'Sibling-in-Law',           category: 'in_law',      generation: 0  },

  // ── Adoptive ───────────────────────────────────────────────────────────────
  { value: 'adoptive_child',            label: 'Adoptive Child',                      inverse: 'Adoptive Parent',           inverseLabel: 'Adoptive Parent',          category: 'adoptive',    generation: -1 },
  { value: 'adoptive_parent',           label: 'Adoptive Parent',                     inverse: 'Adoptive Child',            inverseLabel: 'Adoptive Child',           category: 'adoptive',    generation: 1  },

  // ── General / Distant ──────────────────────────────────────────────────────
  { value: 'descendant',                label: 'Descendant (general)',                inverse: 'Ancestor',                  inverseLabel: 'Ancestor',                 category: 'descendant',  generation: -99 },
  { value: 'ancestor',                  label: 'Ancestor (general)',                  inverse: 'Descendant',                inverseLabel: 'Descendant',               category: 'ancestor',    generation: 99  },
  { value: 'godchild',                  label: 'Godchild',                            inverse: 'Godparent',                 inverseLabel: 'Godparent',                category: 'other',       generation: -1 },
  { value: 'godparent',                 label: 'Godparent',                           inverse: 'Godchild',                  inverseLabel: 'Godchild',                 category: 'other',       generation: 1  },
  { value: 'family_friend',             label: 'Close Family Friend',                 inverse: 'Close Family Friend',       inverseLabel: 'Close Family Friend',      category: 'other',       generation: 0  },
  { value: 'other',                     label: 'Other (specify in notes)',             inverse: 'Other',                     inverseLabel: 'Other',                    category: 'other',       generation: 0  },
];

/** Look up a relationship definition by its stored value */
export function getRelationship(value: string): RelationshipDef | undefined {
  return RELATIONSHIPS.find(r => r.value === value);
}

/**
 * Given what the member says they are (e.g. "paternal_uncle"),
 * return what the occupant is to them (e.g. "Nephew/Niece").
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

/**
 * Map of relationship values that imply a missing intermediate node.
 * Key   = what the member says they are to the occupant
 * Value = description of the missing link between them
 */
export interface IntermediateNodeHint {
  /** Human-readable prompt shown to the member */
  prompt: string;
  /** The intermediate person's relationship TO the occupant (e.g. "child") */
  intermediateToOccupant: string;
  /** The member's relationship TO the intermediate person (e.g. "child") */
  memberToIntermediate: string;
  /** Label for the intermediate person's role (e.g. "Parent") */
  intermediateLabel: string;
}

export const INTERMEDIATE_NODE_MAP: Record<string, IntermediateNodeHint> = {
  // Grandchildren — missing parent
  grandchild: {
    prompt: 'Who is your parent that connects you to this occupant?',
    intermediateToOccupant: 'child',
    memberToIntermediate: 'child',
    intermediateLabel: 'Parent',
  },
  // Great-grandchildren — missing parent (closest missing link first)
  great_grandchild: {
    prompt: 'Who is your parent that connects you to this occupant?',
    intermediateToOccupant: 'grandchild',
    memberToIntermediate: 'child',
    intermediateLabel: 'Parent',
  },
  // Great-great-grandchildren — missing parent
  great_great_grandchild: {
    prompt: 'Who is your parent that connects you to this occupant?',
    intermediateToOccupant: 'great_grandchild',
    memberToIntermediate: 'child',
    intermediateLabel: 'Parent',
  },
  // Great-nephew / Great-niece — missing parent (sibling of occupant’s child)
  great_nephew: {
    prompt: 'Who is your parent that connects you to this occupant?',
    intermediateToOccupant: 'nephew_niece',
    memberToIntermediate: 'child',
    intermediateLabel: 'Parent',
  },
  great_niece: {
    prompt: 'Who is your parent that connects you to this occupant?',
    intermediateToOccupant: 'nephew_niece',
    memberToIntermediate: 'child',
    intermediateLabel: 'Parent',
  },
  great_nephew_niece: {
    prompt: 'Who is your parent that connects you to this occupant?',
    intermediateToOccupant: 'nephew_niece',
    memberToIntermediate: 'child',
    intermediateLabel: 'Parent',
  },
};

/**
 * Returns an intermediate node hint if the given relationship implies
 * a missing person between the member and the occupant, or null otherwise.
 */
export function getIntermediateNodeHint(memberRelationshipValue: string): IntermediateNodeHint | null {
  return INTERMEDIATE_NODE_MAP[memberRelationshipValue] ?? null;
}

/** Group relationships by category for the dropdown — ordered for intuitive use */
export const RELATIONSHIP_GROUPS: { label: string; values: RelationshipDef[] }[] = [
  {
    label: 'Spouse / Partner',
    values: RELATIONSHIPS.filter(r => r.category === 'spouse'),
  },
  {
    label: 'Direct Descendants (Children, Grandchildren…)',
    values: RELATIONSHIPS.filter(r => ['child', 'grandchild', 'great_grandchild', 'great_great_grandchild'].includes(r.value)),
  },
  {
    label: 'Parents — Paternal Side',
    values: RELATIONSHIPS.filter(r => ['father', 'paternal_grandfather', 'paternal_grandmother', 'paternal_great_grandfather', 'paternal_great_grandmother', 'paternal_2x_great_grandfather', 'paternal_2x_great_grandmother'].includes(r.value)),
  },
  {
    label: 'Parents — Maternal Side',
    values: RELATIONSHIPS.filter(r => ['mother', 'maternal_grandfather', 'maternal_grandmother', 'maternal_great_grandfather', 'maternal_great_grandmother', 'maternal_2x_great_grandfather', 'maternal_2x_great_grandmother'].includes(r.value)),
  },
  {
    label: 'Parents / Grandparents (Side Unknown)',
    values: RELATIONSHIPS.filter(r => ['parent', 'grandparent', 'great_grandparent'].includes(r.value)),
  },
  {
    label: 'Siblings',
    values: RELATIONSHIPS.filter(r => r.category === 'sibling'),
  },
  {
    label: 'Aunts & Uncles — Paternal Side',
    values: RELATIONSHIPS.filter(r => ['paternal_uncle', 'paternal_aunt', 'paternal_great_uncle', 'paternal_great_aunt'].includes(r.value)),
  },
  {
    label: 'Aunts & Uncles — Maternal Side',
    values: RELATIONSHIPS.filter(r => ['maternal_uncle', 'maternal_aunt', 'maternal_great_uncle', 'maternal_great_aunt'].includes(r.value)),
  },
  {
    label: 'Aunts & Uncles (Side Unknown)',
    values: RELATIONSHIPS.filter(r => ['aunt_uncle', 'great_aunt_uncle'].includes(r.value)),
  },
  {
    label: 'Nephews & Nieces',
    values: RELATIONSHIPS.filter(r => ['nephew', 'niece', 'nephew_niece', 'great_nephew', 'great_niece', 'great_nephew_niece'].includes(r.value)),
  },
  {
    label: 'Cousins — Paternal Side',
    values: RELATIONSHIPS.filter(r => ['paternal_first_cousin', 'paternal_second_cousin', 'paternal_third_cousin', 'paternal_first_cousin_once_removed'].includes(r.value)),
  },
  {
    label: 'Cousins — Maternal Side',
    values: RELATIONSHIPS.filter(r => ['maternal_first_cousin', 'maternal_second_cousin', 'maternal_third_cousin', 'maternal_first_cousin_once_removed'].includes(r.value)),
  },
  {
    label: 'Cousins (Side Unknown)',
    values: RELATIONSHIPS.filter(r => ['first_cousin', 'second_cousin', 'third_cousin', 'cousin_once_removed', 'second_cousin_once_removed'].includes(r.value)),
  },
  {
    label: 'Step / In-Law',
    values: RELATIONSHIPS.filter(r => ['step', 'in_law'].includes(r.category)),
  },
  {
    label: 'Adoptive',
    values: RELATIONSHIPS.filter(r => r.category === 'adoptive'),
  },
  {
    label: 'Other',
    values: RELATIONSHIPS.filter(r => ['descendant', 'ancestor', 'godchild', 'godparent', 'family_friend', 'other'].includes(r.value)),
  },
];
