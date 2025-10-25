package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
public final class x5 extends b2 implements g3 {
    private static final x5 zzb;
    private int zzd;
    private int zzf;
    private i2 zze = b2.p();
    private String zzg = "";

    static {
        x5 x5Var = new x5();
        zzb = x5Var;
        b2.v(x5.class, x5Var);
    }

    private x5() {
    }

    public static /* synthetic */ void C(x5 x5Var, Iterable iterable) {
        i2 i2Var = x5Var.zze;
        if (!i2Var.f()) {
            x5Var.zze = b2.q(i2Var);
        }
        o0.c(iterable, x5Var.zze);
    }

    public static /* synthetic */ void D(x5 x5Var, int i10) {
        x5Var.zzd |= 1;
        x5Var.zzf = i10;
    }

    public static /* synthetic */ void E(x5 x5Var, String str) {
        str.getClass();
        x5Var.zzd |= 2;
        x5Var.zzg = str;
    }

    public static w5 F() {
        return (w5) zzb.g();
    }

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
                    return new w5(null);
                }
                return new x5();
            }
            return b2.s(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001a\u0002င\u0000\u0003ဈ\u0001", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
