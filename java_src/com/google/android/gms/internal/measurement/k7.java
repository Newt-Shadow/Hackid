package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class k7 extends hb implements jc {
    private static final k7 zzg;
    private mb zzb = hb.w();
    private mb zzd = hb.w();
    private nb zze = hb.y();
    private nb zzf = hb.y();

    static {
        k7 k7Var = new k7();
        zzg = k7Var;
        hb.s(k7.class, k7Var);
    }

    private k7() {
    }

    public static j7 K() {
        return (j7) zzg.o();
    }

    public static k7 L() {
        return zzg;
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
                    return new j7(null);
                }
                return new k7();
            }
            return hb.t(zzg, "\u0004\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zzb", "zzd", "zze", r6.class, "zzf", m7.class});
        }
        return (byte) 1;
    }

    public final List C() {
        return this.zzb;
    }

    public final int D() {
        return this.zzb.size();
    }

    public final List E() {
        return this.zzd;
    }

    public final int F() {
        return this.zzd.size();
    }

    public final List G() {
        return this.zze;
    }

    public final int H() {
        return this.zze.size();
    }

    public final List I() {
        return this.zzf;
    }

    public final int J() {
        return this.zzf.size();
    }

    public final /* synthetic */ void M(Iterable iterable) {
        mb mbVar = this.zzb;
        if (!mbVar.zza()) {
            this.zzb = hb.x(mbVar);
        }
        v9.g(iterable, this.zzb);
    }

    public final /* synthetic */ void N() {
        this.zzb = hb.w();
    }

    public final /* synthetic */ void O(Iterable iterable) {
        mb mbVar = this.zzd;
        if (!mbVar.zza()) {
            this.zzd = hb.x(mbVar);
        }
        v9.g(iterable, this.zzd);
    }

    public final /* synthetic */ void P() {
        this.zzd = hb.w();
    }

    public final /* synthetic */ void Q(Iterable iterable) {
        nb nbVar = this.zze;
        if (!nbVar.zza()) {
            this.zze = hb.z(nbVar);
        }
        v9.g(iterable, this.zze);
    }

    public final /* synthetic */ void R() {
        this.zze = hb.y();
    }

    public final /* synthetic */ void S(Iterable iterable) {
        nb nbVar = this.zzf;
        if (!nbVar.zza()) {
            this.zzf = hb.z(nbVar);
        }
        v9.g(iterable, this.zzf);
    }

    public final /* synthetic */ void T() {
        this.zzf = hb.y();
    }
}
