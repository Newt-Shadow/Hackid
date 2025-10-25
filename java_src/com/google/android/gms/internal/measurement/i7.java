package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class i7 extends hb implements jc {
    private static final i7 zzf;
    private int zzb;
    private int zzd = 1;
    private nb zze = hb.y();

    static {
        i7 i7Var = new i7();
        zzf = i7Var;
        hb.s(i7.class, i7Var);
    }

    private i7() {
    }

    public static g7 C() {
        return (g7) zzf.o();
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
                    return new g7(null);
                }
                return new i7();
            }
            return hb.t(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001᠌\u0000\u0002\u001b", new Object[]{"zzb", "zzd", h7.f6421a, "zze", v6.class});
        }
        return (byte) 1;
    }

    public final /* synthetic */ void D(v6 v6Var) {
        v6Var.getClass();
        nb nbVar = this.zze;
        if (!nbVar.zza()) {
            this.zze = hb.z(nbVar);
        }
        this.zze.add(v6Var);
    }
}
