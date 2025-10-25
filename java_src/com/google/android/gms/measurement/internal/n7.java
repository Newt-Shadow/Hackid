package com.google.android.gms.measurement.internal;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.measurement.ag;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
final class n7 implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ g0 f7795a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f7796b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ y7 f7797c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n7(y7 y7Var, g0 g0Var, String str) {
        this.f7795a = g0Var;
        this.f7796b = str;
        Objects.requireNonNull(y7Var);
        this.f7797c = y7Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.gms.measurement.internal.g0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.google.android.gms.measurement.internal.vc] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        byte[] bArr;
        pd pdVar;
        wd wdVar;
        pd pdVar2;
        pd pdVar3;
        v5 v5Var;
        com.google.android.gms.internal.measurement.a7 a7Var;
        Bundle bundle;
        String str;
        w6 w6Var;
        com.google.android.gms.internal.measurement.e7 e7Var;
        String str2;
        boolean z10;
        Object obj;
        c0 a10;
        long j10;
        u F0;
        y7 y7Var = this.f7797c;
        y7Var.j1().E();
        ba J0 = y7Var.j1().J0();
        J0.h();
        w6 w6Var2 = J0.f8322a;
        w6.q();
        ?? r42 = this.f7795a;
        n5.q.k(r42);
        String str3 = this.f7796b;
        n5.q.e(str3);
        String str4 = r42.f7551a;
        if (!"_iap".equals(str4) && !"_iapx".equals(str4)) {
            J0.f8322a.a().v().c("Generating a payload for this event is not available. package_name, event_name", str3, str4);
            return null;
        }
        pd pdVar4 = J0.f8149b;
        com.google.android.gms.internal.measurement.a7 J = com.google.android.gms.internal.measurement.d7.J();
        pdVar4.F0().r0();
        try {
            v5 J02 = pdVar4.F0().J0(str3);
            if (J02 == null) {
                J0.f8322a.a().v().b("Log and bundle not available. package_name", str3);
                bArr = new byte[0];
            } else if (!J02.d()) {
                J0.f8322a.a().v().b("Log and bundle disabled. package_name", str3);
                bArr = new byte[0];
            } else {
                com.google.android.gms.internal.measurement.e7 h02 = com.google.android.gms.internal.measurement.f7.h0();
                h02.T(1);
                h02.v("android");
                if (!TextUtils.isEmpty(J02.o0())) {
                    h02.E(J02.o0());
                }
                if (!TextUtils.isEmpty(J02.H0())) {
                    h02.C((String) n5.q.k(J02.H0()));
                }
                if (!TextUtils.isEmpty(J02.D0())) {
                    h02.F((String) n5.q.k(J02.D0()));
                }
                if (J02.F0() != -2147483648L) {
                    h02.x0((int) J02.F0());
                }
                h02.G(J02.J0());
                h02.F0(J02.b());
                String r02 = J02.r0();
                if (!TextUtils.isEmpty(r02)) {
                    h02.p0(r02);
                }
                h02.M0(J02.X());
                d8 g10 = J0.f8149b.g(str3);
                h02.R(J02.L0());
                if (w6Var2.g() && J0.f8322a.w().k(h02.D()) && g10.o(i6.s.AD_STORAGE) && !TextUtils.isEmpty(null)) {
                    h02.A0(null);
                }
                h02.H0(g10.k());
                if (g10.o(i6.s.AD_STORAGE) && J02.P()) {
                    Pair m10 = pdVar4.L0().m(J02.o0(), g10);
                    if (J02.P() && !TextUtils.isEmpty((CharSequence) m10.first)) {
                        try {
                            h02.J(ba.m((String) m10.first, Long.toString(r42.f7554d)));
                            Object obj2 = m10.second;
                            if (obj2 != null) {
                                h02.M(((Boolean) obj2).booleanValue());
                            }
                        } catch (SecurityException e10) {
                            J0.f8322a.a().v().b("Resettable device id encryption failed", e10.getMessage());
                            bArr = new byte[0];
                            pdVar = J0.f8149b;
                            F0 = pdVar.F0();
                            F0.t0();
                            return bArr;
                        }
                    }
                }
                w6 w6Var3 = J0.f8322a;
                w6Var3.K().l();
                h02.y(Build.MODEL);
                w6Var3.K().l();
                h02.x(Build.VERSION.RELEASE);
                h02.B((int) w6Var3.K().o());
                h02.A(w6Var3.K().p());
                try {
                    try {
                        if (g10.o(i6.s.ANALYTICS_STORAGE) && J02.p0() != null) {
                            h02.P(ba.m((String) n5.q.k(J02.p0()), Long.toString(r42.f7554d)));
                        }
                        if (!TextUtils.isEmpty(J02.x0())) {
                            h02.v0((String) n5.q.k(J02.x0()));
                        }
                        String o02 = J02.o0();
                        pd pdVar5 = J0.f8149b;
                        List C0 = pdVar5.F0().C0(o02);
                        Iterator it = C0.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                wdVar = (wd) it.next();
                                if ("_lte".equals(wdVar.f8226c)) {
                                    break;
                                }
                            } else {
                                wdVar = null;
                                break;
                            }
                        }
                        if (wdVar == null || wdVar.f8228e == null) {
                            wd wdVar2 = new wd(o02, "auto", "_lte", J0.f8322a.f().currentTimeMillis(), 0L);
                            C0.add(wdVar2);
                            pdVar5.F0().A0(wdVar2);
                        }
                        com.google.android.gms.internal.measurement.w7[] w7VarArr = new com.google.android.gms.internal.measurement.w7[C0.size()];
                        for (int i10 = 0; i10 < C0.size(); i10++) {
                            com.google.android.gms.internal.measurement.v7 N = com.google.android.gms.internal.measurement.w7.N();
                            N.u(((wd) C0.get(i10)).f8226c);
                            N.t(((wd) C0.get(i10)).f8227d);
                            pdVar5.K0().G(N, ((wd) C0.get(i10)).f8228e);
                            w7VarArr[i10] = (com.google.android.gms.internal.measurement.w7) N.p();
                        }
                        h02.d1(Arrays.asList(w7VarArr));
                        pd pdVar6 = J0.f8149b;
                        pdVar6.n(J02, h02);
                        pdVar6.o(J02, h02);
                        q5 a11 = q5.a(r42);
                        w6 w6Var4 = J0.f8322a;
                        yd C = w6Var4.C();
                        Bundle bundle2 = a11.f7922d;
                        C.w(bundle2, pdVar5.F0().G(str3));
                        w6Var4.C().u(a11, w6Var4.w().w(str3));
                        try {
                            bundle2.putLong("_c", 1L);
                            w6Var4.a().v().a("Marking in-app purchase as real-time");
                            bundle2.putLong("_r", 1L);
                            String str5 = r42.f7553c;
                            bundle2.putString("_o", str5);
                            if (w6Var4.C().P(h02.D(), J02.l0())) {
                                w6Var4.C().A(bundle2, "_dbg", 1L);
                                w6Var4.C().A(bundle2, "_r", 1L);
                            }
                            u F02 = pdVar5.F0();
                            String str6 = r42.f7551a;
                            c0 v02 = F02.v0(str3, str6);
                            if (v02 == null) {
                                bundle = bundle2;
                                str = str5;
                                w6Var = w6Var4;
                                e7Var = h02;
                                pdVar3 = pdVar5;
                                v5Var = J02;
                                a7Var = J;
                                pdVar2 = pdVar6;
                                str2 = str3;
                                z10 = true;
                                obj = null;
                                a10 = new c0(str3, str6, 0L, 0L, 0L, r42.f7554d, 0L, null, null, null, null);
                                j10 = 0;
                            } else {
                                pdVar2 = pdVar6;
                                pdVar3 = pdVar5;
                                v5Var = J02;
                                a7Var = J;
                                bundle = bundle2;
                                str = str5;
                                w6Var = w6Var4;
                                e7Var = h02;
                                str2 = str3;
                                z10 = true;
                                obj = null;
                                long j11 = v02.f7314f;
                                a10 = v02.a(r42.f7554d);
                                j10 = j11;
                            }
                            pdVar3.F0().w0(a10);
                            try {
                                b0 b0Var = new b0(J0.f8322a, str, str2, str6, r42.f7554d, j10, bundle);
                                com.google.android.gms.internal.measurement.s6 M = com.google.android.gms.internal.measurement.t6.M();
                                M.H(b0Var.f7267d);
                                M.E(b0Var.f7265b);
                                M.J(b0Var.f7268e);
                                e0 e0Var = b0Var.f7269f;
                                d0 d0Var = new d0(e0Var);
                                while (d0Var.hasNext()) {
                                    String next = d0Var.next();
                                    com.google.android.gms.internal.measurement.w6 O = com.google.android.gms.internal.measurement.x6.O();
                                    O.u(next);
                                    Object g11 = e0Var.g(next);
                                    if (g11 != null) {
                                        pdVar3.K0().H(O, g11);
                                        M.z(O);
                                    }
                                }
                                com.google.android.gms.internal.measurement.e7 e7Var2 = e7Var;
                                e7Var2.T0(M);
                                com.google.android.gms.internal.measurement.g7 C2 = com.google.android.gms.internal.measurement.i7.C();
                                com.google.android.gms.internal.measurement.u6 C3 = com.google.android.gms.internal.measurement.v6.C();
                                C3.u(a10.f7311c);
                                C3.t(str6);
                                C2.t(C3);
                                e7Var2.D0(C2);
                                e7Var2.s0(pdVar3.I0().m(v5Var.o0(), Collections.emptyList(), e7Var2.X0(), Long.valueOf(M.G()), Long.valueOf(M.G()), false));
                                if (M.F()) {
                                    e7Var2.i1(M.G());
                                    e7Var2.k1(M.G());
                                }
                                long B0 = v5Var.B0();
                                int i11 = (B0 > 0L ? 1 : (B0 == 0L ? 0 : -1));
                                if (i11 != 0) {
                                    e7Var2.t(B0);
                                }
                                long z02 = v5Var.z0();
                                if (z02 != 0) {
                                    e7Var2.l1(z02);
                                } else if (i11 != 0) {
                                    e7Var2.l1(B0);
                                }
                                String t02 = v5Var.t0();
                                ag.a();
                                String str7 = str2;
                                if (w6Var.w().H(str7, c5.N0) && t02 != null) {
                                    e7Var2.I0(t02);
                                }
                                v5Var.l();
                                e7Var2.S((int) v5Var.g());
                                w6Var.w().A();
                                e7Var2.H(133005L);
                                e7Var2.f1(w6Var.f().currentTimeMillis());
                                e7Var2.r0(z10);
                                pdVar2.x(e7Var2.D(), e7Var2);
                                com.google.android.gms.internal.measurement.a7 a7Var2 = a7Var;
                                a7Var2.x(e7Var2);
                                v5 v5Var2 = v5Var;
                                v5Var2.A0(e7Var2.h1());
                                v5Var2.C0(e7Var2.j1());
                                pdVar3.F0().K0(v5Var2, false, false);
                                pdVar3.F0().s0();
                                pdVar3.F0().t0();
                                try {
                                    return pdVar3.K0().V(((com.google.android.gms.internal.measurement.d7) a7Var2.p()).e());
                                } catch (IOException e11) {
                                    J0.f8322a.a().o().c("Data loss. Failed to bundle and serialize. appId", p5.x(str7), e11);
                                    return obj;
                                }
                            } catch (Throwable th) {
                                th = th;
                                r42 = J0;
                                r42.f8149b.F0().t0();
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            r42 = J0;
                        }
                    } catch (SecurityException e12) {
                        J0.f8322a.a().v().b("app instance id encryption failed", e12.getMessage());
                        bArr = new byte[0];
                        pdVar = J0.f8149b;
                        F0 = pdVar.F0();
                        F0.t0();
                        return bArr;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            F0 = pdVar4.F0();
            F0.t0();
            return bArr;
        } catch (Throwable th4) {
            th = th4;
            r42 = J0;
            r42.f8149b.F0().t0();
            throw th;
        }
    }
}
