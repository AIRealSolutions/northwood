# Database Setup Instructions

## Authentication and Media Management Schema

### Step 1: Run the SQL Migration

You need to run the `auth_media_schema.sql` file in your Supabase database.

**Option A: Using Supabase Dashboard**
1. Go to your Supabase project dashboard
2. Navigate to the SQL Editor
3. Copy the contents of `auth_media_schema.sql`
4. Paste and execute

**Option B: Using Supabase CLI**
```bash
supabase db push
```

### Step 2: Set Environment Variables

Add these to your Vercel environment variables:

```
NEXTAUTH_SECRET=3iTEAu0x5Rt/y52wxxE6FW3D0Nj8YX/GYfbFHVZZZTk=
NEXTAUTH_URL=https://your-domain.vercel.app
```

### Step 3: Create Initial Admin User

After running the schema, you need to create an admin user with a hashed password.

**Generate password hash:**
```javascript
const bcrypt = require('bcryptjs');
const hash = bcrypt.hashSync('your_password_here', 10);
console.log(hash);
```

**Update the admin user in SQL:**
```sql
UPDATE users 
SET password_hash = 'your_bcrypt_hash_here'
WHERE email = 'admin@northwoodcemetery.com';
```

### Tables Created

- `users` - User accounts
- `password_reset_tokens` - Password reset functionality
- `email_verification_tokens` - Email verification
- `user_deceased_connections` - Links users to loved ones
- `media` - Photos, videos, documents
- `media_tags` - Media categorization
- `memories` - User-submitted stories
- `share_links` - Shareable memorial pages
- `qr_codes` - QR codes for gravesites
- `activity_logs` - Audit trail

### Default Admin Credentials

**Email:** admin@northwoodcemetery.com
**Password:** (You need to set this - see Step 3 above)

**⚠️ IMPORTANT:** Change the admin password immediately after first login!

### Testing

After deployment, test:
1. Registration at `/auth/register`
2. Login at `/auth/login`
3. Admin access (coming soon)

### Next Steps

Once authentication is working:
1. Build admin dashboard
2. Add media upload functionality
3. Implement public sharing features
