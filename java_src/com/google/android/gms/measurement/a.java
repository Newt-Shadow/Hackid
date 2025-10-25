package com.google.android.gms.measurement;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.w6;
import com.google.android.gms.measurement.internal.w9;
import java.util.List;
import java.util.Map;
import n5.q;
/* loaded from: classes.dex */
final class a extends c {

    /* renamed from: a  reason: collision with root package name */
    private final w6 f7203a;

    /* renamed from: b  reason: collision with root package name */
    private final w9 f7204b;

    public a(w6 w6Var) {
        super(null);
        q.k(w6Var);
        this.f7203a = w6Var;
        this.f7204b = w6Var.B();
    }

    @Override // i6.b0
    public final String a() {
        return this.f7204b.Q();
    }

    @Override // i6.b0
    public final void b(String str) {
        w6 w6Var = this.f7203a;
        w6Var.M().j(str, w6Var.f().elapsedRealtime());
    }

    @Override // i6.b0
    public final void c(String str, String str2, Bundle bundle) {
        this.f7204b.p(str, str2, bundle);
    }

    @Override // i6.b0
    public final void d(Bundle bundle) {
        this.f7204b.M(bundle);
    }

    @Override // i6.b0
    public final void e(String str) {
        w6 w6Var = this.f7203a;
        w6Var.M().i(str, w6Var.f().elapsedRealtime());
    }

    @Override // i6.b0
    public final void f(String str, String str2, Bundle bundle) {
        this.f7203a.B().O(str, str2, bundle);
    }

    @Override // i6.b0
    public final List g(String str, String str2) {
        return this.f7204b.P(str, str2);
    }

    @Override // i6.b0
    public final int h(String str) {
        this.f7204b.L(str);
        return 25;
    }

    @Override // i6.b0
    public final Map i(String str, String str2, boolean z10) {
        return this.f7204b.C(str, str2, z10);
    }

    @Override // i6.b0
    public final String j() {
        return this.f7204b.R();
    }

    @Override // i6.b0
    public final long m() {
        return this.f7203a.C().p0();
    }

    @Override // i6.b0
    public final String o() {
        return this.f7204b.D();
    }

    @Override // i6.b0
    public final String p() {
        return this.f7204b.S();
    }
}
