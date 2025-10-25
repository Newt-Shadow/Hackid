package com.google.android.gms.internal.play_billing;

import sun.misc.Unsafe;
/* loaded from: classes.dex */
final class d4 extends e4 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d4(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.play_billing.e4
    public final double a(Object obj, long j10) {
        return Double.longBitsToDouble(this.f6977a.getLong(obj, j10));
    }

    @Override // com.google.android.gms.internal.play_billing.e4
    public final float b(Object obj, long j10) {
        return Float.intBitsToFloat(this.f6977a.getInt(obj, j10));
    }

    @Override // com.google.android.gms.internal.play_billing.e4
    public final void c(Object obj, long j10, boolean z10) {
        if (f4.f6985h) {
            f4.d(obj, j10, r3 ? (byte) 1 : (byte) 0);
        } else {
            f4.e(obj, j10, r3 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.e4
    public final void d(Object obj, long j10, byte b10) {
        if (f4.f6985h) {
            f4.d(obj, j10, b10);
        } else {
            f4.e(obj, j10, b10);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.e4
    public final void e(Object obj, long j10, double d10) {
        this.f6977a.putLong(obj, j10, Double.doubleToLongBits(d10));
    }

    @Override // com.google.android.gms.internal.play_billing.e4
    public final void f(Object obj, long j10, float f10) {
        this.f6977a.putInt(obj, j10, Float.floatToIntBits(f10));
    }

    @Override // com.google.android.gms.internal.play_billing.e4
    public final boolean g(Object obj, long j10) {
        if (f4.f6985h) {
            return f4.y(obj, j10);
        }
        return f4.z(obj, j10);
    }
}
