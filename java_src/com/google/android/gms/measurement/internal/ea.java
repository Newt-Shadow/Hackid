package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ea implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Bundle f7483a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ da f7484b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ da f7485c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ long f7486d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ la f7487e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ea(la laVar, Bundle bundle, da daVar, da daVar2, long j10) {
        this.f7483a = bundle;
        this.f7484b = daVar;
        this.f7485c = daVar2;
        this.f7486d = j10;
        Objects.requireNonNull(laVar);
        this.f7487e = laVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7487e.A(this.f7483a, this.f7484b, this.f7485c, this.f7486d);
    }
}
