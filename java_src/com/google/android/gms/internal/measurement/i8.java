package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.net.Uri;
/* loaded from: classes.dex */
public abstract class i8 {

    /* renamed from: a  reason: collision with root package name */
    private static final k8 f6435a;

    static {
        Uri uri = j8.f6449a;
        f6435a = l8.b();
    }

    public static String a(ContentResolver contentResolver, String str, String str2) {
        return f6435a.a(contentResolver, str, null);
    }
}
