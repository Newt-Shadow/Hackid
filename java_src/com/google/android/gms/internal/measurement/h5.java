package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class h5 extends hb implements jc {
    private static final h5 zzg;
    private int zzb;
    private String zzd = "";
    private nb zze = hb.y();
    private boolean zzf;

    static {
        h5 h5Var = new h5();
        zzg = h5Var;
        hb.s(h5.class, h5Var);
    }

    private h5() {
    }

    @Override // com.google.android.gms.internal.measurement.hb
    public final Object B(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 == 5) {
                            return zzg;
                        }
                        throw null;
                    }
                    return new g5(null);
                }
                return new h5();
            }
            return hb.t(zzg, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဇ\u0001", new Object[]{"zzb", "zzd", "zze", r5.class, "zzf"});
        }
        return (byte) 1;
    }

    public final String C() {
        return this.zzd;
    }
}
