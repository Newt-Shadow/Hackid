package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class t6 extends hb implements jc {
    private static final t6 zzj;
    private int zzb;
    private nb zzd = hb.y();
    private String zze = "";
    private long zzf;
    private long zzg;
    private int zzh;
    private long zzi;

    static {
        t6 t6Var = new t6();
        zzj = t6Var;
        hb.s(t6.class, t6Var);
    }

    private t6() {
    }

    public static s6 M() {
        return (s6) zzj.o();
    }

    private final void X() {
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
                            return zzj;
                        }
                        throw null;
                    }
                    return new s6(null);
                }
                return new t6();
            }
            return hb.t(zzj, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003\u0006ဂ\u0004", new Object[]{"zzb", "zzd", x6.class, "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }

    public final List C() {
        return this.zzd;
    }

    public final int D() {
        return this.zzd.size();
    }

    public final x6 E(int i10) {
        return (x6) this.zzd.get(i10);
    }

    public final String F() {
        return this.zze;
    }

    public final boolean G() {
        return (this.zzb & 2) != 0;
    }

    public final long H() {
        return this.zzf;
    }

    public final boolean I() {
        return (this.zzb & 4) != 0;
    }

    public final long J() {
        return this.zzg;
    }

    public final boolean K() {
        return (this.zzb & 8) != 0;
    }

    public final int L() {
        return this.zzh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void N(int i10, x6 x6Var) {
        x6Var.getClass();
        X();
        this.zzd.set(i10, x6Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void O(x6 x6Var) {
        x6Var.getClass();
        X();
        this.zzd.add(x6Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void P(Iterable iterable) {
        X();
        v9.g(iterable, this.zzd);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void Q() {
        this.zzd = hb.y();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void R(int i10) {
        X();
        this.zzd.remove(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void S(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zze = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void T(long j10) {
        this.zzb |= 2;
        this.zzf = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void U(long j10) {
        this.zzb |= 4;
        this.zzg = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void V(long j10) {
        this.zzb |= 16;
        this.zzi = j10;
    }
}
