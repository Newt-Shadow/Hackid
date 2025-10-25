package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class v6 extends hb implements jc {
    private static final v6 zzf;
    private int zzb;
    private String zzd = "";
    private long zze;

    static {
        v6 v6Var = new v6();
        zzf = v6Var;
        hb.s(v6.class, v6Var);
    }

    private v6() {
    }

    public static u6 C() {
        return (u6) zzf.o();
    }

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
                    return new u6(null);
                }
                return new v6();
            }
            return hb.t(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001", new Object[]{"zzb", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final /* synthetic */ void D(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzd = str;
    }

    public final /* synthetic */ void E(long j10) {
        this.zzb |= 2;
        this.zze = j10;
    }
}
