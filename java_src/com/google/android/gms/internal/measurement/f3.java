package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f3 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ String f6384e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ String f6385f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ boolean f6386g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ q1 f6387h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ a4 f6388i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f3(a4 a4Var, String str, String str2, boolean z10, q1 q1Var) {
        super(a4Var, true);
        this.f6384e = str;
        this.f6385f = str2;
        this.f6386g = z10;
        this.f6387h = q1Var;
        Objects.requireNonNull(a4Var);
        this.f6388i = a4Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6388i.n())).getUserProperties(this.f6384e, this.f6385f, this.f6386g, this.f6387h);
    }

    @Override // com.google.android.gms.internal.measurement.p3
    protected final void b() {
        this.f6387h.zzb(null);
    }
}
