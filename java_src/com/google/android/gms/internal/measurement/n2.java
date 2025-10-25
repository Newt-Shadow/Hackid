package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class n2 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ String f6575e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ String f6576f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ q1 f6577g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ a4 f6578h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n2(a4 a4Var, String str, String str2, q1 q1Var) {
        super(a4Var, true);
        this.f6575e = str;
        this.f6576f = str2;
        this.f6577g = q1Var;
        Objects.requireNonNull(a4Var);
        this.f6578h = a4Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6578h.n())).getConditionalUserProperties(this.f6575e, this.f6576f, this.f6577g);
    }

    @Override // com.google.android.gms.internal.measurement.p3
    protected final void b() {
        this.f6577g.zzb(null);
    }
}
