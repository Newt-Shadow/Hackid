package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
public final class n5 extends b2 implements g3 {
    private static final n5 zzb;
    private int zzd;
    private boolean zze;
    private boolean zzf;

    static {
        n5 n5Var = new n5();
        zzb = n5Var;
        b2.v(n5.class, n5Var);
    }

    private n5() {
    }

    public static /* synthetic */ void C(n5 n5Var, boolean z10) {
        n5Var.zzd |= 2;
        n5Var.zzf = false;
    }

    public static m5 D() {
        return (m5) zzb.g();
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
                    return new m5(null);
                }
                return new n5();
            }
            return b2.s(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
