package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class kb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ i6.e f7694a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ pb f7695b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kb(pb pbVar, i6.e eVar) {
        this.f7694a = eVar;
        Objects.requireNonNull(pbVar);
        this.f7695b = pbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        pb pbVar = this.f7695b;
        synchronized (pbVar) {
            pbVar.f(false);
            vb vbVar = pbVar.f7879c;
            if (!vbVar.W()) {
                vbVar.f8322a.a().v().a("Connected to remote service");
                vbVar.z(this.f7694a);
            }
        }
        vb vbVar2 = this.f7695b.f7879c;
        if (vbVar2.P() != null) {
            vbVar2.P().shutdownNow();
            vbVar2.Q(null);
        }
    }
}
