package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class v2 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ String f6846e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ a4 f6847f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v2(a4 a4Var, String str) {
        super(a4Var, true);
        this.f6846e = str;
        Objects.requireNonNull(a4Var);
        this.f6847f = a4Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6847f.n())).beginAdUnitExposure(this.f6846e, this.f6637b);
    }
}
