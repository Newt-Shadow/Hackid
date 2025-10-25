package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f7208a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ long f7209b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ b2 f7210c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(b2 b2Var, String str, long j10) {
        this.f7208a = str;
        this.f7209b = j10;
        Objects.requireNonNull(b2Var);
        this.f7210c = b2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7210c.l(this.f7208a, this.f7209b);
    }
}
