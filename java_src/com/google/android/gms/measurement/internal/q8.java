package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class q8 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f7930a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f7931b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ long f7932c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Bundle f7933d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ boolean f7934e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ boolean f7935f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ boolean f7936g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ String f7937h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ w9 f7938i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q8(w9 w9Var, String str, String str2, long j10, Bundle bundle, boolean z10, boolean z11, boolean z12, String str3) {
        this.f7930a = str;
        this.f7931b = str2;
        this.f7932c = j10;
        this.f7933d = bundle;
        this.f7934e = z10;
        this.f7935f = z11;
        this.f7936g = z12;
        this.f7937h = str3;
        Objects.requireNonNull(w9Var);
        this.f7938i = w9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7938i.v(this.f7930a, this.f7931b, this.f7932c, this.f7933d, this.f7934e, this.f7935f, this.f7936g, this.f7937h);
    }
}
