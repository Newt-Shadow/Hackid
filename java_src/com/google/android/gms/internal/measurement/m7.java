package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class m7 extends hb implements jc {
    private static final m7 zzf;
    private int zzb;
    private int zzd;
    private mb zze = hb.w();

    static {
        m7 m7Var = new m7();
        zzf = m7Var;
        hb.s(m7.class, m7Var);
    }

    private m7() {
    }

    public static l7 H() {
        return (l7) zzf.o();
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
                    return new l7(null);
                }
                return new m7();
            }
            return hb.t(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001င\u0000\u0002\u0014", new Object[]{"zzb", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final boolean C() {
        return (this.zzb & 1) != 0;
    }

    public final int D() {
        return this.zzd;
    }

    public final List E() {
        return this.zze;
    }

    public final int F() {
        return this.zze.size();
    }

    public final long G(int i10) {
        return this.zze.d0(i10);
    }

    public final /* synthetic */ void I(int i10) {
        this.zzb |= 1;
        this.zzd = i10;
    }

    public final /* synthetic */ void J(Iterable iterable) {
        mb mbVar = this.zze;
        if (!mbVar.zza()) {
            this.zze = hb.x(mbVar);
        }
        v9.g(iterable, this.zze);
    }
}
