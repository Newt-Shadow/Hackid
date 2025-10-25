package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Objects;
/* loaded from: classes.dex */
final class jd implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f7675a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f7676b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Bundle f7677c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ kd f7678d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jd(kd kdVar, String str, String str2, Bundle bundle) {
        this.f7675a = str;
        this.f7676b = str2;
        this.f7677c = bundle;
        Objects.requireNonNull(kdVar);
        this.f7678d = kdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        pd pdVar = this.f7678d.f7700a;
        yd N0 = pdVar.N0();
        long currentTimeMillis = pdVar.f().currentTimeMillis();
        String str = this.f7675a;
        pdVar.i((g0) n5.q.k(N0.R(str, this.f7676b, this.f7677c, "auto", currentTimeMillis, false, true)), str);
    }
}
