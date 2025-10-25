package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import java.util.Collections;
import m5.a0;
import m5.e1;
import m5.i0;
import m5.j;
import m5.n0;
import m5.s;
import m5.u;
import m6.Task;
import n5.e;
/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5880a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5881b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.gms.common.api.a f5882c;

    /* renamed from: d  reason: collision with root package name */
    private final a.d f5883d;

    /* renamed from: e  reason: collision with root package name */
    private final m5.b f5884e;

    /* renamed from: f  reason: collision with root package name */
    private final Looper f5885f;

    /* renamed from: g  reason: collision with root package name */
    private final int f5886g;

    /* renamed from: h  reason: collision with root package name */
    private final f f5887h;

    /* renamed from: i  reason: collision with root package name */
    private final s f5888i;

    /* renamed from: j  reason: collision with root package name */
    protected final m5.e f5889j;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: c  reason: collision with root package name */
        public static final a f5890c = new C0099a().a();

        /* renamed from: a  reason: collision with root package name */
        public final s f5891a;

        /* renamed from: b  reason: collision with root package name */
        public final Looper f5892b;

        /* renamed from: com.google.android.gms.common.api.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0099a {

            /* renamed from: a  reason: collision with root package name */
            private s f5893a;

            /* renamed from: b  reason: collision with root package name */
            private Looper f5894b;

            public a a() {
                if (this.f5893a == null) {
                    this.f5893a = new m5.a();
                }
                if (this.f5894b == null) {
                    this.f5894b = Looper.getMainLooper();
                }
                return new a(this.f5893a, this.f5894b);
            }

            public C0099a b(Looper looper) {
                n5.q.l(looper, "Looper must not be null.");
                this.f5894b = looper;
                return this;
            }

            public C0099a c(s sVar) {
                n5.q.l(sVar, "StatusExceptionMapper must not be null.");
                this.f5893a = sVar;
                return this;
            }
        }

        private a(s sVar, Account account, Looper looper) {
            this.f5891a = sVar;
            this.f5892b = looper;
        }
    }

    public e(Activity activity, com.google.android.gms.common.api.a aVar, a.d dVar, a aVar2) {
        this(activity, activity, aVar, dVar, aVar2);
    }

    private final com.google.android.gms.common.api.internal.a x(int i10, com.google.android.gms.common.api.internal.a aVar) {
        aVar.i();
        this.f5889j.C(this, i10, aVar);
        return aVar;
    }

    private final Task y(int i10, u uVar) {
        m6.l lVar = new m6.l();
        this.f5889j.D(this, i10, uVar, lVar, this.f5888i);
        return lVar.a();
    }

    public f e() {
        return this.f5887h;
    }

    protected e.a f() {
        e.a aVar = new e.a();
        aVar.d(null);
        aVar.c(Collections.emptySet());
        aVar.e(this.f5880a.getClass().getName());
        aVar.b(this.f5880a.getPackageName());
        return aVar;
    }

    public Task g(u uVar) {
        return y(2, uVar);
    }

    public com.google.android.gms.common.api.internal.a h(com.google.android.gms.common.api.internal.a aVar) {
        x(0, aVar);
        return aVar;
    }

    public Task i(u uVar) {
        return y(0, uVar);
    }

    public Task j(m5.p pVar) {
        n5.q.k(pVar);
        n5.q.l(pVar.f25848a.b(), "Listener has already been released.");
        n5.q.l(pVar.f25849b.a(), "Listener has already been released.");
        return this.f5889j.w(this, pVar.f25848a, pVar.f25849b, pVar.f25850c);
    }

    public Task k(j.a aVar) {
        return l(aVar, 0);
    }

    public Task l(j.a aVar, int i10) {
        n5.q.l(aVar, "Listener key cannot be null.");
        return this.f5889j.x(this, aVar, i10);
    }

    public com.google.android.gms.common.api.internal.a m(com.google.android.gms.common.api.internal.a aVar) {
        x(1, aVar);
        return aVar;
    }

    public Task n(u uVar) {
        return y(1, uVar);
    }

    protected String o(Context context) {
        return null;
    }

    public final m5.b p() {
        return this.f5884e;
    }

    public a.d q() {
        return this.f5883d;
    }

    public Context r() {
        return this.f5880a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String s() {
        return this.f5881b;
    }

    public Looper t() {
        return this.f5885f;
    }

    public final int u() {
        return this.f5886g;
    }

    public final a.f v(Looper looper, i0 i0Var) {
        a.f a10 = ((a.AbstractC0097a) n5.q.k(this.f5882c.a())).a(this.f5880a, looper, f().a(), this.f5883d, i0Var, i0Var);
        String s10 = s();
        if (s10 != null && (a10 instanceof n5.c)) {
            ((n5.c) a10).P(s10);
        }
        if (s10 != null && (a10 instanceof m5.l)) {
            m5.l lVar = (m5.l) a10;
            throw null;
        }
        return a10;
    }

    public final e1 w(Context context, Handler handler) {
        return new e1(context, handler, f().a());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public e(android.app.Activity r2, com.google.android.gms.common.api.a r3, com.google.android.gms.common.api.a.d r4, m5.s r5) {
        /*
            r1 = this;
            com.google.android.gms.common.api.e$a$a r0 = new com.google.android.gms.common.api.e$a$a
            r0.<init>()
            r0.c(r5)
            android.os.Looper r5 = r2.getMainLooper()
            r0.b(r5)
            com.google.android.gms.common.api.e$a r5 = r0.a()
            r1.<init>(r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.e.<init>(android.app.Activity, com.google.android.gms.common.api.a, com.google.android.gms.common.api.a$d, m5.s):void");
    }

    private e(Context context, Activity activity, com.google.android.gms.common.api.a aVar, a.d dVar, a aVar2) {
        String o10;
        n5.q.l(context, "Null context is not permitted.");
        n5.q.l(aVar, "Api must not be null.");
        n5.q.l(aVar2, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context context2 = (Context) n5.q.l(context.getApplicationContext(), "The provided context did not have an application context.");
        this.f5880a = context2;
        if (Build.VERSION.SDK_INT >= 30) {
            o10 = context.getAttributionTag();
        } else {
            o10 = o(context);
        }
        this.f5881b = o10;
        this.f5882c = aVar;
        this.f5883d = dVar;
        this.f5885f = aVar2.f5892b;
        m5.b a10 = m5.b.a(aVar, dVar, o10);
        this.f5884e = a10;
        this.f5887h = new n0(this);
        m5.e u10 = m5.e.u(context2);
        this.f5889j = u10;
        this.f5886g = u10.l();
        this.f5888i = aVar2.f5891a;
        if (activity != null && !(activity instanceof GoogleApiActivity) && Looper.myLooper() == Looper.getMainLooper()) {
            a0.u(activity, u10, a10);
        }
        u10.H(this);
    }

    public e(Context context, com.google.android.gms.common.api.a aVar, a.d dVar, a aVar2) {
        this(context, null, aVar, dVar, aVar2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public e(android.content.Context r2, com.google.android.gms.common.api.a r3, com.google.android.gms.common.api.a.d r4, m5.s r5) {
        /*
            r1 = this;
            com.google.android.gms.common.api.e$a$a r0 = new com.google.android.gms.common.api.e$a$a
            r0.<init>()
            r0.c(r5)
            com.google.android.gms.common.api.e$a r5 = r0.a()
            r1.<init>(r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.e.<init>(android.content.Context, com.google.android.gms.common.api.a, com.google.android.gms.common.api.a$d, m5.s):void");
    }
}
