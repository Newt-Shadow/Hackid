package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class fa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ da f7533a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ da f7534b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ long f7535c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ boolean f7536d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ la f7537e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fa(la laVar, da daVar, da daVar2, long j10, boolean z10) {
        this.f7533a = daVar;
        this.f7534b = daVar2;
        this.f7535c = j10;
        this.f7536d = z10;
        Objects.requireNonNull(laVar);
        this.f7537e = laVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7537e.B(this.f7533a, this.f7534b, this.f7535c, this.f7536d, null);
    }
}
