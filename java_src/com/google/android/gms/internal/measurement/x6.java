package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class x6 extends hb implements jc {
    private static final x6 zzj;
    private int zzb;
    private long zzf;
    private float zzg;
    private double zzh;
    private String zzd = "";
    private String zze = "";
    private nb zzi = hb.y();

    static {
        x6 x6Var = new x6();
        zzj = x6Var;
        hb.s(x6.class, x6Var);
    }

    private x6() {
    }

    public static w6 O() {
        return (w6) zzj.o();
    }

    private final void a0() {
        nb nbVar = this.zzi;
        if (!nbVar.zza()) {
            this.zzi = hb.z(nbVar);
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
                    return new w6(null);
                }
                return new x6();
            }
            return hb.t(zzj, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", x6.class});
        }
        return (byte) 1;
    }

    public final boolean C() {
        return (this.zzb & 1) != 0;
    }

    public final String D() {
        return this.zzd;
    }

    public final boolean E() {
        return (this.zzb & 2) != 0;
    }

    public final String F() {
        return this.zze;
    }

    public final boolean G() {
        return (this.zzb & 4) != 0;
    }

    public final long H() {
        return this.zzf;
    }

    public final boolean I() {
        return (this.zzb & 8) != 0;
    }

    public final float J() {
        return this.zzg;
    }

    public final boolean K() {
        return (this.zzb & 16) != 0;
    }

    public final double L() {
        return this.zzh;
    }

    public final List M() {
        return this.zzi;
    }

    public final int N() {
        return this.zzi.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void P(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzd = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void Q(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zze = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void R() {
        this.zzb &= -3;
        this.zze = zzj.zze;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void S(long j10) {
        this.zzb |= 4;
        this.zzf = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void T() {
        this.zzb &= -5;
        this.zzf = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void U(double d10) {
        this.zzb |= 16;
        this.zzh = d10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void V() {
        this.zzb &= -17;
        this.zzh = 0.0d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void W(x6 x6Var) {
        x6Var.getClass();
        a0();
        this.zzi.add(x6Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void X(Iterable iterable) {
        a0();
        v9.g(iterable, this.zzi);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void Y() {
        this.zzi = hb.y();
    }
}
