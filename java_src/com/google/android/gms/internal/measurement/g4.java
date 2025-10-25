package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class g4 extends hb implements jc {
    private static final g4 zzh;
    private int zzb;
    private q4 zzd;
    private k4 zze;
    private boolean zzf;
    private String zzg = "";

    static {
        g4 g4Var = new g4();
        zzh = g4Var;
        hb.s(g4.class, g4Var);
    }

    private g4() {
    }

    public static g4 K() {
        return zzh;
    }

    @Override // com.google.android.gms.internal.measurement.hb
    public final Object B(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 == 5) {
                            return zzh;
                        }
                        throw null;
                    }
                    return new f4(null);
                }
                return new g4();
            }
            return hb.t(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }

    public final boolean C() {
        return (this.zzb & 1) != 0;
    }

    public final q4 D() {
        q4 q4Var = this.zzd;
        if (q4Var == null) {
            return q4.J();
        }
        return q4Var;
    }

    public final boolean E() {
        return (this.zzb & 2) != 0;
    }

    public final k4 F() {
        k4 k4Var = this.zze;
        if (k4Var == null) {
            return k4.L();
        }
        return k4Var;
    }

    public final boolean G() {
        return (this.zzb & 4) != 0;
    }

    public final boolean H() {
        return this.zzf;
    }

    public final boolean I() {
        return (this.zzb & 8) != 0;
    }

    public final String J() {
        return this.zzg;
    }

    public final /* synthetic */ void L(String str) {
        this.zzb |= 8;
        this.zzg = str;
    }
}
