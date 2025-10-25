package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;
/* loaded from: classes.dex */
final class jd extends kd {
    /* JADX INFO: Access modifiers changed from: package-private */
    public jd(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.measurement.kd
    public final void a(Object obj, long j10, byte b10) {
        if (ld.f6510h) {
            ld.d(obj, j10, b10);
        } else {
            ld.e(obj, j10, b10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.kd
    public final boolean b(Object obj, long j10) {
        if (ld.f6510h) {
            return ld.z(obj, j10);
        }
        return ld.A(obj, j10);
    }

    @Override // com.google.android.gms.internal.measurement.kd
    public final void c(Object obj, long j10, boolean z10) {
        if (ld.f6510h) {
            ld.d(obj, j10, r3 ? (byte) 1 : (byte) 0);
        } else {
            ld.e(obj, j10, r3 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.measurement.kd
    public final float d(Object obj, long j10) {
        return Float.intBitsToFloat(this.f6475a.getInt(obj, j10));
    }

    @Override // com.google.android.gms.internal.measurement.kd
    public final void e(Object obj, long j10, float f10) {
        this.f6475a.putInt(obj, j10, Float.floatToIntBits(f10));
    }

    @Override // com.google.android.gms.internal.measurement.kd
    public final double f(Object obj, long j10) {
        return Double.longBitsToDouble(this.f6475a.getLong(obj, j10));
    }

    @Override // com.google.android.gms.internal.measurement.kd
    public final void g(Object obj, long j10, double d10) {
        this.f6475a.putLong(obj, j10, Double.doubleToLongBits(d10));
    }
}
