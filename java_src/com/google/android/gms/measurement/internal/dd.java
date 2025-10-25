package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class dd implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ qd f7459a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ pd f7460b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dd(pd pdVar, qd qdVar) {
        this.f7459a = qdVar;
        Objects.requireNonNull(pdVar);
        this.f7460b = pdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        pd pdVar = this.f7460b;
        pdVar.u0(this.f7459a);
        pdVar.A0();
    }
}
