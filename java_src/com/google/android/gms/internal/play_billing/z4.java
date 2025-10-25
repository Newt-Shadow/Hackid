package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
public final class z4 extends b2 implements g3 {
    private static final z4 zzb;
    private int zzd;
    private int zze;
    private int zzg;
    private String zzf = "";
    private String zzh = "";

    static {
        z4 z4Var = new z4();
        zzb = z4Var;
        b2.v(z4.class, z4Var);
    }

    private z4() {
    }

    public static /* synthetic */ void C(z4 z4Var, int i10) {
        z4Var.zzd |= 1;
        z4Var.zze = i10;
    }

    public static /* synthetic */ void D(z4 z4Var, String str) {
        str.getClass();
        z4Var.zzd |= 2;
        z4Var.zzf = str;
    }

    public static /* synthetic */ void E(z4 z4Var, String str) {
        z4Var.zzd |= 8;
        z4Var.zzh = str;
    }

    public static /* synthetic */ void F(z4 z4Var, int i10) {
        z4Var.zzg = i10 - 1;
        z4Var.zzd |= 4;
    }

    public static v4 G() {
        return (v4) zzb.g();
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
                    return new v4(null);
                }
                return new z4();
            }
            return b2.s(zzb, "\u0001\u0004\u0000\u0001\u0001\u0005\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0004᠌\u0002\u0005ဈ\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", x4.f7168a, "zzh"});
        }
        return (byte) 1;
    }
}
