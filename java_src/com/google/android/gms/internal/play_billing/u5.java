package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
public final class u5 extends b2 implements g3 {
    private static final u5 zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private k5 zzg;
    private n5 zzh;

    static {
        u5 u5Var = new u5();
        zzb = u5Var;
        b2.v(u5.class, u5Var);
    }

    private u5() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void C(u5 u5Var, b6 b6Var) {
        u5Var.zzf = b6Var;
        u5Var.zze = 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void D(u5 u5Var, g5 g5Var) {
        u5Var.zzf = g5Var;
        u5Var.zze = 5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void E(u5 u5Var, n5 n5Var) {
        n5Var.getClass();
        u5Var.zzh = n5Var;
        u5Var.zzd |= 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void F(u5 u5Var, k5 k5Var) {
        u5Var.zzg = k5Var;
        u5Var.zzd |= 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void G(u5 u5Var, p4 p4Var) {
        u5Var.zzf = p4Var;
        u5Var.zze = 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void H(u5 u5Var, t4 t4Var) {
        u5Var.zzf = t4Var;
        u5Var.zze = 3;
    }

    public static t5 I() {
        return (t5) zzb.g();
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
                        return zzb;
                    }
                    return new t5(null);
                }
                return new u5();
            }
            return b2.s(zzb, "\u0001\u0006\u0001\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဉ\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006ဉ\u0001", new Object[]{"zzf", "zze", "zzd", "zzg", p4.class, t4.class, b6.class, g5.class, "zzh"});
        }
        return (byte) 1;
    }
}
