package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class w5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ boolean f8157a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ x5 f8158b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w5(x5 x5Var, boolean z10) {
        this.f8157a = z10;
        Objects.requireNonNull(x5Var);
        this.f8158b = x5Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8158b.c().s0(this.f8157a);
    }
}
