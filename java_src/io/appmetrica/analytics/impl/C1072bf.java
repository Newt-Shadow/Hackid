package io.appmetrica.analytics.impl;

import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.bf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1072bf implements Z7 {

    /* renamed from: a  reason: collision with root package name */
    public final C1396of f19431a;

    /* renamed from: b  reason: collision with root package name */
    public final List<C1047af> f19432b;

    public C1072bf(C1396of c1396of, List<C1047af> list) {
        this.f19431a = c1396of;
        this.f19432b = list;
    }

    @Override // io.appmetrica.analytics.impl.Z7
    public final List<C1047af> a() {
        return this.f19432b;
    }

    @Override // io.appmetrica.analytics.impl.Z7
    public final Object b() {
        return this.f19431a;
    }

    public final C1396of c() {
        return this.f19431a;
    }

    public final String toString() {
        return "PreloadInfoData{chosenPreloadInfo=" + this.f19431a + ", candidates=" + this.f19432b + '}';
    }
}
