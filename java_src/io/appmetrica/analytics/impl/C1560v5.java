package io.appmetrica.analytics.impl;

import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.v5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1560v5 implements ho {

    /* renamed from: a  reason: collision with root package name */
    public final List f20775a;

    public C1560v5(List<? extends xc.k> list) {
        this.f20775a = list;
    }

    @Override // io.appmetrica.analytics.impl.ho
    public final String a() {
        for (xc.k kVar : this.f20775a) {
            String a10 = ((ho) kVar.d()).a();
            if (a10 != null && a10.length() > 0) {
                return a10;
            }
        }
        return null;
    }

    @Override // io.appmetrica.analytics.impl.ho
    public final void a(String str) {
        for (xc.k kVar : this.f20775a) {
            ((ho) kVar.d()).a(str);
        }
    }
}
