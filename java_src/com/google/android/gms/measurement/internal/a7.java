package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class a7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f7224a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f7225b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f7226c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ long f7227d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ y7 f7228e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a7(y7 y7Var, String str, String str2, String str3, long j10) {
        this.f7224a = str;
        this.f7225b = str2;
        this.f7226c = str3;
        this.f7227d = j10;
        Objects.requireNonNull(y7Var);
        this.f7228e = y7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.f7224a;
        if (str == null) {
            y7 y7Var = this.f7228e;
            y7Var.j1().t0(this.f7225b, null);
            return;
        }
        da daVar = new da(this.f7226c, str, this.f7227d);
        y7 y7Var2 = this.f7228e;
        y7Var2.j1().t0(this.f7225b, daVar);
    }
}
