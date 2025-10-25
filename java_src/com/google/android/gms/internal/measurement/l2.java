package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class l2 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Bundle f6481e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ a4 f6482f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l2(a4 a4Var, Bundle bundle) {
        super(a4Var, true);
        this.f6481e = bundle;
        Objects.requireNonNull(a4Var);
        this.f6482f = a4Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6482f.n())).setConditionalUserProperty(this.f6481e, this.f6636a);
    }
}
