package com.google.android.gms.internal.measurement;

import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.util.List;
/* loaded from: classes.dex */
public final class f7 extends hb implements jc {
    private static final f7 zzat;
    private int zzA;
    private boolean zzD;
    private int zzG;
    private int zzH;
    private int zzI;
    private long zzK;
    private long zzL;
    private int zzO;
    private i7 zzQ;
    private long zzS;
    private long zzT;
    private int zzW;
    private boolean zzX;
    private boolean zzZ;
    private z6 zzaa;
    private long zzae;
    private boolean zzaf;
    private boolean zzah;
    private int zzaj;
    private f6 zzal;
    private int zzam;
    private b6 zzan;
    private u7 zzap;
    private long zzaq;
    private p6 zzas;
    private int zzb;
    private int zzd;
    private int zze;
    private long zzh;
    private long zzi;
    private long zzj;
    private long zzk;
    private long zzl;
    private int zzq;
    private long zzu;
    private long zzv;
    private boolean zzx;
    private long zzz;
    private nb zzf = hb.y();
    private nb zzg = hb.y();
    private String zzm = "";
    private String zzn = "";
    private String zzo = "";
    private String zzp = "";
    private String zzr = "";
    private String zzs = "";
    private String zzt = "";
    private String zzw = "";
    private String zzy = "";
    private String zzB = "";
    private String zzC = "";
    private nb zzE = hb.y();
    private String zzF = "";
    private String zzJ = "";
    private String zzM = "";
    private String zzN = "";
    private String zzP = "";
    private lb zzR = hb.v();
    private String zzU = "";
    private String zzV = "";
    private String zzY = "";
    private String zzab = "";
    private nb zzac = hb.y();
    private String zzad = "";
    private String zzag = "";
    private String zzai = "";
    private String zzak = "";
    private String zzao = "";
    private String zzar = "";

    static {
        f7 f7Var = new f7();
        zzat = f7Var;
        hb.s(f7.class, f7Var);
    }

    private f7() {
    }

    public static e7 h0() {
        return (e7) zzat.o();
    }

    public static e7 i0(f7 f7Var) {
        fb o10 = zzat.o();
        o10.q(f7Var);
        return (e7) o10;
    }

    private final void j2() {
        nb nbVar = this.zzf;
        if (!nbVar.zza()) {
            this.zzf = hb.z(nbVar);
        }
    }

    private final void k2() {
        nb nbVar = this.zzg;
        if (!nbVar.zza()) {
            this.zzg = hb.z(nbVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void A0(long j10) {
        this.zzb |= 16;
        this.zzk = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void A1(f6 f6Var) {
        f6Var.getClass();
        this.zzal = f6Var;
        this.zzd |= 4194304;
    }

    public final String A2() {
        return this.zzm;
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
                            return zzat;
                        }
                        throw null;
                    }
                    return new e7(null);
                }
                return new f7();
            }
            return hb.t(zzat, "\u0004C\u0000\u0002\u0001VC\u0000\u0005\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5᠌(7ဇ)9ဈ*:ဇ+;ဉ,?ဈ-@\u001aAဈ.Cဂ/Dဇ0Gဈ1Hဇ2Iဈ3Jင4Kဈ5Lဉ6Mင7Oဉ8Pဈ9Qဉ:Rဂ;Sဈ<Vဉ=", new Object[]{"zzb", "zzd", "zze", "zzf", t6.class, "zzg", w7.class, "zzh", "zzi", "zzj", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzk", "zzD", "zzE", h6.class, "zzF", "zzG", "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzU", "zzV", "zzW", w5.f6867a, "zzX", "zzY", "zzZ", "zzaa", "zzab", "zzac", "zzad", "zzae", "zzaf", "zzag", "zzah", "zzai", "zzaj", "zzak", "zzal", "zzam", "zzan", "zzao", "zzap", "zzaq", "zzar", "zzas"});
        }
        return (byte) 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void B0() {
        this.zzb &= -17;
        this.zzk = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void B1(int i10) {
        this.zzd |= 8388608;
        this.zzam = i10;
    }

    public final String B2() {
        return this.zzn;
    }

    public final String C() {
        return this.zzs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void C0(long j10) {
        this.zzb |= 32;
        this.zzl = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void C1(b6 b6Var) {
        b6Var.getClass();
        this.zzan = b6Var;
        this.zzd |= 16777216;
    }

    public final String C2() {
        return this.zzo;
    }

    public final String D() {
        return this.zzt;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void D0() {
        this.zzb &= -33;
        this.zzl = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void D1(u7 u7Var) {
        this.zzap = u7Var;
        this.zzd |= 67108864;
    }

    public final String D2() {
        return this.zzp;
    }

    public final boolean E() {
        return (this.zzb & 16384) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void E0(String str) {
        this.zzb |= 64;
        this.zzm = "android";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void E1(long j10) {
        this.zzd |= 134217728;
        this.zzaq = j10;
    }

    public final boolean E2() {
        return (this.zzb & 1024) != 0;
    }

    public final long F() {
        return this.zzu;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void F0(String str) {
        str.getClass();
        this.zzb |= 128;
        this.zzn = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void F1(String str) {
        this.zzd |= 268435456;
        this.zzar = "";
    }

    public final int F2() {
        return this.zzq;
    }

    public final boolean G() {
        return (this.zzb & 32768) != 0;
    }

    public final boolean G0() {
        return (this.zzd & 2) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void G1(p6 p6Var) {
        p6Var.getClass();
        this.zzas = p6Var;
        this.zzd |= 536870912;
    }

    public final String G2() {
        return this.zzr;
    }

    public final long H() {
        return this.zzv;
    }

    public final int H0() {
        return this.zzO;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void H1(String str) {
        str.getClass();
        this.zzb |= 256;
        this.zzo = str;
    }

    public final String I() {
        return this.zzw;
    }

    public final boolean I0() {
        return (this.zzd & 16) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void I1() {
        this.zzb &= -257;
        this.zzo = zzat.zzo;
    }

    public final boolean J() {
        return (this.zzb & 131072) != 0;
    }

    public final long J0() {
        return this.zzS;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void J1(String str) {
        str.getClass();
        this.zzb |= 512;
        this.zzp = str;
    }

    public final boolean K() {
        return this.zzx;
    }

    public final boolean K0() {
        return (this.zzd & 128) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void K1(int i10) {
        this.zzb |= 1024;
        this.zzq = i10;
    }

    public final String L() {
        return this.zzy;
    }

    public final String L0() {
        return this.zzV;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void L1(String str) {
        str.getClass();
        this.zzb |= 2048;
        this.zzr = str;
    }

    public final boolean M() {
        return (this.zzb & 524288) != 0;
    }

    public final boolean M0() {
        return (this.zzd & 8192) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void M1(String str) {
        str.getClass();
        this.zzb |= Base64Utils.IO_BUFFER_SIZE;
        this.zzs = str;
    }

    public final long N() {
        return this.zzz;
    }

    public final String N0() {
        return this.zzab;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void N1(String str) {
        str.getClass();
        this.zzb |= 8192;
        this.zzt = str;
    }

    public final boolean O() {
        return (this.zzb & 1048576) != 0;
    }

    public final boolean O0() {
        return (this.zzd & 32768) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void O1(long j10) {
        this.zzb |= 16384;
        this.zzu = j10;
    }

    public final int P() {
        return this.zzA;
    }

    public final long P0() {
        return this.zzae;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void P1(long j10) {
        this.zzb |= 32768;
        this.zzv = 133005L;
    }

    public final String Q() {
        return this.zzB;
    }

    public final boolean Q0() {
        return this.zzaf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void Q1(String str) {
        str.getClass();
        this.zzb |= 65536;
        this.zzw = str;
    }

    public final String R() {
        return this.zzC;
    }

    public final boolean R0() {
        return (this.zzd & 131072) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void R1() {
        this.zzb &= -65537;
        this.zzw = zzat.zzw;
    }

    public final boolean S() {
        return (this.zzb & 8388608) != 0;
    }

    public final String S0() {
        return this.zzag;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void S1(boolean z10) {
        this.zzb |= 131072;
        this.zzx = z10;
    }

    public final boolean T() {
        return this.zzD;
    }

    public final boolean T0() {
        return (this.zzd & 262144) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void T1() {
        this.zzb &= -131073;
        this.zzx = false;
    }

    public final List U() {
        return this.zzE;
    }

    public final boolean U0() {
        return this.zzah;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void U1(String str) {
        str.getClass();
        this.zzb |= 262144;
        this.zzy = str;
    }

    public final String V() {
        return this.zzF;
    }

    public final boolean V0() {
        return (this.zzd & 524288) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void V1() {
        this.zzb &= -262145;
        this.zzy = zzat.zzy;
    }

    public final boolean W() {
        return (this.zzb & 33554432) != 0;
    }

    public final String W0() {
        return this.zzai;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void W1(long j10) {
        this.zzb |= 524288;
        this.zzz = j10;
    }

    public final int X() {
        return this.zzG;
    }

    public final int X0() {
        return this.zzaj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void X1(int i10) {
        this.zzb |= 1048576;
        this.zzA = i10;
    }

    public final boolean Y() {
        return (this.zzb & 536870912) != 0;
    }

    public final boolean Y0() {
        return (this.zzd & 4194304) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void Y1(String str) {
        this.zzb |= 2097152;
        this.zzB = str;
    }

    public final long Z() {
        return this.zzK;
    }

    public final f6 Z0() {
        f6 f6Var = this.zzal;
        if (f6Var == null) {
            return f6.K();
        }
        return f6Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void Z1() {
        this.zzb &= -2097153;
        this.zzB = zzat.zzB;
    }

    public final boolean a0() {
        return (this.zzb & Integer.MIN_VALUE) != 0;
    }

    public final boolean a1() {
        return (this.zzd & 8388608) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a2(String str) {
        str.getClass();
        this.zzb |= 4194304;
        this.zzC = str;
    }

    public final String b0() {
        return this.zzM;
    }

    public final int b1() {
        return this.zzam;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b2(boolean z10) {
        this.zzb |= 8388608;
        this.zzD = z10;
    }

    public final boolean c0() {
        return (this.zzb & 1) != 0;
    }

    public final boolean c1() {
        return (this.zzd & 16777216) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void c2(Iterable iterable) {
        nb nbVar = this.zzE;
        if (!nbVar.zza()) {
            this.zzE = hb.z(nbVar);
        }
        v9.g(iterable, this.zzE);
    }

    public final boolean d0() {
        return (this.zzd & 134217728) != 0;
    }

    public final b6 d1() {
        b6 b6Var = this.zzan;
        if (b6Var == null) {
            return b6.d0();
        }
        return b6Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void d2() {
        this.zzE = hb.y();
    }

    public final long e0() {
        return this.zzaq;
    }

    public final boolean e1() {
        return (this.zzd & 67108864) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void e2(String str) {
        str.getClass();
        this.zzb |= 16777216;
        this.zzF = str;
    }

    public final boolean f0() {
        return (this.zzd & 536870912) != 0;
    }

    public final u7 f1() {
        u7 u7Var = this.zzap;
        if (u7Var == null) {
            return u7.E();
        }
        return u7Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void f2(int i10) {
        this.zzb |= 33554432;
        this.zzG = i10;
    }

    public final p6 g0() {
        p6 p6Var = this.zzas;
        if (p6Var == null) {
            return p6.E();
        }
        return p6Var;
    }

    public final int g1() {
        return this.zze;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void g2() {
        this.zzb &= -268435457;
        this.zzJ = zzat.zzJ;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void h1(long j10) {
        this.zzb |= 536870912;
        this.zzK = j10;
    }

    public final List h2() {
        return this.zzf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void i1(String str) {
        str.getClass();
        this.zzb |= Integer.MIN_VALUE;
        this.zzM = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void j0(int i10) {
        this.zzb |= 1;
        this.zze = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void j1() {
        this.zzb &= Integer.MAX_VALUE;
        this.zzM = zzat.zzM;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void k0(int i10, t6 t6Var) {
        t6Var.getClass();
        j2();
        this.zzf.set(i10, t6Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void k1(int i10) {
        this.zzd |= 2;
        this.zzO = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void l0(t6 t6Var) {
        t6Var.getClass();
        j2();
        this.zzf.add(t6Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void l1(i7 i7Var) {
        i7Var.getClass();
        this.zzQ = i7Var;
        this.zzd |= 8;
    }

    public final int l2() {
        return this.zzf.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void m0(Iterable iterable) {
        j2();
        v9.g(iterable, this.zzf);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void m1(Iterable iterable) {
        lb lbVar = this.zzR;
        if (!lbVar.zza()) {
            int size = lbVar.size();
            this.zzR = lbVar.H(size + size);
        }
        v9.g(iterable, this.zzR);
    }

    public final t6 m2(int i10) {
        return (t6) this.zzf.get(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void n0() {
        this.zzf = hb.y();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void n1(long j10) {
        this.zzd |= 16;
        this.zzS = j10;
    }

    public final List n2() {
        return this.zzg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void o1(long j10) {
        this.zzd |= 32;
        this.zzT = j10;
    }

    public final int o2() {
        return this.zzg.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void p0(int i10) {
        j2();
        this.zzf.remove(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void p1(String str) {
        this.zzd |= 128;
        this.zzV = str;
    }

    public final w7 p2(int i10) {
        return (w7) this.zzg.get(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void q1(String str) {
        str.getClass();
        this.zzd |= 8192;
        this.zzab = str;
    }

    public final boolean q2() {
        return (this.zzb & 2) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void r0(int i10, w7 w7Var) {
        w7Var.getClass();
        k2();
        this.zzg.set(i10, w7Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void r1() {
        this.zzd &= -8193;
        this.zzab = zzat.zzab;
    }

    public final long r2() {
        return this.zzh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void s0(w7 w7Var) {
        w7Var.getClass();
        k2();
        this.zzg.add(w7Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void s1(Iterable iterable) {
        nb nbVar = this.zzac;
        if (!nbVar.zza()) {
            this.zzac = hb.z(nbVar);
        }
        v9.g(iterable, this.zzac);
    }

    public final boolean s2() {
        return (this.zzb & 4) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void t1(String str) {
        str.getClass();
        this.zzd |= 16384;
        this.zzad = str;
    }

    public final long t2() {
        return this.zzi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void u0(Iterable iterable) {
        k2();
        v9.g(iterable, this.zzg);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void u1(long j10) {
        this.zzd |= 32768;
        this.zzae = j10;
    }

    public final boolean u2() {
        return (this.zzb & 8) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void v0(int i10) {
        k2();
        this.zzg.remove(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void v1(boolean z10) {
        this.zzd |= 65536;
        this.zzaf = z10;
    }

    public final long v2() {
        return this.zzj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void w0(long j10) {
        this.zzb |= 2;
        this.zzh = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void w1(String str) {
        this.zzd |= 131072;
        this.zzag = str;
    }

    public final boolean w2() {
        return (this.zzb & 16) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void x0() {
        this.zzb &= -3;
        this.zzh = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void x1(boolean z10) {
        this.zzd |= 262144;
        this.zzah = z10;
    }

    public final long x2() {
        return this.zzk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void y0(long j10) {
        this.zzb |= 4;
        this.zzi = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void y1(String str) {
        str.getClass();
        this.zzd |= 524288;
        this.zzai = str;
    }

    public final boolean y2() {
        return (this.zzb & 32) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void z0(long j10) {
        this.zzb |= 8;
        this.zzj = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void z1(int i10) {
        this.zzd |= 1048576;
        this.zzaj = i10;
    }

    public final long z2() {
        return this.zzl;
    }
}
