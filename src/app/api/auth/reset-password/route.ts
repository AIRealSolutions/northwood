import { NextRequest, NextResponse } from 'next/server';
import { createHash } from 'crypto';
import bcrypt from 'bcryptjs';
import { getServiceSupabase } from '@/lib/supabase';

export async function POST(request:NextRequest){
 try{
  const {token,password}=await request.json();
  if(!token || typeof token!=='string' || !password || typeof password!=='string' || password.length<8)
   return NextResponse.json({error:'Invalid reset request.'},{status:400});
  const hashed=createHash('sha256').update(token).digest('hex');
  const db=getServiceSupabase();
  const {data:reset,error}=await db.from('password_reset_tokens').select('id,user_id,expires_at,used').eq('token',hashed).maybeSingle();
  if(error || !reset || reset.used || new Date(reset.expires_at).getTime()<=Date.now())
   return NextResponse.json({error:'This reset link is invalid or has expired. Request a new one.'},{status:400});
  const passwordHash=await bcrypt.hash(password,12);
  const {error:updateError}=await db.from('users').update({password_hash:passwordHash,updated_at:new Date().toISOString()}).eq('id',reset.user_id);
  if(updateError){console.error('Password update error:',updateError);return NextResponse.json({error:'Unable to update password.'},{status:500})}
  await db.from('password_reset_tokens').update({used:true}).eq('user_id',reset.user_id).eq('used',false);
  return NextResponse.json({message:'Password updated successfully.'});
 }catch(error){console.error('Reset password error:',error);return NextResponse.json({error:'Unable to reset password.'},{status:500})}
}
