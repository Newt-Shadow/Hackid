package com.google.firebase.analytics;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.a4;
import i6.b0;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
final class d implements b0 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a4 f8709a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(a4 a4Var) {
        this.f8709a = a4Var;
    }

    @Override // i6.b0
    public final String a() {
        return this.f8709a.a();
    }

    @Override // i6.b0
    public final void b(String str) {
        this.f8709a.J(str);
    }

    @Override // i6.b0
    public final void c(String str, String str2, Bundle bundle) {
        this.f8709a.x(str, str2, bundle);
    }

    @Override // i6.b0
    public final void d(Bundle bundle) {
        this.f8709a.z(bundle);
    }

    @Override // i6.b0
    public final void e(String str) {
        this.f8709a.I(str);
    }

    @Override // i6.b0
    public final void f(String str, String str2, Bundle bundle) {
        this.f8709a.A(str, str2, bundle);
    }

    @Override // i6.b0
    public final List g(String str, String str2) {
        return this.f8709a.B(str, str2);
    }

    @Override // i6.b0
    public final int h(String str) {
        return this.f8709a.e(str);
    }

    @Override // i6.b0
    public final Map i(String str, String str2, boolean z10) {
        return this.f8709a.c(str, str2, z10);
    }

    @Override // i6.b0
    public final String j() {
        return this.f8709a.b();
    }

    @Override // i6.b0
    public final long m() {
        return this.f8709a.N();
    }

    @Override // i6.b0
    public final String o() {
        return this.f8709a.M();
    }

    @Override // i6.b0
    public final String p() {
        return this.f8709a.L();
    }
}
