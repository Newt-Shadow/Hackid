package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class r8 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f7961a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f7962b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Object f7963c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ long f7964d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ w9 f7965e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r8(w9 w9Var, String str, String str2, Object obj, long j10) {
        this.f7961a = str;
        this.f7962b = str2;
        this.f7963c = obj;
        this.f7964d = j10;
        Objects.requireNonNull(w9Var);
        this.f7965e = w9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7965e.B(this.f7961a, this.f7962b, this.f7963c, this.f7964d);
    }
}
