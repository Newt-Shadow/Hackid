package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class r6 extends hb implements jc {
    private static final r6 zzf;
    private int zzb;
    private int zzd;
    private long zze;

    static {
        r6 r6Var = new r6();
        zzf = r6Var;
        hb.s(r6.class, r6Var);
    }

    private r6() {
    }

    public static q6 G() {
        return (q6) zzf.o();
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
                    return new q6(null);
                }
                return new r6();
            }
            return hb.t(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဂ\u0001", new Object[]{"zzb", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final boolean C() {
        return (this.zzb & 1) != 0;
    }

    public final int D() {
        return this.zzd;
    }

    public final boolean E() {
        return (this.zzb & 2) != 0;
    }

    public final long F() {
        return this.zze;
    }

    public final /* synthetic */ void H(int i10) {
        this.zzb |= 1;
        this.zzd = i10;
    }

    public final /* synthetic */ void I(long j10) {
        this.zzb |= 2;
        this.zze = j10;
    }
}
