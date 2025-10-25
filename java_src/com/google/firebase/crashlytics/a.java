package com.google.firebase.crashlytics;

import android.content.Context;
import android.content.pm.PackageManager;
import h7.f;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutorService;
import l8.e;
import m6.Task;
import n7.d;
import n7.g;
import n7.l;
import q7.d0;
import q7.j;
import q7.j0;
import q7.n;
import q7.o0;
import r7.i;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    final d0 f8766a;

    private a(d0 d0Var) {
        this.f8766a = d0Var;
    }

    public static a e() {
        a aVar = (a) f.o().k(a.class);
        if (aVar != null) {
            return aVar;
        }
        throw new NullPointerException("FirebaseCrashlytics component is not present.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a f(f fVar, e eVar, k8.a aVar, k8.a aVar2, k8.a aVar3, ExecutorService executorService, ExecutorService executorService2, ExecutorService executorService3) {
        Context m10 = fVar.m();
        String packageName = m10.getPackageName();
        g f10 = g.f();
        f10.g("Initializing Firebase Crashlytics " + d0.s() + " for " + packageName);
        i iVar = new i(executorService, executorService2);
        w7.g gVar = new w7.g(m10);
        j0 j0Var = new j0(fVar);
        o0 o0Var = new o0(m10, packageName, eVar, j0Var);
        d dVar = new d(aVar);
        m7.d dVar2 = new m7.d(aVar2);
        n nVar = new n(j0Var, gVar);
        v8.b.e(nVar);
        d0 d0Var = new d0(fVar, o0Var, dVar, j0Var, dVar2.e(), dVar2.d(), gVar, nVar, new l(aVar3), iVar);
        String c10 = fVar.r().c();
        String m11 = j.m(m10);
        List<q7.g> j10 = j.j(m10);
        g f11 = g.f();
        f11.b("Mapping file ID is: " + m11);
        for (q7.g gVar2 : j10) {
            g.f().b(String.format("Build id for %s on %s: %s", gVar2.c(), gVar2.a(), gVar2.b()));
        }
        try {
            q7.b a10 = q7.b.a(m10, o0Var, c10, m11, j10, new n7.f(m10));
            g f12 = g.f();
            f12.i("Installer package name is: " + a10.f28391d);
            y7.g l10 = y7.g.l(m10, c10, o0Var, new v7.b(), a10.f28393f, a10.f28394g, gVar, j0Var);
            l10.o(iVar).d(executorService3, new m6.g() { // from class: m7.g
                @Override // m6.g
                public final void c(Exception exc) {
                    com.google.firebase.crashlytics.a.g(exc);
                }
            });
            if (d0Var.J(a10, l10)) {
                d0Var.q(l10);
            }
            return new a(d0Var);
        } catch (PackageManager.NameNotFoundException e10) {
            g.f().e("Error retrieving app package info.", e10);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(Exception exc) {
        g.f().e("Error fetching settings.", exc);
    }

    public Task b() {
        return this.f8766a.l();
    }

    public void c() {
        this.f8766a.m();
    }

    public boolean d() {
        return this.f8766a.n();
    }

    public void h(String str) {
        this.f8766a.E(str);
    }

    public void i(Throwable th) {
        if (th == null) {
            g.f().k("A null value was passed to recordException. Ignoring.");
        } else {
            this.f8766a.F(th, Collections.emptyMap());
        }
    }

    public void j() {
        this.f8766a.K();
    }

    public void k(Boolean bool) {
        this.f8766a.L(bool);
    }

    public void l(String str, String str2) {
        this.f8766a.M(str, str2);
    }

    public void m(String str) {
        this.f8766a.O(str);
    }
}
