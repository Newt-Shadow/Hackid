package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class w7 extends hb implements jc {
    private static final w7 zzj;
    private int zzb;
    private long zzd;
    private String zze = "";
    private String zzf = "";
    private long zzg;
    private float zzh;
    private double zzi;

    static {
        w7 w7Var = new w7();
        zzj = w7Var;
        hb.s(w7.class, w7Var);
    }

    private w7() {
    }

    public static v7 N() {
        return (v7) zzj.o();
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
                    return new v7(null);
                }
                return new w7();
            }
            return hb.t(zzj, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }

    public final boolean C() {
        return (this.zzb & 1) != 0;
    }

    public final long D() {
        return this.zzd;
    }

    public final String E() {
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

    public final long I() {
        return this.zzg;
    }

    public final boolean J() {
        return (this.zzb & 16) != 0;
    }

    public final float K() {
        return this.zzh;
    }

    public final boolean L() {
        return (this.zzb & 32) != 0;
    }

    public final double M() {
        return this.zzi;
    }

    public final /* synthetic */ void O(long j10) {
        this.zzb |= 1;
        this.zzd = j10;
    }

    public final /* synthetic */ void P(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zze = str;
    }

    public final /* synthetic */ void Q(String str) {
        str.getClass();
        this.zzb |= 4;
        this.zzf = str;
    }

    public final /* synthetic */ void R() {
        this.zzb &= -5;
        this.zzf = zzj.zzf;
    }

    public final /* synthetic */ void S(long j10) {
        this.zzb |= 8;
        this.zzg = j10;
    }

    public final /* synthetic */ void T() {
        this.zzb &= -9;
        this.zzg = 0L;
    }

    public final /* synthetic */ void U(double d10) {
        this.zzb |= 32;
        this.zzi = d10;
    }

    public final /* synthetic */ void V() {
        this.zzb &= -33;
        this.zzi = 0.0d;
    }
}
