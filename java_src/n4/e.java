package n4;

import e3.h;
import java.util.ArrayDeque;
import java.util.PriorityQueue;
import m4.i;
import m4.l;
import m4.m;
import n4.e;
import y4.q0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class e implements i {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayDeque f26227a = new ArrayDeque();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayDeque f26228b;

    /* renamed from: c  reason: collision with root package name */
    private final PriorityQueue f26229c;

    /* renamed from: d  reason: collision with root package name */
    private b f26230d;

    /* renamed from: e  reason: collision with root package name */
    private long f26231e;

    /* renamed from: f  reason: collision with root package name */
    private long f26232f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b extends l implements Comparable {

        /* renamed from: j  reason: collision with root package name */
        private long f26233j;

        private b() {
        }

        @Override // java.lang.Comparable
        /* renamed from: C */
        public int compareTo(b bVar) {
            if (q() != bVar.q()) {
                if (q()) {
                    return 1;
                }
                return -1;
            }
            long j10 = this.f15291e - bVar.f15291e;
            if (j10 == 0) {
                j10 = this.f26233j - bVar.f26233j;
                if (j10 == 0) {
                    return 0;
                }
            }
            if (j10 > 0) {
                return 1;
            }
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c extends m {

        /* renamed from: f  reason: collision with root package name */
        private h.a f26234f;

        public c(h.a aVar) {
            this.f26234f = aVar;
        }

        @Override // e3.h
        public final void v() {
            this.f26234f.a(this);
        }
    }

    public e() {
        for (int i10 = 0; i10 < 10; i10++) {
            this.f26227a.add(new b());
        }
        this.f26228b = new ArrayDeque();
        for (int i11 = 0; i11 < 2; i11++) {
            this.f26228b.add(new c(new h.a() { // from class: n4.d
                @Override // e3.h.a
                public final void a(h hVar) {
                    e.this.n((e.c) hVar);
                }
            }));
        }
        this.f26229c = new PriorityQueue();
    }

    private void m(b bVar) {
        bVar.l();
        this.f26227a.add(bVar);
    }

    @Override // m4.i
    public void a(long j10) {
        this.f26231e = j10;
    }

    protected abstract m4.h e();

    protected abstract void f(l lVar);

    @Override // e3.d
    public void flush() {
        this.f26232f = 0L;
        this.f26231e = 0L;
        while (!this.f26229c.isEmpty()) {
            m((b) q0.j((b) this.f26229c.poll()));
        }
        b bVar = this.f26230d;
        if (bVar != null) {
            m(bVar);
            this.f26230d = null;
        }
    }

    @Override // e3.d
    /* renamed from: g */
    public l c() {
        boolean z10;
        if (this.f26230d == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        if (this.f26227a.isEmpty()) {
            return null;
        }
        b bVar = (b) this.f26227a.pollFirst();
        this.f26230d = bVar;
        return bVar;
    }

    @Override // e3.d
    /* renamed from: h */
    public m b() {
        if (this.f26228b.isEmpty()) {
            return null;
        }
        while (!this.f26229c.isEmpty() && ((b) q0.j((b) this.f26229c.peek())).f15291e <= this.f26231e) {
            b bVar = (b) q0.j((b) this.f26229c.poll());
            if (bVar.q()) {
                m mVar = (m) q0.j((m) this.f26228b.pollFirst());
                mVar.j(4);
                m(bVar);
                return mVar;
            }
            f(bVar);
            if (k()) {
                m4.h e10 = e();
                m mVar2 = (m) q0.j((m) this.f26228b.pollFirst());
                mVar2.w(bVar.f15291e, e10, Long.MAX_VALUE);
                m(bVar);
                return mVar2;
            }
            m(bVar);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final m i() {
        return (m) this.f26228b.pollFirst();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long j() {
        return this.f26231e;
    }

    protected abstract boolean k();

    @Override // e3.d
    /* renamed from: l */
    public void d(l lVar) {
        boolean z10;
        if (lVar == this.f26230d) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        b bVar = (b) lVar;
        if (bVar.p()) {
            m(bVar);
        } else {
            long j10 = this.f26232f;
            this.f26232f = 1 + j10;
            bVar.f26233j = j10;
            this.f26229c.add(bVar);
        }
        this.f26230d = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void n(m mVar) {
        mVar.l();
        this.f26228b.add(mVar);
    }

    @Override // e3.d
    public void release() {
    }
}
