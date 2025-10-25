package com.google.android.gms.internal.auth;

import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class z3 {

    /* renamed from: a  reason: collision with root package name */
    final Unsafe f6207a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z3(Unsafe unsafe) {
        this.f6207a = unsafe;
    }

    public abstract double a(Object obj, long j10);

    public abstract float b(Object obj, long j10);

    public abstract void c(Object obj, long j10, boolean z10);

    public abstract void d(Object obj, long j10, double d10);

    public abstract void e(Object obj, long j10, float f10);

    public abstract boolean f(Object obj, long j10);
}
