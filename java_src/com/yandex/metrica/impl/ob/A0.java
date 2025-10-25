package com.yandex.metrica.impl.ob;

import android.content.Context;
/* loaded from: classes2.dex */
public class A0 {

    /* renamed from: a  reason: collision with root package name */
    private final C0890u2 f9687a;

    /* renamed from: b  reason: collision with root package name */
    private final F f9688b;

    public A0(Context context) {
        this(new C0890u2(context, "com.yandex.android.appmetrica.build_id"), new F(context, "com.yandex.android.appmetrica.is_offline"));
    }

    public String a() {
        return this.f9687a.a();
    }

    public Boolean b() {
        return this.f9688b.a();
    }

    A0(C0890u2 c0890u2, F f10) {
        this.f9687a = c0890u2;
        this.f9688b = f10;
    }
}
