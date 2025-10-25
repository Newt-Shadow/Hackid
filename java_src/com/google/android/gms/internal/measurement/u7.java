package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class u7 extends hb implements jc {
    private static final u7 zzg;
    private int zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        u7 u7Var = new u7();
        zzg = u7Var;
        hb.s(u7.class, u7Var);
    }

    private u7() {
    }

    public static n7 D() {
        return (n7) zzg.o();
    }

    public static u7 E() {
        return zzg;
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
                            return zzg;
                        }
                        throw null;
                    }
                    return new n7(null);
                }
                return new u7();
            }
            return hb.t(zzg, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003᠌\u0002", new Object[]{"zzb", "zzd", s7.f6769a, "zze", o7.f6604a, "zzf", q7.f6708a});
        }
        return (byte) 1;
    }

    public final p7 C() {
        p7 a10 = p7.a(this.zze);
        return a10 == null ? p7.CLIENT_UPLOAD_ELIGIBILITY_UNKNOWN : a10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void F(p7 p7Var) {
        this.zze = p7Var.zza();
        this.zzb |= 2;
    }

    public final int H() {
        int a10 = t7.a(this.zzd);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }

    public final int I() {
        int a10 = r7.a(this.zzf);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void J(int i10) {
        this.zzd = i10 - 1;
        this.zzb |= 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void K(int i10) {
        this.zzf = i10 - 1;
        this.zzb |= 4;
    }
}
