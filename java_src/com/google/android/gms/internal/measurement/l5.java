package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class l5 extends hb implements jc {
    private static final l5 zzu;
    private int zzb;
    private long zzd;
    private int zzf;
    private boolean zzk;
    private f5 zzp;
    private p5 zzq;
    private v5 zzr;
    private r5 zzs;
    private n5 zzt;
    private String zze = "";
    private nb zzg = hb.y();
    private nb zzh = hb.y();
    private nb zzi = hb.y();
    private String zzj = "";
    private nb zzl = hb.y();
    private nb zzm = hb.y();
    private String zzn = "";
    private String zzo = "";

    static {
        l5 l5Var = new l5();
        zzu = l5Var;
        hb.s(l5.class, l5Var);
    }

    private l5() {
    }

    public static k5 S() {
        return (k5) zzu.o();
    }

    public static l5 T() {
        return zzu;
    }

    @Override // com.google.android.gms.internal.measurement.hb
    public final Object B(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 == 5) {
                            return zzu;
                        }
                        throw null;
                    }
                    return new k5(null);
                }
                return new l5();
            }
            return hb.t(zzu, "\u0004\u0011\u0000\u0001\u0001\u0013\u0011\u0000\u0005\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b\n\u001b\u000bဈ\u0005\u000eဈ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011ဉ\t\u0012ဉ\n\u0013ဉ\u000b", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", t5.class, "zzh", j5.class, "zzi", c4.class, "zzj", "zzk", "zzl", d8.class, "zzm", h5.class, "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt"});
        }
        return (byte) 1;
    }

    public final boolean C() {
        return (this.zzb & 1) != 0;
    }

    public final long D() {
        return this.zzd;
    }

    public final boolean E() {
        return (this.zzb & 2) != 0;
    }

    public final String F() {
        return this.zze;
    }

    public final List G() {
        return this.zzg;
    }

    public final int H() {
        return this.zzh.size();
    }

    public final j5 I(int i10) {
        return (j5) this.zzh.get(i10);
    }

    public final List J() {
        return this.zzi;
    }

    public final List K() {
        return this.zzl;
    }

    public final int L() {
        return this.zzl.size();
    }

    public final List M() {
        return this.zzm;
    }

    public final String N() {
        return this.zzn;
    }

    public final boolean O() {
        return (this.zzb & 128) != 0;
    }

    public final f5 P() {
        f5 f5Var = this.zzp;
        if (f5Var == null) {
            return f5.I();
        }
        return f5Var;
    }

    public final boolean Q() {
        return (this.zzb & 512) != 0;
    }

    public final v5 R() {
        v5 v5Var = this.zzr;
        if (v5Var == null) {
            return v5.G();
        }
        return v5Var;
    }

    public final /* synthetic */ void U(int i10, j5 j5Var) {
        j5Var.getClass();
        nb nbVar = this.zzh;
        if (!nbVar.zza()) {
            this.zzh = hb.z(nbVar);
        }
        this.zzh.set(i10, j5Var);
    }

    public final /* synthetic */ void V() {
        this.zzi = hb.y();
    }

    public final /* synthetic */ void W() {
        this.zzl = hb.y();
    }
}
