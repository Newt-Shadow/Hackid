package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class hb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ i6.e f7597a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ pb f7598b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hb(pb pbVar, i6.e eVar) {
        this.f7597a = eVar;
        Objects.requireNonNull(pbVar);
        this.f7598b = pbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        pb pbVar = this.f7598b;
        synchronized (pbVar) {
            pbVar.f(false);
            vb vbVar = pbVar.f7879c;
            if (!vbVar.W()) {
                vbVar.f8322a.a().w().a("Connected to service");
                vbVar.z(this.f7597a);
            }
        }
    }
}
