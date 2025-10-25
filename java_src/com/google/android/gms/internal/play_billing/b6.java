package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
public final class b6 extends b2 implements g3 {
    private static final b6 zzb;
    private int zzd;
    private int zze;

    static {
        b6 b6Var = new b6();
        zzb = b6Var;
        b2.v(b6.class, b6Var);
    }

    private b6() {
    }

    public static b6 B() {
        return zzb;
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
                    return new z5(null);
                }
                return new b6();
            }
            return b2.s(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", a6.f6953a});
        }
        return (byte) 1;
    }
}
