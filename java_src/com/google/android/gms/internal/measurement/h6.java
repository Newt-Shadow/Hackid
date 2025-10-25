package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class h6 extends hb implements jc {
    private static final h6 zzh;
    private int zzb;
    private int zzd;
    private k7 zze;
    private k7 zzf;
    private boolean zzg;

    static {
        h6 h6Var = new h6();
        zzh = h6Var;
        hb.s(h6.class, h6Var);
    }

    private h6() {
    }

    public static g6 J() {
        return (g6) zzh.o();
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
                            return zzh;
                        }
                        throw null;
                    }
                    return new g6(null);
                }
                return new h6();
            }
            return hb.t(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }

    public final boolean C() {
        return (this.zzb & 1) != 0;
    }

    public final int D() {
        return this.zzd;
    }

    public final k7 E() {
        k7 k7Var = this.zze;
        if (k7Var == null) {
            return k7.L();
        }
        return k7Var;
    }

    public final boolean F() {
        return (this.zzb & 4) != 0;
    }

    public final k7 G() {
        k7 k7Var = this.zzf;
        if (k7Var == null) {
            return k7.L();
        }
        return k7Var;
    }

    public final boolean H() {
        return (this.zzb & 8) != 0;
    }

    public final boolean I() {
        return this.zzg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void K(int i10) {
        this.zzb |= 1;
        this.zzd = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void L(k7 k7Var) {
        k7Var.getClass();
        this.zze = k7Var;
        this.zzb |= 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void M(k7 k7Var) {
        this.zzf = k7Var;
        this.zzb |= 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void N(boolean z10) {
        this.zzb |= 8;
        this.zzg = z10;
    }
}
