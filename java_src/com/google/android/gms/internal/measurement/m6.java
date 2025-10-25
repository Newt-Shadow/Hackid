package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class m6 extends hb implements jc {
    private static final m6 zzf;
    private int zzb;
    private int zzd;
    private int zze;

    static {
        m6 m6Var = new m6();
        zzf = m6Var;
        hb.s(m6.class, m6Var);
    }

    private m6() {
    }

    public static l6 C() {
        return (l6) zzf.o();
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
                    return new l6(null);
                }
                return new m6();
            }
            return hb.t(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"zzb", "zzd", j6.f6448a, "zze", n6.f6581a});
        }
        return (byte) 1;
    }

    public final int E() {
        int a10 = k6.a(this.zzd);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }

    public final int F() {
        int a10 = o6.a(this.zze);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }

    public final /* synthetic */ void G(int i10) {
        this.zzd = i10 - 1;
        this.zzb |= 1;
    }

    public final /* synthetic */ void H(int i10) {
        this.zze = i10 - 1;
        this.zzb |= 2;
    }
}
