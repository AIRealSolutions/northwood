'use client';
import { Suspense, useState } from 'react';
import { useSearchParams } from 'next/navigation';
import Link from 'next/link';

function ResetForm(){
 const params=useSearchParams(); const token=params.get('token')||'';
 const [password,setPassword]=useState(''); const [confirm,setConfirm]=useState('');
 const [error,setError]=useState(''); const [done,setDone]=useState(false); const [loading,setLoading]=useState(false);
 async function submit(e:React.FormEvent){
  e.preventDefault(); setError('');
  if(!token){setError('This reset link is invalid.');return}
  if(password.length<8){setError('Password must be at least 8 characters long.');return}
  if(password!==confirm){setError('Passwords do not match.');return}
  setLoading(true);
  try{const r=await fetch('/api/auth/reset-password',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({token,password})}); const d=await r.json(); if(!r.ok) setError(d.error||'Unable to reset password.'); else setDone(true);}
  catch{setError('Unable to reset password. Please try again.')} finally{setLoading(false)}
 }
 return <div className="max-w-md w-full bg-white rounded-lg shadow p-8">
  <h1 className="text-3xl font-bold text-center text-gray-900">Choose a new password</h1>
  {done?<div className="mt-6"><div className="rounded-md bg-emerald-50 p-4 text-sm text-emerald-800">Your password has been changed.</div><Link href="/auth/login" className="mt-5 block text-center text-emerald-700 hover:underline">Sign in</Link></div>:
  <form onSubmit={submit} className="mt-6 space-y-4">
   {error&&<div className="rounded-md bg-red-50 p-4 text-sm text-red-800">{error}</div>}
   <input type="password" required autoComplete="new-password" value={password} onChange={e=>setPassword(e.target.value)} className="w-full px-3 py-2 border rounded-md text-gray-900" placeholder="New password"/>
   <input type="password" required autoComplete="new-password" value={confirm} onChange={e=>setConfirm(e.target.value)} className="w-full px-3 py-2 border rounded-md text-gray-900" placeholder="Confirm new password"/>
   <button disabled={loading} className="w-full py-2 px-4 rounded-md text-white bg-emerald-600 hover:bg-emerald-700 disabled:opacity-50">{loading?'Updating...':'Update password'}</button>
  </form>}
 </div>
}
export default function ResetPasswordPage(){return <div className="min-h-screen bg-gray-100 flex items-center justify-center px-4"><Suspense fallback={<div>Loading...</div>}><ResetForm/></Suspense></div>}
