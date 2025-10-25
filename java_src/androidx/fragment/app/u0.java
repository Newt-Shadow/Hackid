package androidx.fragment.app;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import androidx.lifecycle.i;
import androidx.lifecycle.k0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class u0 implements androidx.lifecycle.g, h1.f, androidx.lifecycle.m0 {

    /* renamed from: a  reason: collision with root package name */
    private final p f2859a;

    /* renamed from: b  reason: collision with root package name */
    private final androidx.lifecycle.l0 f2860b;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f2861c;

    /* renamed from: d  reason: collision with root package name */
    private androidx.lifecycle.n f2862d = null;

    /* renamed from: e  reason: collision with root package name */
    private h1.e f2863e = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u0(p pVar, androidx.lifecycle.l0 l0Var, Runnable runnable) {
        this.f2859a = pVar;
        this.f2860b = l0Var;
        this.f2861c = runnable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(i.a aVar) {
        this.f2862d.h(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (this.f2862d == null) {
            this.f2862d = new androidx.lifecycle.n(this);
            h1.e a10 = h1.e.a(this);
            this.f2863e = a10;
            a10.c();
            this.f2861c.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        if (this.f2862d != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(Bundle bundle) {
        this.f2863e.d(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(Bundle bundle) {
        this.f2863e.e(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(i.b bVar) {
        this.f2862d.m(bVar);
    }

    @Override // androidx.lifecycle.g
    public x0.a getDefaultViewModelCreationExtras() {
        Application application;
        Context applicationContext = this.f2859a.requireContext().getApplicationContext();
        while (true) {
            if (applicationContext instanceof ContextWrapper) {
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            } else {
                application = null;
                break;
            }
        }
        x0.b bVar = new x0.b();
        if (application != null) {
            bVar.c(k0.a.f2988h, application);
        }
        bVar.c(androidx.lifecycle.d0.f2952a, this.f2859a);
        bVar.c(androidx.lifecycle.d0.f2953b, this);
        if (this.f2859a.getArguments() != null) {
            bVar.c(androidx.lifecycle.d0.f2954c, this.f2859a.getArguments());
        }
        return bVar;
    }

    @Override // androidx.lifecycle.m
    public androidx.lifecycle.i getLifecycle() {
        b();
        return this.f2862d;
    }

    @Override // h1.f
    public h1.d getSavedStateRegistry() {
        b();
        return this.f2863e.b();
    }

    @Override // androidx.lifecycle.m0
    public androidx.lifecycle.l0 getViewModelStore() {
        b();
        return this.f2860b;
    }
}
