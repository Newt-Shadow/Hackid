package io.appmetrica.analytics.impl;

import android.content.Context;
import android.util.SparseArray;
/* renamed from: io.appmetrica.analytics.impl.n4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1360n4 extends Vc {

    /* renamed from: a  reason: collision with root package name */
    public final Te f20158a;

    public C1360n4(Context context) {
        this(new Te(C1288k7.a(context).b()));
    }

    @Override // io.appmetrica.analytics.impl.Vc
    public final void a(int i10) {
        this.f20158a.c(i10);
    }

    @Override // io.appmetrica.analytics.impl.Vc
    public final int b() {
        return (int) this.f20158a.a(-1L);
    }

    @Override // io.appmetrica.analytics.impl.Vc
    public final SparseArray<Uc> c() {
        return new SparseArray<>();
    }

    public C1360n4(Te te2) {
        this.f20158a = te2;
    }
}
