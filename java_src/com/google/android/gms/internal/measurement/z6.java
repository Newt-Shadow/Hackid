package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class z6 extends hb implements jc {
    private static final z6 zzg;
    private int zzb;
    private String zzd = "";
    private String zze = "";
    private d6 zzf;

    static {
        z6 z6Var = new z6();
        zzg = z6Var;
        hb.s(z6.class, z6Var);
    }

    private z6() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
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
                    return new y6(null);
                }
                return new z6();
            }
            return hb.t(zzg, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဉ\u0002", new Object[]{"zzb", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
