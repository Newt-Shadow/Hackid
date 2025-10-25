package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class t5 extends hb implements jc {
    private static final t5 zzf;
    private int zzb;
    private String zzd = "";
    private String zze = "";

    static {
        t5 t5Var = new t5();
        zzf = t5Var;
        hb.s(t5.class, t5Var);
    }

    private t5() {
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
                            return zzf;
                        }
                        throw null;
                    }
                    return new s5(null);
                }
                return new t5();
            }
            return hb.t(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzb", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final String C() {
        return this.zzd;
    }

    public final String D() {
        return this.zze;
    }
}
