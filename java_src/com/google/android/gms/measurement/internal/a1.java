package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class a1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f7213a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ b2 f7214b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a1(b2 b2Var, long j10) {
        this.f7213a = j10;
        Objects.requireNonNull(b2Var);
        this.f7214b = b2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7214b.n(this.f7213a);
    }
}
