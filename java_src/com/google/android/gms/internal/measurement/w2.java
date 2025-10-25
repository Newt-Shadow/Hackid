package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class w2 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ String f6861e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ a4 f6862f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w2(a4 a4Var, String str) {
        super(a4Var, true);
        this.f6861e = str;
        Objects.requireNonNull(a4Var);
        this.f6862f = a4Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6862f.n())).endAdUnitExposure(this.f6861e, this.f6637b);
    }
}
