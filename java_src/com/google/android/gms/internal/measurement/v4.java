package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class v4 extends hb implements jc {
    private static final v4 zzf;
    private int zzb;
    private int zzd;
    private int zze;

    static {
        v4 v4Var = new v4();
        zzf = v4Var;
        hb.s(v4.class, v4Var);
    }

    private v4() {
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
                            return zzf;
                        }
                        throw null;
                    }
                    return new u4(null);
                }
                return new v4();
            }
            kb kbVar = y4.f6892a;
            return hb.t(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"zzb", "zzd", kbVar, "zze", kbVar});
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
        int a10 = a5.a(this.zze);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }
}
