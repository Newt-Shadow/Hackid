package q7;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import m6.Task;
/* loaded from: classes.dex */
public class d0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f28408a;

    /* renamed from: b  reason: collision with root package name */
    private final h7.f f28409b;

    /* renamed from: c  reason: collision with root package name */
    private final j0 f28410c;

    /* renamed from: f  reason: collision with root package name */
    private e0 f28413f;

    /* renamed from: g  reason: collision with root package name */
    private e0 f28414g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f28415h;

    /* renamed from: i  reason: collision with root package name */
    private r f28416i;

    /* renamed from: j  reason: collision with root package name */
    private final o0 f28417j;

    /* renamed from: k  reason: collision with root package name */
    private final w7.g f28418k;

    /* renamed from: l  reason: collision with root package name */
    public final p7.b f28419l;

    /* renamed from: m  reason: collision with root package name */
    private final o7.a f28420m;

    /* renamed from: n  reason: collision with root package name */
    private final n f28421n;

    /* renamed from: o  reason: collision with root package name */
    private final n7.a f28422o;

    /* renamed from: p  reason: collision with root package name */
    private final n7.l f28423p;

    /* renamed from: q  reason: collision with root package name */
    private final r7.i f28424q;

    /* renamed from: e  reason: collision with root package name */
    private final long f28412e = System.currentTimeMillis();

    /* renamed from: d  reason: collision with root package name */
    private final t0 f28411d = new t0();

    public d0(h7.f fVar, o0 o0Var, n7.a aVar, j0 j0Var, p7.b bVar, o7.a aVar2, w7.g gVar, n nVar, n7.l lVar, r7.i iVar) {
        this.f28409b = fVar;
        this.f28410c = j0Var;
        this.f28408a = fVar.m();
        this.f28417j = o0Var;
        this.f28422o = aVar;
        this.f28419l = bVar;
        this.f28420m = aVar2;
        this.f28418k = gVar;
        this.f28421n = nVar;
        this.f28423p = lVar;
        this.f28424q = iVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(Throwable th) {
        this.f28416i.Y("com.crashlytics.on-demand.recorded-exceptions", Integer.toString(this.f28411d.b()));
        this.f28416i.Y("com.crashlytics.on-demand.dropped-exceptions", Integer.toString(this.f28411d.a()));
        this.f28416i.Q(Thread.currentThread(), th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B(String str, String str2) {
        this.f28416i.X(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C(String str, String str2) {
        this.f28416i.Y(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D(String str) {
        this.f28416i.Z(str);
    }

    private void k() {
        try {
            this.f28415h = Boolean.TRUE.equals((Boolean) this.f28424q.f28983a.c().submit(new Callable() { // from class: q7.z
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Boolean u10;
                    u10 = d0.this.u();
                    return u10;
                }
            }).get(3L, TimeUnit.SECONDS));
        } catch (Exception unused) {
            this.f28415h = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public void w(y7.j jVar) {
        r7.i.c();
        I();
        try {
            try {
                this.f28419l.a(new p7.a() { // from class: q7.t
                    @Override // p7.a
                    public final void a(String str) {
                        d0.this.E(str);
                    }
                });
                this.f28416i.V();
            } catch (Exception e10) {
                n7.g.f().e("Crashlytics encountered a problem during asynchronous initialization.", e10);
            }
            if (jVar.b().f33033b.f33040a) {
                if (!this.f28416i.A(jVar)) {
                    n7.g.f().k("Previous sessions could not be finalized.");
                }
                this.f28416i.a0(jVar.a());
                return;
            }
            n7.g.f().b("Collection of crash reports disabled in Crashlytics settings.");
            throw new RuntimeException("Collection of crash reports disabled in Crashlytics settings.");
        } finally {
            H();
        }
    }

    private void r(final y7.j jVar) {
        Future<?> submit = this.f28424q.f28983a.c().submit(new Runnable() { // from class: q7.s
            @Override // java.lang.Runnable
            public final void run() {
                d0.this.w(jVar);
            }
        });
        n7.g.f().b("Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            submit.get(3L, TimeUnit.SECONDS);
        } catch (InterruptedException e10) {
            n7.g.f().e("Crashlytics was interrupted during initialization.", e10);
            Thread.currentThread().interrupt();
        } catch (ExecutionException e11) {
            n7.g.f().e("Crashlytics encountered a problem during initialization.", e11);
        } catch (TimeoutException e12) {
            n7.g.f().e("Crashlytics timed out during initialization.", e12);
        }
    }

    public static String s() {
        return "20.0.0";
    }

    static boolean t(String str, boolean z10) {
        if (!z10) {
            n7.g.f().i("Configured not to require a build ID.");
            return true;
        } else if (!TextUtils.isEmpty(str)) {
            return true;
        } else {
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", ".     |  | ");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".   \\ |  | /");
            Log.e("FirebaseCrashlytics", ".    \\    /");
            Log.e("FirebaseCrashlytics", ".     \\  /");
            Log.e("FirebaseCrashlytics", ".      \\/");
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app's build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin");
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", ".      /\\");
            Log.e("FirebaseCrashlytics", ".     /  \\");
            Log.e("FirebaseCrashlytics", ".    /    \\");
            Log.e("FirebaseCrashlytics", ".   / |  | \\");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean u() {
        return Boolean.valueOf(this.f28416i.t());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(long j10, String str) {
        this.f28416i.e0(j10, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(final long j10, final String str) {
        this.f28424q.f28984b.g(new Runnable() { // from class: q7.c0
            @Override // java.lang.Runnable
            public final void run() {
                d0.this.x(j10, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z(Throwable th, Map map) {
        this.f28416i.d0(Thread.currentThread(), th, map);
    }

    public void E(final String str) {
        final long currentTimeMillis = System.currentTimeMillis() - this.f28412e;
        this.f28424q.f28983a.g(new Runnable() { // from class: q7.v
            @Override // java.lang.Runnable
            public final void run() {
                d0.this.y(currentTimeMillis, str);
            }
        });
    }

    public void F(final Throwable th, final Map map) {
        this.f28424q.f28983a.g(new Runnable() { // from class: q7.b0
            @Override // java.lang.Runnable
            public final void run() {
                d0.this.z(th, map);
            }
        });
    }

    public void G(final Throwable th) {
        n7.g f10 = n7.g.f();
        f10.b("Recorded on-demand fatal events: " + this.f28411d.b());
        n7.g f11 = n7.g.f();
        f11.b("Dropped on-demand fatal events: " + this.f28411d.a());
        this.f28424q.f28983a.g(new Runnable() { // from class: q7.y
            @Override // java.lang.Runnable
            public final void run() {
                d0.this.A(th);
            }
        });
    }

    void H() {
        r7.i.c();
        try {
            if (!this.f28413f.d()) {
                n7.g.f().k("Initialization marker file was not properly removed.");
            }
        } catch (Exception e10) {
            n7.g.f().e("Problem encountered deleting Crashlytics initialization marker.", e10);
        }
    }

    void I() {
        r7.i.c();
        this.f28413f.a();
        n7.g.f().i("Initialization marker file was created.");
    }

    public boolean J(b bVar, y7.j jVar) {
        if (t(bVar.f28389b, j.i(this.f28408a, "com.crashlytics.RequireBuildId", true))) {
            String c10 = new i().c();
            try {
                this.f28414g = new e0("crash_marker", this.f28418k);
                this.f28413f = new e0("initialization_marker", this.f28418k);
                s7.o oVar = new s7.o(c10, this.f28418k, this.f28424q);
                s7.f fVar = new s7.f(this.f28418k);
                z7.a aVar = new z7.a(1024, new z7.c(10));
                this.f28423p.c(oVar);
                this.f28416i = new r(this.f28408a, this.f28417j, this.f28410c, this.f28418k, this.f28414g, bVar, oVar, fVar, h1.j(this.f28408a, this.f28417j, this.f28418k, bVar, fVar, oVar, aVar, jVar, this.f28411d, this.f28421n, this.f28424q), this.f28422o, this.f28420m, this.f28421n, this.f28424q);
                boolean o10 = o();
                k();
                this.f28416i.y(c10, Thread.getDefaultUncaughtExceptionHandler(), jVar);
                if (o10 && j.d(this.f28408a)) {
                    n7.g.f().b("Crashlytics did not finish previous background initialization. Initializing synchronously.");
                    r(jVar);
                    return false;
                }
                n7.g.f().b("Successfully configured exception handler.");
                return true;
            } catch (Exception e10) {
                n7.g.f().e("Crashlytics was not started due to an exception during initialization", e10);
                this.f28416i = null;
                return false;
            }
        }
        throw new IllegalStateException("The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app's build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin");
    }

    public Task K() {
        return this.f28416i.W();
    }

    public void L(Boolean bool) {
        this.f28410c.h(bool);
    }

    public void M(final String str, final String str2) {
        this.f28424q.f28983a.g(new Runnable() { // from class: q7.u
            @Override // java.lang.Runnable
            public final void run() {
                d0.this.B(str, str2);
            }
        });
    }

    public void N(final String str, final String str2) {
        this.f28424q.f28983a.g(new Runnable() { // from class: q7.w
            @Override // java.lang.Runnable
            public final void run() {
                d0.this.C(str, str2);
            }
        });
    }

    public void O(final String str) {
        this.f28424q.f28983a.g(new Runnable() { // from class: q7.x
            @Override // java.lang.Runnable
            public final void run() {
                d0.this.D(str);
            }
        });
    }

    public Task l() {
        return this.f28416i.n();
    }

    public Task m() {
        return this.f28416i.s();
    }

    public boolean n() {
        return this.f28415h;
    }

    boolean o() {
        return this.f28413f.c();
    }

    public Task q(final y7.j jVar) {
        return this.f28424q.f28983a.g(new Runnable() { // from class: q7.a0
            @Override // java.lang.Runnable
            public final void run() {
                d0.this.v(jVar);
            }
        });
    }
}
