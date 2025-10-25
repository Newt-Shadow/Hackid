package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class m4 extends hb implements jc {
    private static final m4 zzj;
    private int zzb;
    private int zzd;
    private String zze = "";
    private g4 zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;

    static {
        m4 m4Var = new m4();
        zzj = m4Var;
        hb.s(m4.class, m4Var);
    }

    private m4() {
    }

    public static l4 K() {
        return (l4) zzj.o();
    }

    @Override // com.google.android.gms.internal.measurement.hb
    public final Object B(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 == 5) {
                            return zzj;
                        }
                        throw null;
                    }
                    return new l4(null);
                }
                return new m4();
            }
            return hb.t(zzj, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }

    public final boolean C() {
        return (this.zzb & 1) != 0;
    }

    public final int D() {
        return this.zzd;
    }

    public final String E() {
        return this.zze;
    }

    public final g4 F() {
        g4 g4Var = this.zzf;
        if (g4Var == null) {
            return g4.K();
        }
        return g4Var;
    }

    public final boolean G() {
        return this.zzg;
    }

    public final boolean H() {
        return this.zzh;
    }

    public final boolean I() {
        return (this.zzb & 32) != 0;
    }

    public final boolean J() {
        return this.zzi;
    }

    public final /* synthetic */ void L(String str) {
        this.zzb |= 2;
        this.zze = str;
    }
}
