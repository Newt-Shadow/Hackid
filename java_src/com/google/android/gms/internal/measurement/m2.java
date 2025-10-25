package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class m2 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ String f6552e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ String f6553f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ Bundle f6554g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ a4 f6555h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m2(a4 a4Var, String str, String str2, Bundle bundle) {
        super(a4Var, true);
        this.f6552e = str;
        this.f6553f = str2;
        this.f6554g = bundle;
        Objects.requireNonNull(a4Var);
        this.f6555h = a4Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6555h.n())).clearConditionalUserProperty(this.f6552e, this.f6553f, this.f6554g);
    }
}
