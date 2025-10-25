package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class i3 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ String f6431e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ q1 f6432f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ a4 f6433g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i3(a4 a4Var, String str, q1 q1Var) {
        super(a4Var, true);
        this.f6431e = str;
        this.f6432f = q1Var;
        Objects.requireNonNull(a4Var);
        this.f6433g = a4Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6433g.n())).getMaxUserProperties(this.f6431e, this.f6432f);
    }

    @Override // com.google.android.gms.internal.measurement.p3
    protected final void b() {
        this.f6432f.zzb(null);
    }
}
