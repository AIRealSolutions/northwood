'use client';
import { useState } from 'react';
import Link from 'next/link';

export default function ForgotPasswordPage() {
  const [email,setEmail]=useState('');
  const [message,setMessage]=useState('');
  const [loading,setLoading]=useState(false);
  async function submit(e:React.FormEvent){
    e.preventDefault(); setLoading(true); setMessage('');
    try {
      await fetch('/api/auth/forgot-password',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({email})});
      setMessage('If an account exists for that email, a password reset link has been sent. Check your inbox and spam folder.');
    } catch { setMessage('Unable to process the request right now. Please try again.'); }
    finally { setLoading(false); }
  }
  return <div className="min-h-screen bg-gray-100 flex items-center justify-center px-4">
    <div className="max-w-md w-full bg-white rounded-lg shadow p-8">
      <h1 className="text-3xl font-bold text-center text-gray-900">Reset your password</h1>
      <p className="mt-2 text-center text-sm text-gray-600">Enter the email address for your Northwood Cemetery account.</p>
      {message ? <div className="mt-6 rounded-md bg-emerald-50 p-4 text-sm text-emerald-800">{message}</div> :
      <form onSubmit={submit} className="mt-6 space-y-4">
        <input type="email" required autoComplete="email" value={email} onChange={e=>setEmail(e.target.value)}
          className="w-full px-3 py-2 border border-gray-300 rounded-md text-gray-900" placeholder="Email address"/>
        <button disabled={loading} className="w-full py-2 px-4 rounded-md text-white bg-emerald-600 hover:bg-emerald-700 disabled:opacity-50">
          {loading?'Sending...':'Send reset link'}
        </button>
      </form>}
      <div className="mt-6 text-center"><Link href="/auth/login" className="text-sm text-emerald-700 hover:underline">← Back to sign in</Link></div>
    </div>
  </div>;
}