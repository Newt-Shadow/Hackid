package com.google.android.gms.internal.auth;

import android.net.Uri;
/* loaded from: classes.dex */
public abstract class a0 {

    /* renamed from: a  reason: collision with root package name */
    private static final r.a f5960a = new r.a();

    public static synchronized Uri a(String str) {
        synchronized (a0.class) {
            r.a aVar = f5960a;
            Uri uri = (Uri) aVar.get("com.google.android.gms.auth_account");
            if (uri == null) {
                Uri parse = Uri.parse("content://com.google.android.gms.phenotype/".concat(String.valueOf(Uri.encode("com.google.android.gms.auth_account"))));
                aVar.put("com.google.android.gms.auth_account", parse);
                return parse;
            }
            return uri;
        }
    }
}
