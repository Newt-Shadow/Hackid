package io.appmetrica.analytics.impl;

import android.util.SparseArray;
import io.appmetrica.analytics.BuildConfig;
/* renamed from: io.appmetrica.analytics.impl.gk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1202gk extends Vc {

    /* renamed from: a  reason: collision with root package name */
    public final co f19691a;

    public C1202gk() {
        this(C1665za.j().B().b());
    }

    @Override // io.appmetrica.analytics.impl.Vc
    public final void a(int i10) {
        co coVar = this.f19691a;
        synchronized (coVar) {
            eo eoVar = coVar.f19494a;
            eoVar.a(eoVar.a().put("last_migration_api_level", i10));
        }
    }

    @Override // io.appmetrica.analytics.impl.Vc
    public final int b() {
        int optInt;
        co coVar = this.f19691a;
        synchronized (coVar) {
            optInt = coVar.f19494a.a().optInt("last_migration_api_level", -1);
        }
        return optInt;
    }

    @Override // io.appmetrica.analytics.impl.Vc
    public final SparseArray<Uc> c() {
        SparseArray<Uc> sparseArray = new SparseArray<>(1);
        sparseArray.put(112, new C1227hk(this.f19691a));
        sparseArray.put(BuildConfig.API_LEVEL, new C1251ik());
        return sparseArray;
    }

    public C1202gk(co coVar) {
        this.f19691a = coVar;
    }
}
