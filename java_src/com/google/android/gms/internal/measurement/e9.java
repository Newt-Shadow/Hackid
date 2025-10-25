package com.google.android.gms.internal.measurement;

import android.net.Uri;
/* loaded from: classes.dex */
public abstract class e9 {

    /* renamed from: a  reason: collision with root package name */
    private static final r.a f6369a = new r.a();

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f6370b = 0;

    public static synchronized Uri a(String str) {
        synchronized (e9.class) {
            r.a aVar = f6369a;
            Uri uri = (Uri) aVar.get("com.google.android.gms.measurement");
            if (uri == null) {
                Uri parse = Uri.parse("content://com.google.android.gms.phenotype/".concat(String.valueOf(Uri.encode("com.google.android.gms.measurement"))));
                aVar.put("com.google.android.gms.measurement", parse);
                return parse;
            }
            return uri;
        }
    }
}
