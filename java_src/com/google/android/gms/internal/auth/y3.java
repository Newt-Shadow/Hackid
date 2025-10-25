package com.google.android.gms.internal.auth;

import sun.misc.Unsafe;
/* loaded from: classes.dex */
final class y3 extends z3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public y3(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.auth.z3
    public final double a(Object obj, long j10) {
        return Double.longBitsToDouble(this.f6207a.getLong(obj, j10));
    }

    @Override // com.google.android.gms.internal.auth.z3
    public final float b(Object obj, long j10) {
        return Float.intBitsToFloat(this.f6207a.getInt(obj, j10));
    }

    @Override // com.google.android.gms.internal.auth.z3
    public final void c(Object obj, long j10, boolean z10) {
        if (a4.f5970g) {
            a4.i(obj, j10, z10);
        } else {
            a4.j(obj, j10, z10);
        }
    }

    @Override // com.google.android.gms.internal.auth.z3
    public final void d(Object obj, long j10, double d10) {
        this.f6207a.putLong(obj, j10, Double.doubleToLongBits(d10));
    }

    @Override // com.google.android.gms.internal.auth.z3
    public final void e(Object obj, long j10, float f10) {
        this.f6207a.putInt(obj, j10, Float.floatToIntBits(f10));
    }

    @Override // com.google.android.gms.internal.auth.z3
    public final boolean f(Object obj, long j10) {
        if (a4.f5970g) {
            return a4.q(obj, j10);
        }
        return a4.r(obj, j10);
    }
}
