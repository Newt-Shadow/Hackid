package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class z implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f8308a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ long f8309b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ b2 f8310c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(b2 b2Var, String str, long j10) {
        this.f8308a = str;
        this.f8309b = j10;
        Objects.requireNonNull(b2Var);
        this.f8310c = b2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8310c.m(this.f8308a, this.f8309b);
    }
}
