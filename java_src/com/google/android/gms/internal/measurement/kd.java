package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class kd {

    /* renamed from: a  reason: collision with root package name */
    final Unsafe f6475a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kd(Unsafe unsafe) {
        this.f6475a = unsafe;
    }

    public abstract void a(Object obj, long j10, byte b10);

    public abstract boolean b(Object obj, long j10);

    public abstract void c(Object obj, long j10, boolean z10);

    public abstract float d(Object obj, long j10);

    public abstract void e(Object obj, long j10, float f10);

    public abstract double f(Object obj, long j10);

    public abstract void g(Object obj, long j10, double d10);
}
