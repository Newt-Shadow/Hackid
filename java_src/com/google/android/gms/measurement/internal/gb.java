package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class gb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f7569a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f7570b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f7571c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ ae f7572d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ boolean f7573e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ vb f7574f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gb(vb vbVar, AtomicReference atomicReference, String str, String str2, String str3, ae aeVar, boolean z10) {
        this.f7569a = atomicReference;
        this.f7570b = str2;
        this.f7571c = str3;
        this.f7572d = aeVar;
        this.f7573e = z10;
        Objects.requireNonNull(vbVar);
        this.f7574f = vbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        vb vbVar;
        i6.e N;
        AtomicReference atomicReference2 = this.f7569a;
        synchronized (atomicReference2) {
            try {
                vbVar = this.f7574f;
                N = vbVar.N();
            } catch (RemoteException e10) {
                this.f7574f.f8322a.a().o().d("(legacy) Failed to get user properties; remote exception", null, this.f7570b, e10);
                this.f7569a.set(Collections.emptyList());
                atomicReference = this.f7569a;
            }
            if (N == null) {
                vbVar.f8322a.a().o().d("(legacy) Failed to get user properties; not connected to service", null, this.f7570b, this.f7571c);
                atomicReference2.set(Collections.emptyList());
                atomicReference2.notify();
                return;
            }
            if (TextUtils.isEmpty(null)) {
                ae aeVar = this.f7572d;
                n5.q.k(aeVar);
                atomicReference2.set(N.P0(this.f7570b, this.f7571c, this.f7573e, aeVar));
            } else {
                atomicReference2.set(N.l(null, this.f7570b, this.f7571c, this.f7573e));
            }
            vbVar.J();
            atomicReference = this.f7569a;
            atomicReference.notify();
        }
    }
}
