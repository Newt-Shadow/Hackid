package io.appmetrica.analytics.impl;

import android.content.Context;
/* renamed from: io.appmetrica.analytics.impl.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1031a {

    /* renamed from: a  reason: collision with root package name */
    public final Context f19358a;

    public C1031a(Context context) {
        this.f19358a = context;
    }

    public final byte[] a() {
        try {
            return AbstractC1176fj.a(new StringBuilder(this.f19358a.getPackageName()).reverse().toString());
        } catch (Throwable unused) {
            return new byte[16];
        }
    }

    public final byte[] b() {
        try {
            return AbstractC1176fj.a(this.f19358a.getPackageName());
        } catch (Throwable unused) {
            return new byte[16];
        }
    }
}
