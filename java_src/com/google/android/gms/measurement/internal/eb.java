package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class eb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f7488a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f7489b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f7490c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ ae f7491d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ vb f7492e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eb(vb vbVar, AtomicReference atomicReference, String str, String str2, String str3, ae aeVar) {
        this.f7488a = atomicReference;
        this.f7489b = str2;
        this.f7490c = str3;
        this.f7491d = aeVar;
        Objects.requireNonNull(vbVar);
        this.f7492e = vbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        vb vbVar;
        i6.e N;
        AtomicReference atomicReference2 = this.f7488a;
        synchronized (atomicReference2) {
            try {
                vbVar = this.f7492e;
                N = vbVar.N();
            } catch (RemoteException e10) {
                this.f7492e.f8322a.a().o().d("(legacy) Failed to get conditional properties; remote exception", null, this.f7489b, e10);
                this.f7488a.set(Collections.emptyList());
                atomicReference = this.f7488a;
            }
            if (N == null) {
                vbVar.f8322a.a().o().d("(legacy) Failed to get conditional properties; not connected to service", null, this.f7489b, this.f7490c);
                atomicReference2.set(Collections.emptyList());
                atomicReference2.notify();
                return;
            }
            if (TextUtils.isEmpty(null)) {
                ae aeVar = this.f7491d;
                n5.q.k(aeVar);
                atomicReference2.set(N.V0(this.f7489b, this.f7490c, aeVar));
            } else {
                atomicReference2.set(N.J(null, this.f7489b, this.f7490c));
            }
            vbVar.J();
            atomicReference = this.f7488a;
            atomicReference.notify();
        }
    }
}
