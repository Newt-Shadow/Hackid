package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class f6 extends hb implements jc {
    private static final f6 zzk;
    private int zzb;
    private boolean zzd;
    private boolean zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;
    private boolean zzj;

    static {
        f6 f6Var = new f6();
        zzk = f6Var;
        hb.s(f6.class, f6Var);
    }

    private f6() {
    }

    public static e6 J() {
        return (e6) zzk.o();
    }

    public static f6 K() {
        return zzk;
    }

    @Override // com.google.android.gms.internal.measurement.hb
    public final Object B(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 == 5) {
                            return zzk;
                        }
                        throw null;
                    }
                    return new e6(null);
                }
                return new f6();
            }
            return hb.t(zzk, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005\u0007ဇ\u0006", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        return (byte) 1;
    }

    public final boolean C() {
        return this.zzd;
    }

    public final boolean D() {
        return this.zze;
    }

    public final boolean E() {
        return this.zzf;
    }

    public final boolean F() {
        return this.zzg;
    }

    public final boolean G() {
        return this.zzh;
    }

    public final boolean H() {
        return this.zzi;
    }

    public final boolean I() {
        return this.zzj;
    }

    public final /* synthetic */ void L(boolean z10) {
        this.zzb |= 1;
        this.zzd = z10;
    }

    public final /* synthetic */ void M(boolean z10) {
        this.zzb |= 2;
        this.zze = z10;
    }

    public final /* synthetic */ void N(boolean z10) {
        this.zzb |= 4;
        this.zzf = z10;
    }

    public final /* synthetic */ void O(boolean z10) {
        this.zzb |= 8;
        this.zzg = z10;
    }

    public final /* synthetic */ void P(boolean z10) {
        this.zzb |= 16;
        this.zzh = z10;
    }

    public final /* synthetic */ void Q(boolean z10) {
        this.zzb |= 32;
        this.zzi = z10;
    }

    public final /* synthetic */ void R(boolean z10) {
        this.zzb |= 64;
        this.zzj = z10;
    }
}
