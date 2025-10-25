package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class oa extends i6.j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f7836a;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ vb f7837g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public oa(vb vbVar, AtomicReference atomicReference) {
        this.f7836a = atomicReference;
        Objects.requireNonNull(vbVar);
        this.f7837g = vbVar;
    }

    @Override // i6.k
    public final void J0(yc ycVar) {
        AtomicReference atomicReference = this.f7836a;
        synchronized (atomicReference) {
            this.f7837g.f8322a.a().w().b("[sgtm] Got upload batches from service. count", Integer.valueOf(ycVar.f8298a.size()));
            atomicReference.set(ycVar);
            atomicReference.notifyAll();
        }
    }
}
