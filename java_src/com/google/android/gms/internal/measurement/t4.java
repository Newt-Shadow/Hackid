package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class t4 extends hb implements jc {
    private static final t4 zzg;
    private int zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        t4 t4Var = new t4();
        zzg = t4Var;
        hb.s(t4.class, t4Var);
    }

    private t4() {
    }

    @Override // com.google.android.gms.internal.measurement.hb
    public final Object B(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 == 5) {
                            return zzg;
                        }
                        throw null;
                    }
                    return new s4(null);
                }
                return new t4();
            }
            return hb.t(zzg, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003᠌\u0002", new Object[]{"zzb", "zzd", y4.f6892a, "zze", w4.f6866a, "zzf", d5.f6352a});
        }
        return (byte) 1;
    }

    public final int D() {
        int a10 = a5.a(this.zzd);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }

    public final int E() {
        int a10 = x4.a(this.zze);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }

    public final int F() {
        int a10 = e5.a(this.zzf);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }
}
