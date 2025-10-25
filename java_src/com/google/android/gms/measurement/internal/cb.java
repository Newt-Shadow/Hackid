package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class cb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f7401a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ boolean f7402b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ g0 f7403c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ vb f7404d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cb(vb vbVar, boolean z10, ae aeVar, boolean z11, g0 g0Var, String str) {
        this.f7401a = aeVar;
        this.f7402b = z11;
        this.f7403c = g0Var;
        Objects.requireNonNull(vbVar);
        this.f7404d = vbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g0 g0Var;
        vb vbVar = this.f7404d;
        i6.e N = vbVar.N();
        if (N == null) {
            vbVar.f8322a.a().o().a("Discarding data. Failed to send event to service");
            return;
        }
        ae aeVar = this.f7401a;
        n5.q.k(aeVar);
        if (this.f7402b) {
            g0Var = null;
        } else {
            g0Var = this.f7403c;
        }
        vbVar.b0(N, g0Var, aeVar);
        vbVar.J();
    }
}
