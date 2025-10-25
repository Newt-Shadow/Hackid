package com.google.firebase.installations;

import android.text.TextUtils;
import com.google.firebase.installations.d;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import k7.w;
import m6.Task;
import m6.l;
import m6.n;
import n5.q;
import n8.d;
import n8.f;
/* loaded from: classes.dex */
public class c implements l8.e {

    /* renamed from: m  reason: collision with root package name */
    private static final Object f8775m = new Object();

    /* renamed from: n  reason: collision with root package name */
    private static final ThreadFactory f8776n = new a();

    /* renamed from: a  reason: collision with root package name */
    private final h7.f f8777a;

    /* renamed from: b  reason: collision with root package name */
    private final n8.c f8778b;

    /* renamed from: c  reason: collision with root package name */
    private final m8.c f8779c;

    /* renamed from: d  reason: collision with root package name */
    private final i f8780d;

    /* renamed from: e  reason: collision with root package name */
    private final w f8781e;

    /* renamed from: f  reason: collision with root package name */
    private final l8.g f8782f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f8783g;

    /* renamed from: h  reason: collision with root package name */
    private final ExecutorService f8784h;

    /* renamed from: i  reason: collision with root package name */
    private final Executor f8785i;

    /* renamed from: j  reason: collision with root package name */
    private String f8786j;

    /* renamed from: k  reason: collision with root package name */
    private Set f8787k;

    /* renamed from: l  reason: collision with root package name */
    private final List f8788l;

    /* loaded from: classes.dex */
    class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicInteger f8789a = new AtomicInteger(1);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f8789a.getAndIncrement())));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f8790a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f8791b;

        static {
            int[] iArr = new int[f.b.values().length];
            f8791b = iArr;
            try {
                iArr[f.b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8791b[f.b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8791b[f.b.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[d.b.values().length];
            f8790a = iArr2;
            try {
                iArr2[d.b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8790a[d.b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(final h7.f fVar, k8.b bVar, ExecutorService executorService, Executor executor) {
        this(executorService, executor, fVar, new n8.c(fVar.m(), bVar), new m8.c(fVar), i.c(), new w(new k8.b() { // from class: l8.c
            @Override // k8.b
            public final Object get() {
                m8.b y10;
                y10 = com.google.firebase.installations.c.y(h7.f.this);
                return y10;
            }
        }), new l8.g());
    }

    private String A(m8.d dVar) {
        if ((!this.f8777a.q().equals("CHIME_ANDROID_SDK") && !this.f8777a.y()) || !dVar.m()) {
            return this.f8782f.a();
        }
        String f10 = o().f();
        if (TextUtils.isEmpty(f10)) {
            return this.f8782f.a();
        }
        return f10;
    }

    private m8.d B(m8.d dVar) {
        String str;
        if (dVar.d() != null && dVar.d().length() == 11) {
            str = o().i();
        } else {
            str = null;
        }
        n8.d d10 = this.f8778b.d(l(), dVar.d(), t(), m(), str);
        int i10 = b.f8790a[d10.e().ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return dVar.q("BAD CONFIG");
            }
            throw new d("Firebase Installations Service is unavailable. Please try again later.", d.a.UNAVAILABLE);
        }
        return dVar.s(d10.c(), d10.d(), this.f8780d.b(), d10.b().c(), d10.b().d());
    }

    private void C(Exception exc) {
        synchronized (this.f8783g) {
            Iterator it = this.f8788l.iterator();
            while (it.hasNext()) {
                if (((h) it.next()).b(exc)) {
                    it.remove();
                }
            }
        }
    }

    private void D(m8.d dVar) {
        synchronized (this.f8783g) {
            Iterator it = this.f8788l.iterator();
            while (it.hasNext()) {
                if (((h) it.next()).a(dVar)) {
                    it.remove();
                }
            }
        }
    }

    private synchronized void E(String str) {
        this.f8786j = str;
    }

    private synchronized void F(m8.d dVar, m8.d dVar2) {
        if (this.f8787k.size() != 0 && !TextUtils.equals(dVar.d(), dVar2.d())) {
            Iterator it = this.f8787k.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.b.a(it.next());
                dVar2.d();
                throw null;
            }
        }
    }

    private Task f() {
        l lVar = new l();
        h(new e(this.f8780d, lVar));
        return lVar.a();
    }

    private Task g() {
        l lVar = new l();
        h(new f(lVar));
        return lVar.a();
    }

    private void h(h hVar) {
        synchronized (this.f8783g) {
            this.f8788l.add(hVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void v(boolean r3) {
        /*
            r2 = this;
            m8.d r0 = r2.r()
            boolean r1 = r0.i()     // Catch: com.google.firebase.installations.d -> L5f
            if (r1 != 0) goto L22
            boolean r1 = r0.l()     // Catch: com.google.firebase.installations.d -> L5f
            if (r1 == 0) goto L11
            goto L22
        L11:
            if (r3 != 0) goto L1d
            com.google.firebase.installations.i r3 = r2.f8780d     // Catch: com.google.firebase.installations.d -> L5f
            boolean r3 = r3.f(r0)     // Catch: com.google.firebase.installations.d -> L5f
            if (r3 == 0) goto L1c
            goto L1d
        L1c:
            return
        L1d:
            m8.d r3 = r2.k(r0)     // Catch: com.google.firebase.installations.d -> L5f
            goto L26
        L22:
            m8.d r3 = r2.B(r0)     // Catch: com.google.firebase.installations.d -> L5f
        L26:
            r2.u(r3)
            r2.F(r0, r3)
            boolean r0 = r3.k()
            if (r0 == 0) goto L39
            java.lang.String r0 = r3.d()
            r2.E(r0)
        L39:
            boolean r0 = r3.i()
            if (r0 == 0) goto L4a
            com.google.firebase.installations.d r3 = new com.google.firebase.installations.d
            com.google.firebase.installations.d$a r0 = com.google.firebase.installations.d.a.BAD_CONFIG
            r3.<init>(r0)
            r2.C(r3)
            goto L5e
        L4a:
            boolean r0 = r3.j()
            if (r0 == 0) goto L5b
            java.io.IOException r3 = new java.io.IOException
            java.lang.String r0 = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."
            r3.<init>(r0)
            r2.C(r3)
            goto L5e
        L5b:
            r2.D(r3)
        L5e:
            return
        L5f:
            r3 = move-exception
            r2.C(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.installations.c.v(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public final void x(final boolean z10) {
        m8.d s10 = s();
        if (z10) {
            s10 = s10.p();
        }
        D(s10);
        this.f8785i.execute(new Runnable() { // from class: l8.d
            @Override // java.lang.Runnable
            public final void run() {
                com.google.firebase.installations.c.this.v(z10);
            }
        });
    }

    private m8.d k(m8.d dVar) {
        n8.f e10 = this.f8778b.e(l(), dVar.d(), t(), dVar.f());
        int i10 = b.f8791b[e10.b().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    E(null);
                    return dVar.r();
                }
                throw new d("Firebase Installations Service is unavailable. Please try again later.", d.a.UNAVAILABLE);
            }
            return dVar.q("BAD CONFIG");
        }
        return dVar.o(e10.c(), e10.d(), this.f8780d.b());
    }

    private synchronized String n() {
        return this.f8786j;
    }

    private m8.b o() {
        return (m8.b) this.f8781e.get();
    }

    public static c p() {
        return q(h7.f.o());
    }

    public static c q(h7.f fVar) {
        boolean z10;
        if (fVar != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        q.b(z10, "Null is not a valid value of FirebaseApp.");
        return (c) fVar.k(l8.e.class);
    }

    private m8.d r() {
        m8.d d10;
        synchronized (f8775m) {
            com.google.firebase.installations.b a10 = com.google.firebase.installations.b.a(this.f8777a.m(), "generatefid.lock");
            d10 = this.f8779c.d();
            if (a10 != null) {
                a10.b();
            }
        }
        return d10;
    }

    private m8.d s() {
        m8.d d10;
        synchronized (f8775m) {
            com.google.firebase.installations.b a10 = com.google.firebase.installations.b.a(this.f8777a.m(), "generatefid.lock");
            d10 = this.f8779c.d();
            if (d10.j()) {
                d10 = this.f8779c.b(d10.t(A(d10)));
            }
            if (a10 != null) {
                a10.b();
            }
        }
        return d10;
    }

    private void u(m8.d dVar) {
        synchronized (f8775m) {
            com.google.firebase.installations.b a10 = com.google.firebase.installations.b.a(this.f8777a.m(), "generatefid.lock");
            this.f8779c.b(dVar);
            if (a10 != null) {
                a10.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w() {
        x(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ m8.b y(h7.f fVar) {
        return new m8.b(fVar);
    }

    private void z() {
        q.f(m(), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        q.f(t(), "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        q.f(l(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        q.b(i.h(m()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        q.b(i.g(l()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    @Override // l8.e
    public Task a(final boolean z10) {
        z();
        Task f10 = f();
        this.f8784h.execute(new Runnable() { // from class: l8.a
            @Override // java.lang.Runnable
            public final void run() {
                com.google.firebase.installations.c.this.x(z10);
            }
        });
        return f10;
    }

    @Override // l8.e
    public Task getId() {
        z();
        String n10 = n();
        if (n10 != null) {
            return n.e(n10);
        }
        Task g10 = g();
        this.f8784h.execute(new Runnable() { // from class: l8.b
            @Override // java.lang.Runnable
            public final void run() {
                com.google.firebase.installations.c.this.w();
            }
        });
        return g10;
    }

    String l() {
        return this.f8777a.r().b();
    }

    String m() {
        return this.f8777a.r().c();
    }

    String t() {
        return this.f8777a.r().g();
    }

    c(ExecutorService executorService, Executor executor, h7.f fVar, n8.c cVar, m8.c cVar2, i iVar, w wVar, l8.g gVar) {
        this.f8783g = new Object();
        this.f8787k = new HashSet();
        this.f8788l = new ArrayList();
        this.f8777a = fVar;
        this.f8778b = cVar;
        this.f8779c = cVar2;
        this.f8780d = iVar;
        this.f8781e = wVar;
        this.f8782f = gVar;
        this.f8784h = executorService;
        this.f8785i = executor;
    }
}
