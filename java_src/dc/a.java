package dc;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    public static final long f15131c = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: a  reason: collision with root package name */
    private long f15132a;

    /* renamed from: b  reason: collision with root package name */
    private final dc.c f15133b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: dc.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0146a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f15134a;

        RunnableC0146a(c cVar) {
            this.f15134a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15134a.onWaitFinished();
        }
    }

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f15136a;

        /* renamed from: b  reason: collision with root package name */
        private final c f15137b;

        /* renamed from: c  reason: collision with root package name */
        private final a f15138c;

        /* renamed from: dc.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0147a implements c {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Runnable f15139a;

            C0147a(Runnable runnable) {
                this.f15139a = runnable;
            }

            @Override // dc.a.c
            public void onWaitFinished() {
                b.this.f15136a = true;
                this.f15139a.run();
            }
        }

        /* renamed from: dc.a$b$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class RunnableC0148b implements Runnable {
            RunnableC0148b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.f15137b.onWaitFinished();
            }
        }

        public b(Runnable runnable) {
            this(runnable, f.c().a());
        }

        public void c(long j10, ICommonExecutor iCommonExecutor) {
            if (!this.f15136a) {
                this.f15138c.b(j10, iCommonExecutor, this.f15137b);
            } else {
                iCommonExecutor.execute(new RunnableC0148b());
            }
        }

        b(Runnable runnable, a aVar) {
            this.f15136a = false;
            this.f15137b = new C0147a(runnable);
            this.f15138c = aVar;
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        void onWaitFinished();
    }

    public a() {
        this(new dc.c());
    }

    public void a() {
        this.f15132a = this.f15133b.currentTimeMillis();
    }

    public void b(long j10, ICommonExecutor iCommonExecutor, c cVar) {
        iCommonExecutor.executeDelayed(new RunnableC0146a(cVar), Math.max(j10 - (this.f15133b.currentTimeMillis() - this.f15132a), 0L));
    }

    a(dc.c cVar) {
        this.f15133b = cVar;
    }
}
