package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class db implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f7453a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ boolean f7454b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ i f7455c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ vb f7456d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public db(vb vbVar, boolean z10, ae aeVar, boolean z11, i iVar, i iVar2) {
        this.f7453a = aeVar;
        this.f7454b = z11;
        this.f7455c = iVar;
        Objects.requireNonNull(vbVar);
        this.f7456d = vbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        i iVar;
        vb vbVar = this.f7456d;
        i6.e N = vbVar.N();
        if (N == null) {
            vbVar.f8322a.a().o().a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        ae aeVar = this.f7453a;
        n5.q.k(aeVar);
        if (this.f7454b) {
            iVar = null;
        } else {
            iVar = this.f7455c;
        }
        vbVar.b0(N, iVar, aeVar);
        vbVar.J();
    }
}
