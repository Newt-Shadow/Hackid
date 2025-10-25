package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ua implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f8088a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ vb f8089b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ua(vb vbVar, ae aeVar) {
        this.f8088a = aeVar;
        Objects.requireNonNull(vbVar);
        this.f8089b = vbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        vb vbVar = this.f8089b;
        i6.e N = vbVar.N();
        if (N == null) {
            vbVar.f8322a.a().r().a("Failed to send app backgrounded");
            return;
        }
        try {
            ae aeVar = this.f8088a;
            n5.q.k(aeVar);
            N.L0(aeVar);
            vbVar.J();
        } catch (RemoteException e10) {
            this.f8089b.f8322a.a().o().b("Failed to send app backgrounded to the service", e10);
        }
    }
}
