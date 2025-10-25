package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class na extends i6.g {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f7805a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public na(vb vbVar, AtomicReference atomicReference) {
        this.f7805a = atomicReference;
        Objects.requireNonNull(vbVar);
    }

    @Override // i6.h
    public final void M0(List list) {
        AtomicReference atomicReference = this.f7805a;
        synchronized (atomicReference) {
            atomicReference.set(list);
            atomicReference.notifyAll();
        }
    }
}
