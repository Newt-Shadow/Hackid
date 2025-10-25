package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class o3 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Long f6596e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ String f6597f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ String f6598g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ Bundle f6599h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ boolean f6600i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ boolean f6601j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ a4 f6602k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o3(a4 a4Var, Long l10, String str, String str2, Bundle bundle, boolean z10, boolean z11) {
        super(a4Var, true);
        this.f6596e = l10;
        this.f6597f = str;
        this.f6598g = str2;
        this.f6599h = bundle;
        this.f6600i = z10;
        this.f6601j = z11;
        Objects.requireNonNull(a4Var);
        this.f6602k = a4Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        long longValue;
        Long l10 = this.f6596e;
        if (l10 == null) {
            longValue = this.f6636a;
        } else {
            longValue = l10.longValue();
        }
        ((t1) n5.q.k(this.f6602k.n())).logEvent(this.f6597f, this.f6598g, this.f6599h, this.f6600i, this.f6601j, longValue);
    }
}
