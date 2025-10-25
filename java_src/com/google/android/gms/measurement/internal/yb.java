package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class yb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ pd f8296a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Runnable f8297b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public yb(cc ccVar, pd pdVar, Runnable runnable) {
        this.f8296a = pdVar;
        this.f8297b = runnable;
        Objects.requireNonNull(ccVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        pd pdVar = this.f8296a;
        pdVar.E();
        pdVar.D(this.f8297b);
        pdVar.r();
    }
}
