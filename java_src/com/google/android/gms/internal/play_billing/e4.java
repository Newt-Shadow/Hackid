package com.google.android.gms.internal.play_billing;

import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class e4 {

    /* renamed from: a  reason: collision with root package name */
    final Unsafe f6977a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e4(Unsafe unsafe) {
        this.f6977a = unsafe;
    }

    public abstract double a(Object obj, long j10);

    public abstract float b(Object obj, long j10);

    public abstract void c(Object obj, long j10, boolean z10);

    public abstract void d(Object obj, long j10, byte b10);

    public abstract void e(Object obj, long j10, double d10);

    public abstract void f(Object obj, long j10, float f10);

    public abstract boolean g(Object obj, long j10);
}
