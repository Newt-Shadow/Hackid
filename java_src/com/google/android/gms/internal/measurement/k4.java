package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class k4 extends hb implements jc {
    private static final k4 zzi;
    private int zzb;
    private int zzd;
    private boolean zze;
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";

    static {
        k4 k4Var = new k4();
        zzi = k4Var;
        hb.s(k4.class, k4Var);
    }

    private k4() {
    }

    public static k4 L() {
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
                    return new h4(null);
                }
                return new k4();
            }
            return hb.t(zzi, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zzb", "zzd", i4.f6434a, "zze", "zzf", "zzg", "zzh"});
        }
        return (byte) 1;
    }

    public final boolean C() {
        return (this.zzb & 1) != 0;
    }

    public final boolean D() {
        return (this.zzb & 2) != 0;
    }

    public final boolean E() {
        return this.zze;
    }

    public final boolean F() {
        return (this.zzb & 4) != 0;
    }

    public final String G() {
        return this.zzf;
    }

    public final boolean H() {
        return (this.zzb & 8) != 0;
    }

    public final String I() {
        return this.zzg;
    }

    public final boolean J() {
        return (this.zzb & 16) != 0;
    }

    public final String K() {
        return this.zzh;
    }

    public final int N() {
        int a10 = j4.a(this.zzd);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }
}
