package n7;

import java.io.File;
import java.util.concurrent.atomic.AtomicReference;
import k8.a;
import t7.f0;
import t7.g0;
/* loaded from: classes.dex */
public final class d implements n7.a {

    /* renamed from: c  reason: collision with root package name */
    private static final h f26465c = new b();

    /* renamed from: a  reason: collision with root package name */
    private final k8.a f26466a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicReference f26467b = new AtomicReference(null);

    /* loaded from: classes.dex */
    private static final class b implements h {
        private b() {
        }

        @Override // n7.h
        public File a() {
            return null;
        }

        @Override // n7.h
        public File b() {
            return null;
        }

        @Override // n7.h
        public File c() {
            return null;
        }

        @Override // n7.h
        public f0.a d() {
            return null;
        }

        @Override // n7.h
        public File e() {
            return null;
        }

        @Override // n7.h
        public File f() {
            return null;
        }

        @Override // n7.h
        public File g() {
            return null;
        }
    }

    public d(k8.a aVar) {
        this.f26466a = aVar;
        aVar.a(new a.InterfaceC0232a() { // from class: n7.b
            @Override // k8.a.InterfaceC0232a
            public final void a(k8.b bVar) {
                d.this.g(bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(k8.b bVar) {
        g.f().b("Crashlytics native component now available.");
        this.f26467b.set((n7.a) bVar.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(String str, String str2, long j10, g0 g0Var, k8.b bVar) {
        ((n7.a) bVar.get()).d(str, str2, j10, g0Var);
    }

    @Override // n7.a
    public h a(String str) {
        n7.a aVar = (n7.a) this.f26467b.get();
        if (aVar == null) {
            return f26465c;
        }
        return aVar.a(str);
    }

    @Override // n7.a
    public boolean b() {
        n7.a aVar = (n7.a) this.f26467b.get();
        if (aVar != null && aVar.b()) {
            return true;
        }
        return false;
    }

    @Override // n7.a
    public boolean c(String str) {
        n7.a aVar = (n7.a) this.f26467b.get();
        if (aVar != null && aVar.c(str)) {
            return true;
        }
        return false;
    }

    @Override // n7.a
    public void d(final String str, final String str2, final long j10, final g0 g0Var) {
        g f10 = g.f();
        f10.i("Deferring native open session: " + str);
        this.f26466a.a(new a.InterfaceC0232a() { // from class: n7.c
            @Override // k8.a.InterfaceC0232a
            public final void a(k8.b bVar) {
                d.h(str, str2, j10, g0Var, bVar);
            }
        });
    }
}
