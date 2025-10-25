package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class p6 extends hb implements jc {
    private static final p6 zzd;
    private nb zzb = hb.y();

    static {
        p6 p6Var = new p6();
        zzd = p6Var;
        hb.s(p6.class, p6Var);
    }

    private p6() {
    }

    public static i6 D() {
        return (i6) zzd.o();
    }

    public static p6 E() {
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
                    return new i6(null);
                }
                return new p6();
            }
            return hb.t(zzd, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzb", m6.class});
        }
        return (byte) 1;
    }

    public final List C() {
        return this.zzb;
    }

    public final /* synthetic */ void F(Iterable iterable) {
        nb nbVar = this.zzb;
        if (!nbVar.zza()) {
            this.zzb = hb.z(nbVar);
        }
        v9.g(iterable, this.zzb);
    }
}
