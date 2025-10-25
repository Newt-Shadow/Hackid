package r7;

import android.os.Looper;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.m;
import r7.i;
import rd.b0;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: e  reason: collision with root package name */
    public static final a f28981e = new a(null);

    /* renamed from: f  reason: collision with root package name */
    private static boolean f28982f;

    /* renamed from: a  reason: collision with root package name */
    public final e f28983a;

    /* renamed from: b  reason: collision with root package name */
    public final e f28984b;

    /* renamed from: c  reason: collision with root package name */
    public final e f28985c;

    /* renamed from: d  reason: collision with root package name */
    public final e f28986d;

    /* loaded from: classes.dex */
    public static final class a {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: r7.i$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public /* synthetic */ class C0300a extends k implements id.a {
            C0300a(Object obj) {
                super(0, obj, a.class, "isBackgroundThread", "isBackgroundThread()Z", 0);
            }

            @Override // id.a
            /* renamed from: f */
            public final Boolean invoke() {
                return Boolean.valueOf(((a) this.receiver).p());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public /* synthetic */ class b extends k implements id.a {
            b(Object obj) {
                super(0, obj, a.class, "isBlockingThread", "isBlockingThread()Z", 0);
            }

            @Override // id.a
            /* renamed from: f */
            public final Boolean invoke() {
                return Boolean.valueOf(((a) this.receiver).q());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public /* synthetic */ class c extends k implements id.a {
            c(Object obj) {
                super(0, obj, a.class, "isNotMainThread", "isNotMainThread()Z", 0);
            }

            @Override // id.a
            /* renamed from: f */
            public final Boolean invoke() {
                return Boolean.valueOf(((a) this.receiver).r());
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String h() {
            return "Must be called on a background thread, was called on " + i.f28981e.o() + '.';
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String j() {
            return "Must be called on a blocking thread, was called on " + i.f28981e.o() + '.';
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String l() {
            return "Must not be called on a main thread, was called on " + i.f28981e.o() + '.';
        }

        private final void m(id.a aVar, id.a aVar2) {
            if (!((Boolean) aVar.invoke()).booleanValue()) {
                n7.g.f().b((String) aVar2.invoke());
                n();
            }
        }

        private final String o() {
            return Thread.currentThread().getName();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean p() {
            boolean N;
            String o10 = o();
            m.d(o10, "<get-threadName>(...)");
            N = b0.N(o10, "Firebase Background Thread #", false, 2, null);
            return N;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean q() {
            boolean N;
            String o10 = o();
            m.d(o10, "<get-threadName>(...)");
            N = b0.N(o10, "Firebase Blocking Thread #", false, 2, null);
            return N;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean r() {
            return !Looper.getMainLooper().isCurrentThread();
        }

        public final void g() {
            m(new C0300a(this), new id.a() { // from class: r7.f
                @Override // id.a
                public final Object invoke() {
                    String h10;
                    h10 = i.a.h();
                    return h10;
                }
            });
        }

        public final void i() {
            m(new b(this), new id.a() { // from class: r7.h
                @Override // id.a
                public final Object invoke() {
                    String j10;
                    j10 = i.a.j();
                    return j10;
                }
            });
        }

        public final void k() {
            m(new c(this), new id.a() { // from class: r7.g
                @Override // id.a
                public final Object invoke() {
                    String l10;
                    l10 = i.a.l();
                    return l10;
                }
            });
        }

        public final boolean n() {
            return i.f28982f;
        }

        public final void s(boolean z10) {
            i.f28982f = z10;
        }
    }

    public i(ExecutorService backgroundExecutorService, ExecutorService blockingExecutorService) {
        m.e(backgroundExecutorService, "backgroundExecutorService");
        m.e(blockingExecutorService, "blockingExecutorService");
        this.f28983a = new e(backgroundExecutorService);
        this.f28984b = new e(backgroundExecutorService);
        this.f28985c = new e(backgroundExecutorService);
        this.f28986d = new e(blockingExecutorService);
    }

    public static final void c() {
        f28981e.g();
    }

    public static final void d() {
        f28981e.i();
    }

    public static final void e() {
        f28981e.k();
    }

    public static final void f(boolean z10) {
        f28981e.s(z10);
    }
}
