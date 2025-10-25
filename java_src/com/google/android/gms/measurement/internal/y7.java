package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.os.Binder;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes.dex */
public final class y7 extends i6.d {

    /* renamed from: a  reason: collision with root package name */
    private final pd f8279a;

    /* renamed from: g  reason: collision with root package name */
    private Boolean f8280g;

    /* renamed from: h  reason: collision with root package name */
    private String f8281h;

    public y7(pd pdVar, String str) {
        n5.q.k(pdVar);
        this.f8279a = pdVar;
        this.f8281h = null;
    }

    private final void k1(g0 g0Var, ae aeVar) {
        pd pdVar = this.f8279a;
        pdVar.E();
        pdVar.k(g0Var, aeVar);
    }

    private final void l1(ae aeVar, boolean z10) {
        n5.q.k(aeVar);
        String str = aeVar.f7236a;
        n5.q.e(str);
        m1(str, false);
        this.f8279a.N0().o(aeVar.f7237b);
    }

    private final void m1(String str, boolean z10) {
        if (!TextUtils.isEmpty(str)) {
            if (z10) {
                try {
                    if (this.f8280g == null) {
                        boolean z11 = true;
                        if (!"com.google.android.gms".equals(this.f8281h)) {
                            pd pdVar = this.f8279a;
                            if (!com.google.android.gms.common.util.p.a(pdVar.e(), Binder.getCallingUid()) && !l5.l.a(pdVar.e()).c(Binder.getCallingUid())) {
                                z11 = false;
                            }
                        }
                        this.f8280g = Boolean.valueOf(z11);
                    }
                    if (this.f8280g.booleanValue()) {
                        return;
                    }
                } catch (SecurityException e10) {
                    this.f8279a.a().o().b("Measurement Service called with invalid calling package. appId", p5.x(str));
                    throw e10;
                }
            }
            if (this.f8281h == null && l5.k.j(this.f8279a.e(), Binder.getCallingUid(), str)) {
                this.f8281h = str;
            }
            if (str.equals(this.f8281h)) {
                return;
            }
            throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
        }
        this.f8279a.a().o().a("Measurement Service called without app package");
        throw new SecurityException("Measurement Service called without app package");
    }

    @Override // i6.e
    public final void F(long j10, String str, String str2, String str3) {
        p1(new a7(this, str2, str3, str, j10));
    }

    @Override // i6.e
    public final void G0(ae aeVar) {
        l1(aeVar, false);
        p1(new y6(this, aeVar));
    }

    @Override // i6.e
    public final void H(ae aeVar) {
        String str = aeVar.f7236a;
        n5.q.e(str);
        m1(str, false);
        p1(new i7(this, aeVar));
    }

    @Override // i6.e
    public final List J(String str, String str2, String str3) {
        m1(str, true);
        try {
            return (List) this.f8279a.b().r(new g7(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e10) {
            this.f8279a.a().o().b("Failed to get conditional user properties as", e10);
            return Collections.emptyList();
        }
    }

    @Override // i6.e
    public final void L0(ae aeVar) {
        l1(aeVar, false);
        p1(new z6(this, aeVar));
    }

    @Override // i6.e
    public final void O(ae aeVar, final i6.g0 g0Var, final i6.k kVar) {
        l1(aeVar, false);
        final String str = (String) n5.q.k(aeVar.f7236a);
        this.f8279a.b().t(new Runnable() { // from class: com.google.android.gms.measurement.internal.t7
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                y7.this.g1(str, g0Var, kVar);
            }
        });
    }

    @Override // i6.e
    public final List P0(String str, String str2, boolean z10, ae aeVar) {
        l1(aeVar, false);
        String str3 = aeVar.f7236a;
        n5.q.k(str3);
        try {
            List<wd> list = (List) this.f8279a.b().r(new d7(this, str3, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (wd wdVar : list) {
                if (z10 || !yd.N(wdVar.f8226c)) {
                    arrayList.add(new ud(wdVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e10) {
            this.f8279a.a().o().c("Failed to query user properties. appId", p5.x(aeVar.f7236a), e10);
            return Collections.emptyList();
        }
    }

    @Override // i6.e
    public final void T(final ae aeVar) {
        n5.q.e(aeVar.f7236a);
        n5.q.k(aeVar.f7254s);
        d(new Runnable() { // from class: com.google.android.gms.measurement.internal.x7
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                y7.this.k(aeVar);
            }
        });
    }

    @Override // i6.e
    public final String U0(ae aeVar) {
        l1(aeVar, false);
        return this.f8279a.p0(aeVar);
    }

    @Override // i6.e
    public final List V0(String str, String str2, ae aeVar) {
        l1(aeVar, false);
        String str3 = aeVar.f7236a;
        n5.q.k(str3);
        try {
            return (List) this.f8279a.b().r(new f7(this, str3, str, str2)).get();
        } catch (InterruptedException | ExecutionException e10) {
            this.f8279a.a().o().b("Failed to get conditional user properties", e10);
            return Collections.emptyList();
        }
    }

    @Override // i6.e
    public final List X(ae aeVar, Bundle bundle) {
        l1(aeVar, false);
        n5.q.k(aeVar.f7236a);
        pd pdVar = this.f8279a;
        if (pdVar.B0().H(null, c5.Z0)) {
            try {
                return (List) pdVar.b().s(new p7(this, aeVar, bundle)).get(10000L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException | ExecutionException | TimeoutException e10) {
                this.f8279a.a().o().c("Failed to get trigger URIs. appId", p5.x(aeVar.f7236a), e10);
                return Collections.emptyList();
            }
        }
        try {
            return (List) this.f8279a.b().r(new q7(this, aeVar, bundle)).get();
        } catch (InterruptedException | ExecutionException e11) {
            this.f8279a.a().o().c("Failed to get trigger URIs. appId", p5.x(aeVar.f7236a), e11);
            return Collections.emptyList();
        }
    }

    @Override // i6.e
    public final void a1(ae aeVar) {
        n5.q.e(aeVar.f7236a);
        n5.q.k(aeVar.f7254s);
        d(new j7(this, aeVar));
    }

    @Override // i6.e
    public final void b0(g0 g0Var, ae aeVar) {
        n5.q.k(g0Var);
        l1(aeVar, false);
        p1(new l7(this, g0Var, aeVar));
    }

    @Override // i6.e
    public final List b1(ae aeVar, boolean z10) {
        l1(aeVar, false);
        String str = aeVar.f7236a;
        n5.q.k(str);
        try {
            List<wd> list = (List) this.f8279a.b().r(new x6(this, str)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (wd wdVar : list) {
                if (z10 || !yd.N(wdVar.f8226c)) {
                    arrayList.add(new ud(wdVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e10) {
            this.f8279a.a().o().c("Failed to get user properties. appId", p5.x(aeVar.f7236a), e10);
            return null;
        }
    }

    final void d(Runnable runnable) {
        n5.q.k(runnable);
        pd pdVar = this.f8279a;
        if (pdVar.b().p()) {
            runnable.run();
        } else {
            pdVar.b().v(runnable);
        }
    }

    @Override // i6.e
    public final void e0(ae aeVar) {
        l1(aeVar, false);
        p1(new h7(this, aeVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void e1(ae aeVar) {
        pd pdVar = this.f8279a;
        pdVar.E();
        pdVar.Q0(aeVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void f1(ae aeVar, Bundle bundle, i6.h hVar, String str) {
        pd pdVar = this.f8279a;
        pdVar.E();
        try {
            hVar.M0(pdVar.q0(aeVar, bundle));
        } catch (RemoteException e10) {
            this.f8279a.a().o().c("Failed to return trigger URIs for app", str, e10);
        }
    }

    @Override // i6.e
    public final void g0(final ae aeVar) {
        n5.q.e(aeVar.f7236a);
        n5.q.k(aeVar.f7254s);
        d(new Runnable() { // from class: com.google.android.gms.measurement.internal.r7
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                y7.this.e1(aeVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void g1(String str, i6.g0 g0Var, i6.k kVar) {
        pd pdVar = this.f8279a;
        pdVar.E();
        pdVar.b().h();
        pdVar.O0();
        List<sd> o10 = pdVar.F0().o(str, g0Var, ((Integer) c5.B.b(null)).intValue());
        ArrayList arrayList = new ArrayList();
        for (sd sdVar : o10) {
            if (!pdVar.t(str, sdVar.e())) {
                pdVar.a().w().d("[sgtm] batch skipped due to destination in backoff. appId, rowId, url", str, Long.valueOf(sdVar.c()), sdVar.e());
            } else {
                int i10 = sdVar.i();
                if (i10 > 0) {
                    if (i10 <= ((Integer) c5.f7386z.b(null)).intValue()) {
                        if (pdVar.f().currentTimeMillis() >= sdVar.h() + Math.min(((Long) c5.f7382x.b(null)).longValue() * (1 << (i10 - 1)), ((Long) c5.f7384y.b(null)).longValue())) {
                        }
                    }
                    pdVar.a().w().d("[sgtm] batch skipped waiting for next retry. appId, rowId, lastUploadMillis", str, Long.valueOf(sdVar.c()), Long.valueOf(sdVar.h()));
                }
                wc b10 = sdVar.b();
                try {
                    com.google.android.gms.internal.measurement.a7 a7Var = (com.google.android.gms.internal.measurement.a7) td.W(com.google.android.gms.internal.measurement.d7.J(), b10.f8218b);
                    for (int i11 = 0; i11 < a7Var.u(); i11++) {
                        com.google.android.gms.internal.measurement.e7 e7Var = (com.google.android.gms.internal.measurement.e7) a7Var.v(i11).p();
                        e7Var.f1(pdVar.f().currentTimeMillis());
                        a7Var.w(i11, e7Var);
                    }
                    b10.f8218b = ((com.google.android.gms.internal.measurement.d7) a7Var.p()).e();
                    if (Log.isLoggable(pdVar.a().z(), 2)) {
                        b10.f8223g = pdVar.K0().K((com.google.android.gms.internal.measurement.d7) a7Var.p());
                    }
                    arrayList.add(b10);
                } catch (com.google.android.gms.internal.measurement.qb unused) {
                    pdVar.a().r().b("Failed to parse queued batch. appId", str);
                }
            }
        }
        yc ycVar = new yc(arrayList);
        try {
            kVar.J0(ycVar);
            this.f8279a.a().w().c("[sgtm] Sending queued upload batches to client. appId, count", str, Integer.valueOf(ycVar.f8298a.size()));
        } catch (RemoteException e10) {
            this.f8279a.a().o().c("[sgtm] Failed to return upload batches for app", str, e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void h1(ae aeVar, g gVar) {
        pd pdVar = this.f8279a;
        pdVar.E();
        pdVar.r0((String) n5.q.k(aeVar.f7236a), gVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void i1(Bundle bundle, String str, ae aeVar) {
        pd pdVar = this.f8279a;
        boolean H = pdVar.B0().H(null, c5.W0);
        if (bundle.isEmpty() && H) {
            u F0 = this.f8279a.F0();
            F0.h();
            F0.j();
            try {
                F0.u0().execSQL("delete from default_event_params where app_id=?", new String[]{str});
                return;
            } catch (SQLiteException e10) {
                F0.f8322a.a().o().b("Error clearing default event params", e10);
                return;
            }
        }
        u F02 = pdVar.F0();
        F02.h();
        F02.j();
        byte[] e11 = F02.f8149b.K0().J(new b0(F02.f8322a, "", str, "dep", 0L, 0L, bundle)).e();
        w6 w6Var = F02.f8322a;
        w6Var.a().w().c("Saving default event parameters, appId, data size", str, Integer.valueOf(e11.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put(CommonUrlParts.APP_ID, str);
        contentValues.put(Constants.PARAMETERS, e11);
        try {
            if (F02.u0().insertWithOnConflict("default_event_params", null, contentValues, 5) == -1) {
                w6Var.a().o().b("Failed to insert default event parameters (got -1). appId", p5.x(str));
            }
        } catch (SQLiteException e12) {
            F02.f8322a.a().o().c("Error storing default event parameters. appId", p5.x(str), e12);
        }
        pd pdVar2 = this.f8279a;
        u F03 = pdVar2.F0();
        long j10 = aeVar.D;
        if (F03.H(str, j10)) {
            pdVar2.F0().I(str, Long.valueOf(j10), null, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ pd j1() {
        return this.f8279a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void k(ae aeVar) {
        pd pdVar = this.f8279a;
        pdVar.E();
        pdVar.P0(aeVar);
    }

    @Override // i6.e
    public final void k0(final ae aeVar, final g gVar) {
        l1(aeVar, false);
        p1(new Runnable() { // from class: com.google.android.gms.measurement.internal.v7
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                y7.this.h1(aeVar, gVar);
            }
        });
    }

    @Override // i6.e
    public final List l(String str, String str2, String str3, boolean z10) {
        m1(str, true);
        try {
            List<wd> list = (List) this.f8279a.b().r(new e7(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (wd wdVar : list) {
                if (z10 || !yd.N(wdVar.f8226c)) {
                    arrayList.add(new ud(wdVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e10) {
            this.f8279a.a().o().c("Failed to get user properties as. appId", p5.x(str), e10);
            return Collections.emptyList();
        }
    }

    @Override // i6.e
    public final byte[] m0(g0 g0Var, String str) {
        n5.q.e(str);
        n5.q.k(g0Var);
        m1(str, true);
        pd pdVar = this.f8279a;
        n5 v10 = pdVar.a().v();
        i5 M0 = pdVar.M0();
        String str2 = g0Var.f7551a;
        v10.b("Log and bundle. event", M0.a(str2));
        long a10 = pdVar.f().a() / 1000000;
        try {
            byte[] bArr = (byte[]) pdVar.b().s(new n7(this, g0Var, str)).get();
            if (bArr == null) {
                pdVar.a().o().b("Log and bundle returned null. appId", p5.x(str));
                bArr = new byte[0];
            }
            pdVar.a().v().d("Log and bundle processed. event, size, time_ms", pdVar.M0().a(str2), Integer.valueOf(bArr.length), Long.valueOf((pdVar.f().a() / 1000000) - a10));
            return bArr;
        } catch (InterruptedException | ExecutionException e10) {
            pd pdVar2 = this.f8279a;
            pdVar2.a().o().d("Failed to log and bundle. appId, event, error", p5.x(str), pdVar2.M0().a(g0Var.f7551a), e10);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void n1(g0 g0Var, ae aeVar) {
        com.google.android.gms.internal.measurement.c1 c1Var;
        pd pdVar = this.f8279a;
        o6 D0 = pdVar.D0();
        String str = aeVar.f7236a;
        if (TextUtils.isEmpty(str)) {
            c1Var = null;
        } else {
            c1Var = (com.google.android.gms.internal.measurement.c1) D0.f7824j.c(str);
        }
        if (c1Var != null) {
            try {
                Map Z = pdVar.K0().Z(g0Var.f7552b.o(), true);
                String str2 = g0Var.f7551a;
                String a10 = i6.t.a(str2);
                if (a10 != null) {
                    str2 = a10;
                }
                if (c1Var.b(new com.google.android.gms.internal.measurement.b(str2, g0Var.f7554d, Z))) {
                    if (c1Var.c()) {
                        pd pdVar2 = this.f8279a;
                        pdVar2.a().w().b("EES edited event", g0Var.f7551a);
                        k1(pdVar2.K0().m(c1Var.e().c()), aeVar);
                    } else {
                        k1(g0Var, aeVar);
                    }
                    if (c1Var.d()) {
                        for (com.google.android.gms.internal.measurement.b bVar : c1Var.e().f()) {
                            pd pdVar3 = this.f8279a;
                            pdVar3.a().w().b("EES logging created event", bVar.b());
                            k1(pdVar3.K0().m(bVar), aeVar);
                        }
                        return;
                    }
                    return;
                }
            } catch (com.google.android.gms.internal.measurement.c2 unused) {
                this.f8279a.a().o().c("EES error. appId, eventName", aeVar.f7237b, g0Var.f7551a);
            }
            this.f8279a.a().w().b("EES was not applied to event", g0Var.f7551a);
            k1(g0Var, aeVar);
            return;
        }
        this.f8279a.a().w().b("EES not loaded for", aeVar.f7236a);
        k1(g0Var, aeVar);
    }

    @Override // i6.e
    public final void o(i iVar, ae aeVar) {
        n5.q.k(iVar);
        n5.q.k(iVar.f7613c);
        l1(aeVar, false);
        i iVar2 = new i(iVar);
        iVar2.f7611a = aeVar.f7236a;
        p1(new b7(this, iVar2, aeVar));
    }

    @Override // i6.e
    public final void o0(i iVar) {
        n5.q.k(iVar);
        n5.q.k(iVar.f7613c);
        n5.q.e(iVar.f7611a);
        m1(iVar.f7611a, true);
        p1(new c7(this, new i(iVar)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final g0 o1(g0 g0Var, ae aeVar) {
        e0 e0Var;
        if ("_cmp".equals(g0Var.f7551a) && (e0Var = g0Var.f7552b) != null && e0Var.n() != 0) {
            String m10 = e0Var.m("_cis");
            if ("referrer broadcast".equals(m10) || "referrer API".equals(m10)) {
                this.f8279a.a().u().b("Event has been filtered ", g0Var.toString());
                return new g0("_cmpx", e0Var, g0Var.f7553c, g0Var.f7554d);
            }
        }
        return g0Var;
    }

    final void p1(Runnable runnable) {
        n5.q.k(runnable);
        pd pdVar = this.f8279a;
        if (pdVar.b().p()) {
            runnable.run();
        } else {
            pdVar.b().t(runnable);
        }
    }

    @Override // i6.e
    public final void s0(ud udVar, ae aeVar) {
        n5.q.k(udVar);
        l1(aeVar, false);
        p1(new o7(this, udVar, aeVar));
    }

    @Override // i6.e
    public final void t(final ae aeVar, final Bundle bundle, final i6.h hVar) {
        l1(aeVar, false);
        final String str = (String) n5.q.k(aeVar.f7236a);
        this.f8279a.b().t(new Runnable() { // from class: com.google.android.gms.measurement.internal.s7
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                y7.this.f1(aeVar, bundle, hVar, str);
            }
        });
    }

    @Override // i6.e
    public final i6.a t0(ae aeVar) {
        l1(aeVar, false);
        n5.q.e(aeVar.f7236a);
        try {
            return (i6.a) this.f8279a.b().s(new k7(this, aeVar)).get(10000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e10) {
            this.f8279a.a().o().c("Failed to get consent. appId", p5.x(aeVar.f7236a), e10);
            return new i6.a(null);
        }
    }

    @Override // i6.e
    public final void w(g0 g0Var, String str, String str2) {
        n5.q.k(g0Var);
        n5.q.e(str);
        m1(str, true);
        p1(new m7(this, g0Var, str));
    }

    @Override // i6.e
    public final void w0(final Bundle bundle, final ae aeVar) {
        l1(aeVar, false);
        final String str = aeVar.f7236a;
        n5.q.k(str);
        p1(new Runnable() { // from class: com.google.android.gms.measurement.internal.w7
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                y7.this.i1(bundle, str, aeVar);
            }
        });
    }
}
