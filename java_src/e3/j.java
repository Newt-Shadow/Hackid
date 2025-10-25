package e3;

import java.util.ArrayDeque;
/* loaded from: classes.dex */
public abstract class j implements d {

    /* renamed from: a  reason: collision with root package name */
    private final Thread f15304a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f15305b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque f15306c = new ArrayDeque();

    /* renamed from: d  reason: collision with root package name */
    private final ArrayDeque f15307d = new ArrayDeque();

    /* renamed from: e  reason: collision with root package name */
    private final g[] f15308e;

    /* renamed from: f  reason: collision with root package name */
    private final h[] f15309f;

    /* renamed from: g  reason: collision with root package name */
    private int f15310g;

    /* renamed from: h  reason: collision with root package name */
    private int f15311h;

    /* renamed from: i  reason: collision with root package name */
    private g f15312i;

    /* renamed from: j  reason: collision with root package name */
    private f f15313j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f15314k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f15315l;

    /* renamed from: m  reason: collision with root package name */
    private int f15316m;

    /* loaded from: classes.dex */
    class a extends Thread {
        a(String str) {
            super(str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            j.this.t();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j(g[] gVarArr, h[] hVarArr) {
        this.f15308e = gVarArr;
        this.f15310g = gVarArr.length;
        for (int i10 = 0; i10 < this.f15310g; i10++) {
            this.f15308e[i10] = g();
        }
        this.f15309f = hVarArr;
        this.f15311h = hVarArr.length;
        for (int i11 = 0; i11 < this.f15311h; i11++) {
            this.f15309f[i11] = h();
        }
        a aVar = new a("ExoPlayer:SimpleDecoder");
        this.f15304a = aVar;
        aVar.start();
    }

    private boolean f() {
        if (!this.f15306c.isEmpty() && this.f15311h > 0) {
            return true;
        }
        return false;
    }

    private boolean k() {
        f i10;
        synchronized (this.f15305b) {
            while (!this.f15315l && !f()) {
                this.f15305b.wait();
            }
            if (this.f15315l) {
                return false;
            }
            g gVar = (g) this.f15306c.removeFirst();
            h[] hVarArr = this.f15309f;
            int i11 = this.f15311h - 1;
            this.f15311h = i11;
            h hVar = hVarArr[i11];
            boolean z10 = this.f15314k;
            this.f15314k = false;
            if (gVar.q()) {
                hVar.j(4);
            } else {
                if (gVar.p()) {
                    hVar.j(Integer.MIN_VALUE);
                }
                if (gVar.r()) {
                    hVar.j(134217728);
                }
                try {
                    i10 = j(gVar, hVar, z10);
                } catch (OutOfMemoryError e10) {
                    i10 = i(e10);
                } catch (RuntimeException e11) {
                    i10 = i(e11);
                }
                if (i10 != null) {
                    synchronized (this.f15305b) {
                        this.f15313j = i10;
                    }
                    return false;
                }
            }
            synchronized (this.f15305b) {
                if (this.f15314k) {
                    hVar.v();
                } else if (hVar.p()) {
                    this.f15316m++;
                    hVar.v();
                } else {
                    hVar.f15298c = this.f15316m;
                    this.f15316m = 0;
                    this.f15307d.addLast(hVar);
                }
                q(gVar);
            }
            return true;
        }
    }

    private void n() {
        if (f()) {
            this.f15305b.notify();
        }
    }

    private void o() {
        f fVar = this.f15313j;
        if (fVar == null) {
            return;
        }
        throw fVar;
    }

    private void q(g gVar) {
        gVar.l();
        g[] gVarArr = this.f15308e;
        int i10 = this.f15310g;
        this.f15310g = i10 + 1;
        gVarArr[i10] = gVar;
    }

    private void s(h hVar) {
        hVar.l();
        h[] hVarArr = this.f15309f;
        int i10 = this.f15311h;
        this.f15311h = i10 + 1;
        hVarArr[i10] = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        do {
            try {
            } catch (InterruptedException e10) {
                throw new IllegalStateException(e10);
            }
        } while (k());
    }

    @Override // e3.d
    public final void flush() {
        synchronized (this.f15305b) {
            this.f15314k = true;
            this.f15316m = 0;
            g gVar = this.f15312i;
            if (gVar != null) {
                q(gVar);
                this.f15312i = null;
            }
            while (!this.f15306c.isEmpty()) {
                q((g) this.f15306c.removeFirst());
            }
            while (!this.f15307d.isEmpty()) {
                ((h) this.f15307d.removeFirst()).v();
            }
        }
    }

    protected abstract g g();

    protected abstract h h();

    protected abstract f i(Throwable th);

    protected abstract f j(g gVar, h hVar, boolean z10);

    @Override // e3.d
    /* renamed from: l */
    public final g c() {
        boolean z10;
        g gVar;
        synchronized (this.f15305b) {
            o();
            if (this.f15312i == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            y4.a.f(z10);
            int i10 = this.f15310g;
            if (i10 == 0) {
                gVar = null;
            } else {
                g[] gVarArr = this.f15308e;
                int i11 = i10 - 1;
                this.f15310g = i11;
                gVar = gVarArr[i11];
            }
            this.f15312i = gVar;
        }
        return gVar;
    }

    @Override // e3.d
    /* renamed from: m */
    public final h b() {
        synchronized (this.f15305b) {
            o();
            if (this.f15307d.isEmpty()) {
                return null;
            }
            return (h) this.f15307d.removeFirst();
        }
    }

    @Override // e3.d
    /* renamed from: p */
    public final void d(g gVar) {
        boolean z10;
        synchronized (this.f15305b) {
            o();
            if (gVar == this.f15312i) {
                z10 = true;
            } else {
                z10 = false;
            }
            y4.a.a(z10);
            this.f15306c.addLast(gVar);
            n();
            this.f15312i = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void r(h hVar) {
        synchronized (this.f15305b) {
            s(hVar);
            n();
        }
    }

    @Override // e3.d
    public void release() {
        synchronized (this.f15305b) {
            this.f15315l = true;
            this.f15305b.notify();
        }
        try {
            this.f15304a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void u(int i10) {
        boolean z10;
        if (this.f15310g == this.f15308e.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        for (g gVar : this.f15308e) {
            gVar.w(i10);
        }
    }
}
