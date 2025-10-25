package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class d8 extends hb implements jc {
    private static final d8 zzf;
    private int zzb;
    private nb zzd = hb.y();
    private y7 zze;

    static {
        d8 d8Var = new d8();
        zzf = d8Var;
        hb.s(d8.class, d8Var);
    }

    private d8() {
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
                    return new b8(null);
                }
                return new d8();
            }
            return hb.t(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"zzb", "zzd", h8.class, "zze"});
        }
        return (byte) 1;
    }

    public final List C() {
        return this.zzd;
    }

    public final y7 D() {
        y7 y7Var = this.zze;
        if (y7Var == null) {
            return y7.E();
        }
        return y7Var;
    }
}
