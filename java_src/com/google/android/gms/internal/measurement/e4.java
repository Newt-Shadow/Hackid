package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class e4 extends hb implements jc {
    private static final e4 zzl;
    private int zzb;
    private int zzd;
    private String zze = "";
    private nb zzf = hb.y();
    private boolean zzg;
    private k4 zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    static {
        e4 e4Var = new e4();
        zzl = e4Var;
        hb.s(e4.class, e4Var);
    }

    private e4() {
    }

    public static d4 O() {
        return (d4) zzl.o();
    }

    @Override // com.google.android.gms.internal.measurement.hb
    public final Object B(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 == 5) {
                            return zzl;
                        }
                        throw null;
                    }
                    return new d4(null);
                }
                return new e4();
            }
            return hb.t(zzl, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zzb", "zzd", "zze", "zzf", g4.class, "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        return (byte) 1;
    }

    public final boolean C() {
        return (this.zzb & 1) != 0;
    }

    public final int D() {
        return this.zzd;
    }

    public final String E() {
        return this.zze;
    }

    public final List F() {
        return this.zzf;
    }

    public final int G() {
        return this.zzf.size();
    }

    public final g4 H(int i10) {
        return (g4) this.zzf.get(i10);
    }

    public final boolean I() {
        return (this.zzb & 8) != 0;
    }

    public final k4 J() {
        k4 k4Var = this.zzh;
        if (k4Var == null) {
            return k4.L();
        }
        return k4Var;
    }

    public final boolean K() {
        return this.zzi;
    }

    public final boolean L() {
        return this.zzj;
    }

    public final boolean M() {
        return (this.zzb & 64) != 0;
    }

    public final boolean N() {
        return this.zzk;
    }

    public final /* synthetic */ void P(String str) {
        this.zzb |= 2;
        this.zze = str;
    }

    public final /* synthetic */ void Q(int i10, g4 g4Var) {
        g4Var.getClass();
        nb nbVar = this.zzf;
        if (!nbVar.zza()) {
            this.zzf = hb.z(nbVar);
        }
        this.zzf.set(i10, g4Var);
    }
}
