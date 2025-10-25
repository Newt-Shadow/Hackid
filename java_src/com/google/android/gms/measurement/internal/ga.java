package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ga implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ la f7568a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ga(la laVar) {
        Objects.requireNonNull(laVar);
        this.f7568a = laVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        la laVar = this.f7568a;
        laVar.f7721e = laVar.D();
    }
}
