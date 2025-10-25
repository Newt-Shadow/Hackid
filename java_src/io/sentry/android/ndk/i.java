package io.sentry.android.ndk;

import io.sentry.f3;
import io.sentry.j5;
import io.sentry.protocol.b0;
import io.sentry.s5;
import io.sentry.util.q;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes2.dex */
public final class i extends f3 {

    /* renamed from: a  reason: collision with root package name */
    private final s5 f22532a;

    /* renamed from: b  reason: collision with root package name */
    private final b f22533b;

    public i(s5 s5Var) {
        this(s5Var, new NativeScope());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(io.sentry.e eVar) {
        String str;
        String str2 = null;
        if (eVar.j() != null) {
            str = eVar.j().name().toLowerCase(Locale.ROOT);
        } else {
            str = null;
        }
        String g10 = io.sentry.j.g(eVar.l());
        try {
            Map i10 = eVar.i();
            if (!i10.isEmpty()) {
                str2 = this.f22532a.getSerializer().f(i10);
            }
        } catch (Throwable th) {
            this.f22532a.getLogger().a(j5.ERROR, th, "Breadcrumb data is not serializable.", new Object[0]);
        }
        this.f22533b.f(str, eVar.k(), eVar.h(), eVar.m(), g10, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s(String str) {
        this.f22533b.a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(String str) {
        this.f22533b.c(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(String str, String str2) {
        this.f22533b.b(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(String str, String str2) {
        this.f22533b.d(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(b0 b0Var) {
        if (b0Var == null) {
            this.f22533b.g();
        } else {
            this.f22533b.e(b0Var.m(), b0Var.l(), b0Var.n(), b0Var.p());
        }
    }

    @Override // io.sentry.f3, io.sentry.v0
    public void a(final String str) {
        try {
            this.f22532a.getExecutorService().submit(new Runnable() { // from class: io.sentry.android.ndk.c
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.s(str);
                }
            });
        } catch (Throwable th) {
            this.f22532a.getLogger().a(j5.ERROR, th, "Scope sync removeExtra(%s) has an error.", str);
        }
    }

    @Override // io.sentry.f3, io.sentry.v0
    public void b(final String str, final String str2) {
        try {
            this.f22532a.getExecutorService().submit(new Runnable() { // from class: io.sentry.android.ndk.f
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.v(str, str2);
                }
            });
        } catch (Throwable th) {
            this.f22532a.getLogger().a(j5.ERROR, th, "Scope sync setExtra(%s) has an error.", str);
        }
    }

    @Override // io.sentry.f3, io.sentry.v0
    public void c(final String str) {
        try {
            this.f22532a.getExecutorService().submit(new Runnable() { // from class: io.sentry.android.ndk.d
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.u(str);
                }
            });
        } catch (Throwable th) {
            this.f22532a.getLogger().a(j5.ERROR, th, "Scope sync removeTag(%s) has an error.", str);
        }
    }

    @Override // io.sentry.f3, io.sentry.v0
    public void d(final String str, final String str2) {
        try {
            this.f22532a.getExecutorService().submit(new Runnable() { // from class: io.sentry.android.ndk.g
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.w(str, str2);
                }
            });
        } catch (Throwable th) {
            this.f22532a.getLogger().a(j5.ERROR, th, "Scope sync setTag(%s) has an error.", str);
        }
    }

    @Override // io.sentry.v0
    public void n(final b0 b0Var) {
        try {
            this.f22532a.getExecutorService().submit(new Runnable() { // from class: io.sentry.android.ndk.e
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.x(b0Var);
                }
            });
        } catch (Throwable th) {
            this.f22532a.getLogger().a(j5.ERROR, th, "Scope sync setUser has an error.", new Object[0]);
        }
    }

    @Override // io.sentry.v0
    public void t(final io.sentry.e eVar) {
        try {
            this.f22532a.getExecutorService().submit(new Runnable() { // from class: io.sentry.android.ndk.h
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.r(eVar);
                }
            });
        } catch (Throwable th) {
            this.f22532a.getLogger().a(j5.ERROR, th, "Scope sync addBreadcrumb has an error.", new Object[0]);
        }
    }

    i(s5 s5Var, b bVar) {
        this.f22532a = (s5) q.c(s5Var, "The SentryOptions object is required.");
        this.f22533b = (b) q.c(bVar, "The NativeScope object is required.");
    }
}
