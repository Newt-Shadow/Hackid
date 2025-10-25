package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
public final class k5 extends b2 implements g3 {
    private static final k5 zzb;
    private int zzd;
    private String zze = "";
    private String zzf = "";

    static {
        k5 k5Var = new k5();
        zzb = k5Var;
        b2.v(k5.class, k5Var);
    }

    private k5() {
    }

    public static /* synthetic */ void C(k5 k5Var, String str) {
        str.getClass();
        k5Var.zzd |= 1;
        k5Var.zze = str;
    }

    public static /* synthetic */ void D(k5 k5Var, String str) {
        str.getClass();
        k5Var.zzd |= 2;
        k5Var.zzf = str;
    }

    public static j5 E() {
        return (j5) zzb.g();
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
                    return new j5(null);
                }
                return new k5();
            }
            return b2.s(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
