package m;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public class c extends e {

    /* renamed from: c  reason: collision with root package name */
    private static volatile c f25570c;

    /* renamed from: d  reason: collision with root package name */
    private static final Executor f25571d = new Executor() { // from class: m.a
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            c.g(runnable);
        }
    };

    /* renamed from: e  reason: collision with root package name */
    private static final Executor f25572e = new Executor() { // from class: m.b
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            c.h(runnable);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private e f25573a;

    /* renamed from: b  reason: collision with root package name */
    private final e f25574b;

    private c() {
        d dVar = new d();
        this.f25574b = dVar;
        this.f25573a = dVar;
    }

    public static c f() {
        if (f25570c != null) {
            return f25570c;
        }
        synchronized (c.class) {
            if (f25570c == null) {
                f25570c = new c();
            }
        }
        return f25570c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(Runnable runnable) {
        f().c(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(Runnable runnable) {
        f().a(runnable);
    }

    @Override // m.e
    public void a(Runnable runnable) {
        this.f25573a.a(runnable);
    }

    @Override // m.e
    public boolean b() {
        return this.f25573a.b();
    }

    @Override // m.e
    public void c(Runnable runnable) {
        this.f25573a.c(runnable);
    }
}
