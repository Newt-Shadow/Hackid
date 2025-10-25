package com.google.android.gms.internal.measurement;

import java.util.Map;
/* loaded from: classes.dex */
public final class b6 extends hb implements jc {
    private static final b6 zzn;
    private int zzb;
    private long zzg;
    private long zzk;
    private cc zzl = cc.a();
    private cc zzm = cc.a();
    private String zzd = "";
    private String zze = "";
    private String zzf = "";
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";

    static {
        b6 b6Var = new b6();
        zzn = b6Var;
        hb.s(b6.class, b6Var);
    }

    private b6() {
    }

    public static x5 c0() {
        return (x5) zzn.o();
    }

    public static b6 d0() {
        return zzn;
    }

    @Override // com.google.android.gms.internal.measurement.hb
    public final Object B(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 == 5) {
                            return zzn;
                        }
                        throw null;
                    }
                    return new x5(null);
                }
                return new b6();
            }
            return hb.t(zzn, "\u0004\n\u0000\u0001\u0001\n\n\u0002\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006\bဂ\u0007\t2\n2", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", y5.f6893a, "zzm", z5.f6913a});
        }
        return (byte) 1;
    }

    public final /* synthetic */ void C(String str) {
        this.zzb |= 16;
        this.zzh = str;
    }

    public final /* synthetic */ void D() {
        this.zzb &= -17;
        this.zzh = zzn.zzh;
    }

    public final /* synthetic */ void E(String str) {
        this.zzb |= 32;
        this.zzi = str;
    }

    public final /* synthetic */ void F() {
        this.zzb &= -33;
        this.zzi = zzn.zzi;
    }

    public final /* synthetic */ void G(String str) {
        this.zzb |= 64;
        this.zzj = str;
    }

    public final /* synthetic */ void H() {
        this.zzb &= -65;
        this.zzj = zzn.zzj;
    }

    public final /* synthetic */ void I(long j10) {
        this.zzb |= 128;
        this.zzk = j10;
    }

    public final /* synthetic */ Map J() {
        if (!this.zzl.f()) {
            this.zzl = this.zzl.c();
        }
        return this.zzl;
    }

    public final /* synthetic */ Map K() {
        if (!this.zzm.f()) {
            this.zzm = this.zzm.c();
        }
        return this.zzm;
    }

    public final boolean M() {
        return (this.zzb & 1) != 0;
    }

    public final String N() {
        return this.zzd;
    }

    public final boolean O() {
        return (this.zzb & 2) != 0;
    }

    public final String P() {
        return this.zze;
    }

    public final boolean Q() {
        return (this.zzb & 4) != 0;
    }

    public final String R() {
        return this.zzf;
    }

    public final boolean S() {
        return (this.zzb & 8) != 0;
    }

    public final long T() {
        return this.zzg;
    }

    public final boolean U() {
        return (this.zzb & 16) != 0;
    }

    public final String V() {
        return this.zzh;
    }

    public final boolean W() {
        return (this.zzb & 32) != 0;
    }

    public final String X() {
        return this.zzi;
    }

    public final boolean Y() {
        return (this.zzb & 64) != 0;
    }

    public final String Z() {
        return this.zzj;
    }

    public final boolean a0() {
        return (this.zzb & 128) != 0;
    }

    public final long b0() {
        return this.zzk;
    }

    public final /* synthetic */ void e0(String str) {
        this.zzb |= 1;
        this.zzd = str;
    }

    public final /* synthetic */ void f0() {
        this.zzb &= -2;
        this.zzd = zzn.zzd;
    }

    public final /* synthetic */ void g0(String str) {
        this.zzb |= 2;
        this.zze = str;
    }

    public final /* synthetic */ void h0() {
        this.zzb &= -3;
        this.zze = zzn.zze;
    }

    public final /* synthetic */ void i0(String str) {
        this.zzb |= 4;
        this.zzf = str;
    }

    public final /* synthetic */ void j0() {
        this.zzb &= -5;
        this.zzf = zzn.zzf;
    }

    public final /* synthetic */ void k0(long j10) {
        this.zzb |= 8;
        this.zzg = j10;
    }
}
