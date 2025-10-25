package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class v5 extends hb implements jc {
    private static final v5 zzi;
    private int zzb;
    private int zzg;
    private String zzd = "";
    private String zze = "";
    private String zzf = "";
    private String zzh = "";

    static {
        v5 v5Var = new v5();
        zzi = v5Var;
        hb.s(v5.class, v5Var);
    }

    private v5() {
    }

    public static v5 G() {
        return zzi;
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
                            return zzi;
                        }
                        throw null;
                    }
                    return new u5(null);
                }
                return new v5();
            }
            return hb.t(zzi, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004င\u0003\u0005ဈ\u0004", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh"});
        }
        return (byte) 1;
    }

    public final String C() {
        return this.zzd;
    }

    public final String D() {
        return this.zze;
    }

    public final int E() {
        return this.zzg;
    }

    public final String F() {
        return this.zzh;
    }
}
