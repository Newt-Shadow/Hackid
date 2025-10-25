package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.vm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0934vm {

    /* renamed from: a  reason: collision with root package name */
    private final Context f13841a;

    public C0934vm(Context context) {
        this.f13841a = context;
    }

    public byte[] a() {
        try {
            return Tl.b(new StringBuilder(this.f13841a.getPackageName()).reverse().toString());
        } catch (Throwable unused) {
            return new byte[16];
        }
    }

    public byte[] b() {
        try {
            return Tl.b(this.f13841a.getPackageName());
        } catch (Throwable unused) {
            return new byte[16];
        }
    }
}
