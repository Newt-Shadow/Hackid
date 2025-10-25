package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ob implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ l5.b f7838a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ pb f7839b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ob(pb pbVar, l5.b bVar) {
        this.f7838a = bVar;
        Objects.requireNonNull(pbVar);
        this.f7839b = pbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        vb vbVar = this.f7839b.f7879c;
        vbVar.O(null);
        if (this.f7838a.g() == 7777) {
            if (vbVar.P() == null) {
                vbVar.Q(Executors.newScheduledThreadPool(1));
            }
            vbVar.P().schedule(new Runnable() { // from class: com.google.android.gms.measurement.internal.mb
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    final vb vbVar2 = ob.this.f7839b.f7879c;
                    vbVar2.f8322a.b().t(new Runnable() { // from class: com.google.android.gms.measurement.internal.nb
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            vb.this.w();
                        }
                    });
                }
            }, ((Long) c5.f7325a0.b(null)).longValue(), TimeUnit.MILLISECONDS);
            return;
        }
        vbVar.L();
    }
}
