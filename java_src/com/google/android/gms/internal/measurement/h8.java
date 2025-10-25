package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class h8 extends hb implements jc {
    private static final h8 zzj;
    private int zzb;
    private int zzd;
    private nb zze = hb.y();
    private String zzf = "";
    private String zzg = "";
    private boolean zzh;
    private double zzi;

    static {
        h8 h8Var = new h8();
        zzj = h8Var;
        hb.s(h8.class, h8Var);
    }

    private h8() {
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
                            return zzj;
                        }
                        throw null;
                    }
                    return new e8(null);
                }
                return new h8();
            }
            return hb.t(zzj, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001᠌\u0000\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zzb", "zzd", f8.f6389a, "zze", h8.class, "zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }

    public final List C() {
        return this.zze;
    }

    public final String D() {
        return this.zzf;
    }

    public final boolean E() {
        return (this.zzb & 4) != 0;
    }

    public final String F() {
        return this.zzg;
    }

    public final boolean G() {
        return (this.zzb & 8) != 0;
    }

    public final boolean H() {
        return this.zzh;
    }

    public final boolean I() {
        return (this.zzb & 16) != 0;
    }

    public final double J() {
        return this.zzi;
    }

    public final int L() {
        int a10 = g8.a(this.zzd);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }
}
