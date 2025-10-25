package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class c4 extends hb implements jc {
    private static final c4 zzi;
    private int zzb;
    private int zzd;
    private nb zze = hb.y();
    private nb zzf = hb.y();
    private boolean zzg;
    private boolean zzh;

    static {
        c4 c4Var = new c4();
        zzi = c4Var;
        hb.s(c4.class, c4Var);
    }

    private c4() {
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
                            return zzi;
                        }
                        throw null;
                    }
                    return new b4(null);
                }
                return new c4();
            }
            return hb.t(zzi, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zzb", "zzd", "zze", m4.class, "zzf", e4.class, "zzg", "zzh"});
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

    public final m4 G(int i10) {
        return (m4) this.zze.get(i10);
    }

    public final List H() {
        return this.zzf;
    }

    public final int I() {
        return this.zzf.size();
    }

    public final e4 J(int i10) {
        return (e4) this.zzf.get(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void K(int i10, m4 m4Var) {
        m4Var.getClass();
        nb nbVar = this.zze;
        if (!nbVar.zza()) {
            this.zze = hb.z(nbVar);
        }
        this.zze.set(i10, m4Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void L(int i10, e4 e4Var) {
        e4Var.getClass();
        nb nbVar = this.zzf;
        if (!nbVar.zza()) {
            this.zzf = hb.z(nbVar);
        }
        this.zzf.set(i10, e4Var);
    }
}
