package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ia implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ da f7639a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ long f7640b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ la f7641c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ia(la laVar, da daVar, long j10) {
        this.f7639a = daVar;
        this.f7640b = j10;
        Objects.requireNonNull(laVar);
        this.f7641c = laVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        la laVar = this.f7641c;
        laVar.C(this.f7639a, false, this.f7640b);
        laVar.f7721e = null;
        laVar.f8322a.J().u(null);
    }
}
