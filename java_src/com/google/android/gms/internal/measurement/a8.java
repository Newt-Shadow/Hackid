package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class a8 extends hb implements jc {
    private static final a8 zzf;
    private int zzb;
    private String zzd = "";
    private nb zze = hb.y();

    static {
        a8 a8Var = new a8();
        zzf = a8Var;
        hb.s(a8.class, a8Var);
    }

    private a8() {
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
                    return new z7(null);
                }
                return new a8();
            }
            return hb.t(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b", new Object[]{"zzb", "zzd", "zze", h8.class});
        }
        return (byte) 1;
    }

    public final String C() {
        return this.zzd;
    }

    public final List D() {
        return this.zze;
    }
}
