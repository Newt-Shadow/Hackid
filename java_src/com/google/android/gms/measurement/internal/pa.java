package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class pa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f7873a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ boolean f7874b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ud f7875c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ vb f7876d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pa(vb vbVar, ae aeVar, boolean z10, ud udVar) {
        this.f7873a = aeVar;
        this.f7874b = z10;
        this.f7875c = udVar;
        Objects.requireNonNull(vbVar);
        this.f7876d = vbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ud udVar;
        vb vbVar = this.f7876d;
        i6.e N = vbVar.N();
        if (N == null) {
            vbVar.f8322a.a().o().a("Discarding data. Failed to set user property");
            return;
        }
        ae aeVar = this.f7873a;
        n5.q.k(aeVar);
        if (this.f7874b) {
            udVar = null;
        } else {
            udVar = this.f7875c;
        }
        vbVar.b0(N, udVar, aeVar);
        vbVar.J();
    }
}
