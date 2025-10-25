package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class o2 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ String f6594e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ a4 f6595f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o2(a4 a4Var, String str) {
        super(a4Var, true);
        this.f6594e = str;
        Objects.requireNonNull(a4Var);
        this.f6595f = a4Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6595f.n())).setUserId(this.f6594e, this.f6636a);
    }
}
