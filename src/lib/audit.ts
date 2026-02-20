import { getSupabase } from '@/lib/supabase';

export type AuditAction = 'CREATE' | 'UPDATE' | 'DELETE' | 'APPROVE' | 'REJECT' | 'MOVE';

export interface AuditContext {
  userId?: string | null;
  userName?: string | null;
  userEmail?: string | null;
  userRole?: string | null;
  ipAddress?: string | null;
}

export interface AuditEntry {
  table_name: string;
  record_id: string;
  action: AuditAction;
  old_values?: Record<string, unknown> | null;
  new_values?: Record<string, unknown> | null;
  summary?: string | null;
  changed_by_user_id?: string | null;
  changed_by_name?: string | null;
  changed_by_email?: string | null;
  changed_by_role?: string | null;
  ip_address?: string | null;
}

/**
 * Write an entry to the audit_log table.
 * Errors are caught and logged to console — never thrown — so audit failures
 * never break the main operation.
 */
export async function writeAuditLog(entry: AuditEntry): Promise<void> {
  try {
    const supabase = getSupabase();
    const { error } = await supabase.from('audit_log').insert({
      table_name: entry.table_name,
      record_id: entry.record_id,
      action: entry.action,
      old_values: entry.old_values ?? null,
      new_values: entry.new_values ?? null,
      summary: entry.summary ?? null,
      changed_by_user_id: entry.changed_by_user_id ?? null,
      changed_by_name: entry.changed_by_name ?? null,
      changed_by_email: entry.changed_by_email ?? null,
      changed_by_role: entry.changed_by_role ?? null,
      ip_address: entry.ip_address ?? null,
    });
    if (error) {
      console.error('[audit] Failed to write audit log:', error.message);
    }
  } catch (err) {
    console.error('[audit] Unexpected error writing audit log:', err);
  }
}

/**
 * Extract audit context from a NextAuth session object.
 */
export function auditContextFromSession(session: {
  user?: {
    id?: string;
    name?: string | null;
    email?: string | null;
    role?: string | null;
  } | null;
} | null): AuditContext {
  return {
    userId: session?.user?.id ?? null,
    userName: session?.user?.name ?? null,
    userEmail: session?.user?.email ?? null,
    userRole: session?.user?.role ?? null,
  };
}
