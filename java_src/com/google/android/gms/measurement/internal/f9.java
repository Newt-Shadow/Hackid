package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f9 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Boolean f7531a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ w9 f7532b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f9(w9 w9Var, Boolean bool) {
        this.f7531a = bool;
        Objects.requireNonNull(w9Var);
        this.f7532b = w9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7532b.W(this.f7531a, true);
    }
}
