package com.google.android.gms.internal.play_billing;

import java.util.Iterator;
/* loaded from: classes.dex */
public final class g5 extends b2 implements g3 {
    private static final h2 zzb = new a5();
    private static final g5 zzd;
    private int zze;
    private int zzg;
    private z4 zzj;
    private boolean zzk;
    private boolean zzl;
    private String zzf = "";
    private g2 zzh = b2.o();
    private i2 zzi = b2.p();

    static {
        g5 g5Var = new g5();
        zzd = g5Var;
        b2.v(g5.class, g5Var);
    }

    private g5() {
    }

    public static g5 C(byte[] bArr, q1 q1Var) {
        return (g5) b2.n(zzd, bArr, q1Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void D(g5 g5Var, x5 x5Var) {
        x5Var.getClass();
        i2 i2Var = g5Var.zzi;
        if (!i2Var.f()) {
            g5Var.zzi = b2.q(i2Var);
        }
        g5Var.zzi.add(x5Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void E(g5 g5Var, z4 z4Var) {
        z4Var.getClass();
        g5Var.zzj = z4Var;
        g5Var.zze |= 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void F(g5 g5Var, boolean z10) {
        g5Var.zze |= 8;
        g5Var.zzk = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void G(g5 g5Var, boolean z10) {
        g5Var.zze |= 16;
        g5Var.zzl = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void H(g5 g5Var, Iterable iterable) {
        int i10;
        g2 g2Var = g5Var.zzh;
        if (!g2Var.f()) {
            int size = g2Var.size();
            if (size == 0) {
                i10 = 10;
            } else {
                i10 = size + size;
            }
            g5Var.zzh = g2Var.u(i10);
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            g5Var.zzh.x(((d5) it.next()).zza());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void I(g5 g5Var, int i10) {
        g5Var.zzg = i10 - 1;
        g5Var.zze |= 2;
    }

    public static e5 J() {
        return (e5) zzd.g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.play_billing.b2
    public final Object z(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 != 5) {
                            return null;
                        }
                        return zzd;
                    }
                    return new e5(null);
                }
                return new g5();
            }
            return b2.s(zzd, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0002\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003ࠬ\u0004\u001b\u0005ဉ\u0002\u0006ဇ\u0003\u0007ဇ\u0004", new Object[]{"zze", "zzf", "zzg", f5.f6986a, "zzh", c5.f6960a, "zzi", x5.class, "zzj", "zzk", "zzl"});
        }
        return (byte) 1;
    }
}
