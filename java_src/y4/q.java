package y4;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import y4.l;
/* loaded from: classes.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private final d f32933a;

    /* renamed from: b  reason: collision with root package name */
    private final n f32934b;

    /* renamed from: c  reason: collision with root package name */
    private final b f32935c;

    /* renamed from: d  reason: collision with root package name */
    private final CopyOnWriteArraySet f32936d;

    /* renamed from: e  reason: collision with root package name */
    private final ArrayDeque f32937e;

    /* renamed from: f  reason: collision with root package name */
    private final ArrayDeque f32938f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f32939g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f32940h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f32941i;

    /* loaded from: classes.dex */
    public interface a {
        void invoke(Object obj);
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(Object obj, l lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final Object f32942a;

        /* renamed from: b  reason: collision with root package name */
        private l.b f32943b = new l.b();

        /* renamed from: c  reason: collision with root package name */
        private boolean f32944c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f32945d;

        public c(Object obj) {
            this.f32942a = obj;
        }

        public void a(int i10, a aVar) {
            if (!this.f32945d) {
                if (i10 != -1) {
                    this.f32943b.a(i10);
                }
                this.f32944c = true;
                aVar.invoke(this.f32942a);
            }
        }

        public void b(b bVar) {
            if (!this.f32945d && this.f32944c) {
                l e10 = this.f32943b.e();
                this.f32943b = new l.b();
                this.f32944c = false;
                bVar.a(this.f32942a, e10);
            }
        }

        public void c(b bVar) {
            this.f32945d = true;
            if (this.f32944c) {
                this.f32944c = false;
                bVar.a(this.f32942a, this.f32943b.e());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && c.class == obj.getClass()) {
                return this.f32942a.equals(((c) obj).f32942a);
            }
            return false;
        }

        public int hashCode() {
            return this.f32942a.hashCode();
        }
    }

    public q(Looper looper, d dVar, b bVar) {
        this(new CopyOnWriteArraySet(), looper, dVar, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(Message message) {
        Iterator it = this.f32936d.iterator();
        while (it.hasNext()) {
            ((c) it.next()).b(this.f32935c);
            if (this.f32934b.d(0)) {
                return true;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(CopyOnWriteArraySet copyOnWriteArraySet, int i10, a aVar) {
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((c) it.next()).a(i10, aVar);
        }
    }

    private void l() {
        boolean z10;
        if (!this.f32941i) {
            return;
        }
        if (Thread.currentThread() == this.f32934b.getLooper().getThread()) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
    }

    public void c(Object obj) {
        y4.a.e(obj);
        synchronized (this.f32939g) {
            if (this.f32940h) {
                return;
            }
            this.f32936d.add(new c(obj));
        }
    }

    public q d(Looper looper, d dVar, b bVar) {
        return new q(this.f32936d, looper, dVar, bVar);
    }

    public q e(Looper looper, b bVar) {
        return d(looper, this.f32933a, bVar);
    }

    public void f() {
        l();
        if (this.f32938f.isEmpty()) {
            return;
        }
        if (!this.f32934b.d(0)) {
            n nVar = this.f32934b;
            nVar.h(nVar.c(0));
        }
        boolean z10 = !this.f32937e.isEmpty();
        this.f32937e.addAll(this.f32938f);
        this.f32938f.clear();
        if (z10) {
            return;
        }
        while (!this.f32937e.isEmpty()) {
            ((Runnable) this.f32937e.peekFirst()).run();
            this.f32937e.removeFirst();
        }
    }

    public void i(final int i10, final a aVar) {
        l();
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.f32936d);
        this.f32938f.add(new Runnable() { // from class: y4.p
            @Override // java.lang.Runnable
            public final void run() {
                q.h(copyOnWriteArraySet, i10, aVar);
            }
        });
    }

    public void j() {
        l();
        synchronized (this.f32939g) {
            this.f32940h = true;
        }
        Iterator it = this.f32936d.iterator();
        while (it.hasNext()) {
            ((c) it.next()).c(this.f32935c);
        }
        this.f32936d.clear();
    }

    public void k(int i10, a aVar) {
        i(i10, aVar);
        f();
    }

    private q(CopyOnWriteArraySet copyOnWriteArraySet, Looper looper, d dVar, b bVar) {
        this.f32933a = dVar;
        this.f32936d = copyOnWriteArraySet;
        this.f32935c = bVar;
        this.f32939g = new Object();
        this.f32937e = new ArrayDeque();
        this.f32938f = new ArrayDeque();
        this.f32934b = dVar.a(looper, new Handler.Callback() { // from class: y4.o
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean g10;
                g10 = q.this.g(message);
                return g10;
            }
        });
        this.f32941i = true;
    }
}
