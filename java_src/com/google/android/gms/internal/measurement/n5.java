package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class n5 extends hb implements jc {
    private static final n5 zzd;
    private nb zzb = hb.y();

    static {
        n5 n5Var = new n5();
        zzd = n5Var;
        hb.s(n5.class, n5Var);
    }

    private n5() {
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
                            return zzd;
                        }
                        throw null;
                    }
                    return new m5(null);
                }
                return new n5();
            }
            return hb.t(zzd, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"zzb"});
        }
        return (byte) 1;
    }
}
