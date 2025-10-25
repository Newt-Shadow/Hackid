package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class q4 extends hb implements jc {
    private static final q4 zzh;
    private int zzb;
    private int zzd;
    private boolean zzf;
    private String zze = "";
    private nb zzg = hb.y();

    static {
        q4 q4Var = new q4();
        zzh = q4Var;
        hb.s(q4.class, q4Var);
    }

    private q4() {
    }

    public static q4 J() {
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
                    return new n4(null);
                }
                return new q4();
            }
            return hb.t(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zzb", "zzd", o4.f6603a, "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }

    public final boolean C() {
        return (this.zzb & 1) != 0;
    }

    public final boolean D() {
        return (this.zzb & 2) != 0;
    }

    public final String E() {
        return this.zze;
    }

    public final boolean F() {
        return (this.zzb & 4) != 0;
    }

    public final boolean G() {
        return this.zzf;
    }

    public final List H() {
        return this.zzg;
    }

    public final int I() {
        return this.zzg.size();
    }

    public final int L() {
        int a10 = p4.a(this.zzd);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }
}
