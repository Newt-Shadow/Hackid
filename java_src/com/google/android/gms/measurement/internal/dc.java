package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class dc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f7457a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ mc f7458b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dc(mc mcVar, long j10) {
        this.f7457a = j10;
        Objects.requireNonNull(mcVar);
        this.f7458b = mcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7458b.r(this.f7457a);
    }
}
