package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
public final class r5 extends b2 implements g3 {
    private static final r5 zzb;
    private int zzd;
    private int zze;

    static {
        r5 r5Var = new r5();
        zzb = r5Var;
        b2.v(r5.class, r5Var);
    }

    private r5() {
    }

    public static /* synthetic */ void C(r5 r5Var, int i10) {
        r5Var.zze = i10 - 1;
        r5Var.zzd |= 1;
    }

    public static p5 D() {
        return (p5) zzb.g();
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
                    return new p5(null);
                }
                return new r5();
            }
            return b2.s(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", q5.f7100a});
        }
        return (byte) 1;
    }
}
