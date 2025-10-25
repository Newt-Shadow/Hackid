package com.yandex.metrica.impl.ob;

import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.h1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0571h1 {

    /* renamed from: a  reason: collision with root package name */
    private final M0 f12497a;

    public C0571h1() {
        this(C0761oh.a());
    }

    public void a(Map<String, Object> map) {
        this.f12497a.reportEvent("login_sdk", map);
    }

    C0571h1(M0 m02) {
        this.f12497a = m02;
    }
}
