package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class ec implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f7493a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ mc f7494b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ec(mc mcVar, long j10) {
        this.f7493a = j10;
        Objects.requireNonNull(mcVar);
        this.f7494b = mcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7494b.s(this.f7493a);
    }
}
