package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* loaded from: classes.dex */
final class x2 extends y1 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Runnable f6881a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x2(y2 y2Var, Runnable runnable) {
        this.f6881a = runnable;
        Objects.requireNonNull(y2Var);
    }

    @Override // com.google.android.gms.internal.measurement.z1
    public final void h() {
        this.f6881a.run();
    }
}
