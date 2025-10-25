package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class j5 extends hb implements jc {
    private static final j5 zzh;
    private int zzb;
    private String zzd = "";
    private boolean zze;
    private boolean zzf;
    private int zzg;

    static {
        j5 j5Var = new j5();
        zzh = j5Var;
        hb.s(j5.class, j5Var);
    }

    private j5() {
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
                    return new i5(null);
                }
                return new j5();
            }
            return hb.t(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }

    public final String C() {
        return this.zzd;
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

    public final boolean G() {
        return this.zzf;
    }

    public final boolean H() {
        return (this.zzb & 8) != 0;
    }

    public final int I() {
        return this.zzg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void J(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzd = str;
    }
}
