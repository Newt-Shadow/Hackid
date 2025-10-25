package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class f5 extends hb implements jc {
    private static final f5 zzi;
    private int zzb;
    private boolean zzg;
    private nb zzd = hb.y();
    private nb zze = hb.y();
    private nb zzf = hb.y();
    private nb zzh = hb.y();

    static {
        f5 f5Var = new f5();
        zzi = f5Var;
        hb.s(f5.class, f5Var);
    }

    private f5() {
    }

    public static f5 I() {
        return zzi;
    }

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
                    return new r4(null);
                }
                return new f5();
            }
            return hb.t(zzi, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0004\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004ဇ\u0000\u0005\u001b", new Object[]{"zzb", "zzd", t4.class, "zze", v4.class, "zzf", c5.class, "zzg", "zzh", t4.class});
        }
        return (byte) 1;
    }

    public final List C() {
        return this.zzd;
    }

    public final List D() {
        return this.zze;
    }

    public final List E() {
        return this.zzf;
    }

    public final boolean F() {
        return (this.zzb & 1) != 0;
    }

    public final boolean G() {
        return this.zzg;
    }

    public final List H() {
        return this.zzh;
    }
}
