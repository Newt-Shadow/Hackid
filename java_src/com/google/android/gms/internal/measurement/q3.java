package com.google.android.gms.internal.measurement;

import android.os.Bundle;
/* loaded from: classes.dex */
final class q3 extends b2 {

    /* renamed from: a  reason: collision with root package name */
    private final i6.x f6707a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q3(i6.x xVar) {
        this.f6707a = xVar;
    }

    @Override // com.google.android.gms.internal.measurement.d2
    public final int i() {
        return System.identityHashCode(this.f6707a);
    }

    @Override // com.google.android.gms.internal.measurement.d2
    public final void m(String str, String str2, Bundle bundle, long j10) {
        this.f6707a.a(str, str2, bundle, j10);
    }
}
