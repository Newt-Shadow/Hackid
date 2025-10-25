package dc;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import dc.a;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final List f15142a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private e f15143b;

    /* renamed from: dc.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0149b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f15144a;

        /* renamed from: b  reason: collision with root package name */
        private long f15145b;

        /* renamed from: c  reason: collision with root package name */
        private long f15146c;

        /* renamed from: d  reason: collision with root package name */
        private long f15147d;

        /* renamed from: e  reason: collision with root package name */
        public final String f15148e;

        /* renamed from: f  reason: collision with root package name */
        private final c f15149f;

        C0149b(e eVar, String str) {
            this(eVar, new c(), str);
        }

        void a(long j10, TimeUnit timeUnit) {
            this.f15147d = timeUnit.toMillis(j10);
        }

        void b() {
            this.f15144a = true;
        }

        boolean c() {
            if (this.f15144a) {
                return true;
            }
            return this.f15149f.a(this.f15146c, this.f15145b, this.f15147d);
        }

        void d(e eVar) {
            this.f15146c = eVar.a();
            this.f15145b = eVar.b();
        }

        public C0149b(e eVar, c cVar, String str) {
            this.f15149f = cVar;
            this.f15144a = false;
            this.f15146c = eVar == null ? 0L : eVar.a();
            this.f15145b = eVar != null ? eVar.b() : 0L;
            this.f15147d = Long.MAX_VALUE;
            this.f15148e = str;
        }
    }

    /* loaded from: classes.dex */
    public static class c {
        public boolean a(long j10, long j11, long j12) {
            return j11 - j10 >= j12;
        }
    }

    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private C0149b f15150a;

        /* renamed from: b  reason: collision with root package name */
        private final a.b f15151b;

        /* renamed from: c  reason: collision with root package name */
        private final ICommonExecutor f15152c;

        public void a(long j10) {
            this.f15150a.a(j10, TimeUnit.SECONDS);
        }

        public boolean b(int i10) {
            if (this.f15150a.c()) {
                this.f15151b.c(TimeUnit.SECONDS.toMillis(i10), this.f15152c);
                this.f15150a.b();
                return true;
            }
            return false;
        }

        public void c(e eVar) {
            this.f15150a.d(eVar);
        }

        private d(ICommonExecutor iCommonExecutor, a.b bVar, C0149b c0149b) {
            this.f15151b = bVar;
            this.f15150a = c0149b;
            this.f15152c = iCommonExecutor;
        }
    }

    synchronized d a(ICommonExecutor iCommonExecutor, a.b bVar, C0149b c0149b) {
        d dVar;
        dVar = new d(iCommonExecutor, bVar, c0149b);
        this.f15142a.add(dVar);
        return dVar;
    }

    public synchronized d b(Runnable runnable, ICommonExecutor iCommonExecutor, String str) {
        return a(iCommonExecutor, new a.b(runnable), new C0149b(this.f15143b, str));
    }

    public void c(e eVar) {
        ArrayList<d> arrayList;
        synchronized (this) {
            this.f15143b = eVar;
            arrayList = new ArrayList(this.f15142a);
        }
        for (d dVar : arrayList) {
            dVar.c(eVar);
        }
    }
}
