package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class d7 extends hb implements jc {
    private static final d7 zzh;
    private int zzb;
    private nb zzd = hb.y();
    private String zze = "";
    private String zzf = "";
    private int zzg;

    static {
        d7 d7Var = new d7();
        zzh = d7Var;
        hb.s(d7.class, d7Var);
    }

    private d7() {
    }

    public static a7 J() {
        return (a7) zzh.o();
    }

    public static a7 K(d7 d7Var) {
        fb o10 = zzh.o();
        o10.q(d7Var);
        return (a7) o10;
    }

    private final void S() {
        nb nbVar = this.zzd;
        if (!nbVar.zza()) {
            this.zzd = hb.z(nbVar);
        }
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
                            return zzh;
                        }
                        throw null;
                    }
                    return new a7(null);
                }
                return new d7();
            }
            return hb.t(zzh, "\u0004\u0004\u0000\u0001\u0001\t\u0004\u0000\u0001\u0000\u0001\u001b\u0007ဈ\u0000\bဈ\u0001\t᠌\u0002", new Object[]{"zzb", "zzd", f7.class, "zze", "zzf", "zzg", c7.f6338a});
        }
        return (byte) 1;
    }

    public final List C() {
        return this.zzd;
    }

    public final int D() {
        return this.zzd.size();
    }

    public final f7 E(int i10) {
        return (f7) this.zzd.get(i10);
    }

    public final boolean F() {
        return (this.zzb & 1) != 0;
    }

    public final String G() {
        return this.zze;
    }

    public final boolean H() {
        return (this.zzb & 2) != 0;
    }

    public final String I() {
        return this.zzf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void L(int i10, f7 f7Var) {
        f7Var.getClass();
        S();
        this.zzd.set(i10, f7Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void M(f7 f7Var) {
        f7Var.getClass();
        S();
        this.zzd.add(f7Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void N(Iterable iterable) {
        S();
        v9.g(iterable, this.zzd);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void O() {
        this.zzd = hb.y();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void P(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zze = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void Q(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zzf = str;
    }
}
