package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.za  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1018za {

    /* renamed from: a  reason: collision with root package name */
    private final C0874ta<Ud> f14066a;

    /* renamed from: b  reason: collision with root package name */
    private final C0874ta<C0915v3> f14067b;

    public C1018za(Context context) {
        this(context, new C0898ua());
    }

    public void a(C0787pi c0787pi) {
        this.f14066a.a(F0.g().k().a(), c0787pi.l());
        this.f14067b.a(F0.g().d().a(), c0787pi.l());
    }

    C1018za(Context context, C0898ua c0898ua) {
        this.f14066a = c0898ua.c(context, C0542fm.c());
        this.f14067b = c0898ua.b(context, C0542fm.c());
    }
}
