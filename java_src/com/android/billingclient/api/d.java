package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;
import java.util.concurrent.ExecutorService;
/* loaded from: classes.dex */
public abstract class d {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private volatile n0 f5260a;

        /* renamed from: b  reason: collision with root package name */
        private final Context f5261b;

        /* renamed from: c  reason: collision with root package name */
        private volatile c2.o f5262c;

        /* renamed from: d  reason: collision with root package name */
        private volatile c2.s f5263d;

        /* renamed from: e  reason: collision with root package name */
        private volatile boolean f5264e;

        /* renamed from: f  reason: collision with root package name */
        private volatile boolean f5265f;

        /* synthetic */ a(Context context, c2.c1 c1Var) {
            this.f5261b = context;
        }

        public d a() {
            if (this.f5261b != null) {
                if (this.f5262c == null) {
                    if (this.f5263d == null) {
                        if (!this.f5264e && !this.f5265f) {
                            throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
                        }
                        return new e(null, this.f5261b, null, null);
                    }
                    throw new IllegalArgumentException("Please provide a valid listener for Google Play Billing purchases updates when enabling User Choice Billing.");
                } else if (this.f5260a != null) {
                    if (this.f5262c != null) {
                        if (this.f5263d == null) {
                            return new e((String) null, this.f5260a, this.f5261b, this.f5262c, (c2.c) null, (i0) null, (ExecutorService) null);
                        }
                        return new e((String) null, this.f5260a, this.f5261b, this.f5262c, this.f5263d, (i0) null, (ExecutorService) null);
                    }
                    return new e(null, this.f5260a, this.f5261b, null, null, null);
                } else {
                    throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
                }
            }
            throw new IllegalArgumentException("Please provide a valid Context.");
        }

        public a b() {
            this.f5264e = true;
            return this;
        }

        public a c() {
            m0 m0Var = new m0(null);
            m0Var.a();
            this.f5260a = m0Var.b();
            return this;
        }

        public a d(c2.s sVar) {
            this.f5263d = sVar;
            return this;
        }

        public a e(c2.o oVar) {
            this.f5262c = oVar;
            return this;
        }
    }

    public static a j(Context context) {
        return new a(context, null);
    }

    public abstract void a(c2.a aVar, c2.b bVar);

    public abstract void b(c2.i iVar, c2.j jVar);

    public abstract void c(c2.f fVar);

    public abstract void d();

    public abstract void e(c2.k kVar, c2.h hVar);

    public abstract void f(c2.d dVar);

    public abstract h g(String str);

    public abstract boolean h();

    public abstract h i(Activity activity, g gVar);

    public abstract void k(j jVar, c2.l lVar);

    public abstract void l(c2.p pVar, c2.m mVar);

    public abstract void m(String str, c2.m mVar);

    public abstract void n(c2.q qVar, c2.n nVar);

    public abstract void o(String str, c2.n nVar);

    public abstract void p(k kVar, c2.r rVar);

    public abstract h q(Activity activity, c2.e eVar);

    public abstract void r(c2.g gVar);
}
