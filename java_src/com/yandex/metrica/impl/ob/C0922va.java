package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.va  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0922va {

    /* renamed from: a  reason: collision with root package name */
    private final Context f13798a;

    /* renamed from: b  reason: collision with root package name */
    private final String f13799b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC0946wa f13800c;

    /* renamed from: d  reason: collision with root package name */
    private final Q0 f13801d;

    /* renamed from: e  reason: collision with root package name */
    private final dc.d f13802e;

    /* renamed from: f  reason: collision with root package name */
    private final C0962x2 f13803f;

    public C0922va(Context context, String str, InterfaceC0946wa interfaceC0946wa, Q0 q02) {
        this(context, str, interfaceC0946wa, q02, new dc.c(), new C0962x2());
    }

    public boolean a(C0803qa c0803qa) {
        boolean z10;
        long currentTimeSeconds = this.f13802e.currentTimeSeconds();
        if (c0803qa == null) {
            return false;
        }
        boolean z11 = true;
        if (currentTimeSeconds <= c0803qa.f13255a) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (currentTimeSeconds + this.f13801d.a() > c0803qa.f13255a) {
                z11 = false;
            }
        } else {
            z11 = z10;
        }
        if (!z11) {
            return false;
        }
        Z8 z82 = new Z8(C0629ja.a(this.f13798a).g());
        return this.f13803f.b(this.f13800c.a(z82), c0803qa.f13256b, this.f13799b + " diagnostics event");
    }

    C0922va(Context context, String str, InterfaceC0946wa interfaceC0946wa, Q0 q02, dc.d dVar, C0962x2 c0962x2) {
        this.f13798a = context;
        this.f13799b = str;
        this.f13800c = interfaceC0946wa;
        this.f13801d = q02;
        this.f13802e = dVar;
        this.f13803f = c0962x2;
    }
}
