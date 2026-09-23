import { NextRequest, NextResponse } from 'next/server';
import { randomBytes, createHash } from 'crypto';
import { getServiceSupabase } from '@/lib/supabase';

const generic={message:'If an account exists for that email, a password reset link has been sent.'};

export async function POST(request:NextRequest){
 try{
  const {email}=await request.json();
  if(!email || typeof email!=='string') return NextResponse.json(generic);
  const db=getServiceSupabase();
  const {data:user}=await db.from('users').select('id,email').eq('email',email.toLowerCase().trim()).eq('status','active').maybeSingle();
  if(!user) return NextResponse.json(generic);
  const raw=randomBytes(32).toString('hex');
  const token=createHash('sha256').update(raw).digest('hex');
  const expires=new Date(Date.now()+60*60*1000).toISOString();
  await db.from('password_reset_tokens').update({used:true}).eq('user_id',user.id).eq('used',false);
  const {error:insertError}=await db.from('password_reset_tokens').insert({user_id:user.id,token,expires_at:expires,used:false});
  if(insertError){console.error('Password reset token error:',insertError);return NextResponse.json(generic)}
  const origin=process.env.NEXT_PUBLIC_SITE_URL || 'https://northwood-seven.vercel.app';
  const resetUrl=`${origin}/auth/reset-password?token=${raw}`;
  const key=process.env.RESEND_API_KEY;
  if(!key){console.error('RESEND_API_KEY is not configured; password reset email was not sent.');return NextResponse.json(generic)}
  const from=process.env.PASSWORD_RESET_FROM_EMAIL || 'Northwood Cemetery <onboarding@resend.dev>';
  const mail=await fetch('https://api.resend.com/emails',{method:'POST',headers:{Authorization:`Bearer ${key}`,'Content-Type':'application/json'},body:JSON.stringify({from,to:[user.email],subject:'Reset your Northwood Cemetery password',html:`<p>We received a request to reset your Northwood Cemetery password.</p><p><a href="${resetUrl}">Reset your password</a></p><p>This link expires in one hour and can only be used once. If you did not request this, you can ignore this email.</p>`})});
  if(!mail.ok) console.error('Password reset email failed:',mail.status,await mail.text());
  return NextResponse.json(generic);
 }catch(error){console.error('Forgot password error:',error);return NextResponse.json(generic)}
}
