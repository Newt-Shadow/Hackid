package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import java.util.Objects;
/* loaded from: classes.dex */
final class lb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ pb f7729a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lb(pb pbVar) {
        Objects.requireNonNull(pbVar);
        this.f7729a = pbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        vb vbVar = this.f7729a.f7879c;
        w6 w6Var = vbVar.f8322a;
        Context e10 = w6Var.e();
        w6Var.c();
        vbVar.K(new ComponentName(e10, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
