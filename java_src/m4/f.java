package m4;

import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import o6.q;
/* loaded from: classes.dex */
public final class f implements i {

    /* renamed from: a  reason: collision with root package name */
    private final c f25725a = new c();

    /* renamed from: b  reason: collision with root package name */
    private final l f25726b = new l();

    /* renamed from: c  reason: collision with root package name */
    private final Deque f25727c = new ArrayDeque();

    /* renamed from: d  reason: collision with root package name */
    private int f25728d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f25729e;

    /* loaded from: classes.dex */
    class a extends m {
        a() {
        }

        @Override // e3.h
        public void v() {
            f.this.i(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b implements h {

        /* renamed from: a  reason: collision with root package name */
        private final long f25731a;

        /* renamed from: b  reason: collision with root package name */
        private final q f25732b;

        public b(long j10, q qVar) {
            this.f25731a = j10;
            this.f25732b = qVar;
        }

        @Override // m4.h
        public int a(long j10) {
            if (this.f25731a > j10) {
                return 0;
            }
            return -1;
        }

        @Override // m4.h
        public long b(int i10) {
            boolean z10;
            if (i10 == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            y4.a.a(z10);
            return this.f25731a;
        }

        @Override // m4.h
        public List f(long j10) {
            if (j10 >= this.f25731a) {
                return this.f25732b;
            }
            return q.D();
        }

        @Override // m4.h
        public int i() {
            return 1;
        }
    }

    public f() {
        for (int i10 = 0; i10 < 2; i10++) {
            this.f25727c.addFirst(new a());
        }
        this.f25728d = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(m mVar) {
        boolean z10;
        if (this.f25727c.size() < 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        y4.a.a(!this.f25727c.contains(mVar));
        mVar.l();
        this.f25727c.addFirst(mVar);
    }

    @Override // m4.i
    public void a(long j10) {
    }

    @Override // e3.d
    /* renamed from: f */
    public l c() {
        y4.a.f(!this.f25729e);
        if (this.f25728d != 0) {
            return null;
        }
        this.f25728d = 1;
        return this.f25726b;
    }

    @Override // e3.d
    public void flush() {
        y4.a.f(!this.f25729e);
        this.f25726b.l();
        this.f25728d = 0;
    }

    @Override // e3.d
    /* renamed from: g */
    public m b() {
        y4.a.f(!this.f25729e);
        if (this.f25728d == 2 && !this.f25727c.isEmpty()) {
            m mVar = (m) this.f25727c.removeFirst();
            if (this.f25726b.q()) {
                mVar.j(4);
            } else {
                l lVar = this.f25726b;
                mVar.w(this.f25726b.f15291e, new b(lVar.f15291e, this.f25725a.a(((ByteBuffer) y4.a.e(lVar.f15289c)).array())), 0L);
            }
            this.f25726b.l();
            this.f25728d = 0;
            return mVar;
        }
        return null;
    }

    @Override // e3.d
    /* renamed from: h */
    public void d(l lVar) {
        boolean z10;
        boolean z11 = true;
        y4.a.f(!this.f25729e);
        if (this.f25728d == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        if (this.f25726b != lVar) {
            z11 = false;
        }
        y4.a.a(z11);
        this.f25728d = 2;
    }

    @Override // e3.d
    public void release() {
        this.f25729e = true;
    }
}
