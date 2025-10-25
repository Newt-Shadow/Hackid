package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ka implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ la f7693a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ka(la laVar) {
        Objects.requireNonNull(laVar);
        this.f7693a = laVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7693a.E(null);
    }
}
