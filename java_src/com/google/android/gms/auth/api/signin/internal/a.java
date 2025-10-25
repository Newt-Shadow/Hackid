package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import androidx.loader.app.a;
import com.google.android.gms.common.api.f;
import i5.g;
import i5.z;
import z0.b;
/* loaded from: classes.dex */
final class a implements a.InterfaceC0048a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ SignInHubActivity f5855a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ a(SignInHubActivity signInHubActivity, z zVar) {
        this.f5855a = signInHubActivity;
    }

    @Override // androidx.loader.app.a.InterfaceC0048a
    public final /* bridge */ /* synthetic */ void a(b bVar, Object obj) {
        Void r32 = (Void) obj;
        SignInHubActivity signInHubActivity = this.f5855a;
        signInHubActivity.setResult(SignInHubActivity.A(signInHubActivity), SignInHubActivity.B(signInHubActivity));
        this.f5855a.finish();
    }

    @Override // androidx.loader.app.a.InterfaceC0048a
    public final b b(int i10, Bundle bundle) {
        return new g(this.f5855a, f.c());
    }

    @Override // androidx.loader.app.a.InterfaceC0048a
    public final void c(b bVar) {
    }
}
