package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ha implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f7595a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ la f7596b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ha(la laVar, long j10) {
        this.f7595a = j10;
        Objects.requireNonNull(laVar);
        this.f7596b = laVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        la laVar = this.f7596b;
        laVar.f8322a.M().k(this.f7595a);
        laVar.f7721e = null;
    }
}
