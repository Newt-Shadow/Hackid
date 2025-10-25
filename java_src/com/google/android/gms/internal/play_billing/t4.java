package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
public final class t4 extends b2 implements g3 {
    private static final t4 zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private int zzg;

    static {
        t4 t4Var = new t4();
        zzb = t4Var;
        b2.v(t4.class, t4Var);
    }

    private t4() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void C(t4 t4Var, r5 r5Var) {
        r5Var.getClass();
        t4Var.zzf = r5Var;
        t4Var.zze = 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void D(t4 t4Var, int i10) {
        t4Var.zzg = i10 - 1;
        t4Var.zzd |= 1;
    }

    public static s4 E() {
        return (s4) zzb.g();
    }

    @Override // com.google.android.gms.internal.play_billing.b2
    protected final Object z(int i10, Object obj, Object obj2) {
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
                    return new s4(null);
                }
                return new t4();
            }
            return b2.s(zzb, "\u0001\u0002\u0001\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002<\u0000", new Object[]{"zzf", "zze", "zzd", "zzg", q4.f7099a, r5.class});
        }
        return (byte) 1;
    }
}
