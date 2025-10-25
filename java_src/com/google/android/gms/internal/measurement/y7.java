package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class y7 extends hb implements jc {
    private static final y7 zzd;
    private nb zzb = hb.y();

    static {
        y7 y7Var = new y7();
        zzd = y7Var;
        hb.s(y7.class, y7Var);
    }

    private y7() {
    }

    public static y7 E() {
        return zzd;
    }

    @Override // com.google.android.gms.internal.measurement.hb
    public final Object B(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 == 5) {
                            return zzd;
                        }
                        throw null;
                    }
                    return new x7(null);
                }
                return new y7();
            }
            return hb.t(zzd, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzb", a8.class});
        }
        return (byte) 1;
    }

    public final List C() {
        return this.zzb;
    }

    public final int D() {
        return this.zzb.size();
    }
}
