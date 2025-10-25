package yd;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import td.u0;
/* loaded from: classes2.dex */
public final class m extends td.i0 implements u0 {

    /* renamed from: i  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f33268i = AtomicIntegerFieldUpdater.newUpdater(m.class, "runningWorkers$volatile");

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ u0 f33269c;

    /* renamed from: d  reason: collision with root package name */
    private final td.i0 f33270d;

    /* renamed from: e  reason: collision with root package name */
    private final int f33271e;

    /* renamed from: f  reason: collision with root package name */
    private final String f33272f;

    /* renamed from: g  reason: collision with root package name */
    private final r f33273g;

    /* renamed from: h  reason: collision with root package name */
    private final Object f33274h;
    private volatile /* synthetic */ int runningWorkers$volatile;

    /* loaded from: classes2.dex */
    private final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private Runnable f33275a;

        public a(Runnable runnable) {
            this.f33275a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10 = 0;
            while (true) {
                try {
                    this.f33275a.run();
                } catch (Throwable th) {
                    td.k0.a(ad.j.f295a, th);
                }
                Runnable V0 = m.this.V0();
                if (V0 == null) {
                    return;
                }
                this.f33275a = V0;
                i10++;
                if (i10 >= 16 && m.this.f33270d.t0(m.this)) {
                    m.this.f33270d.q0(m.this, this);
                    return;
                }
            }
        }
    }

    public m(td.i0 i0Var, int i10, String str) {
        u0 u0Var;
        if (i0Var instanceof u0) {
            u0Var = (u0) i0Var;
        } else {
            u0Var = null;
        }
        this.f33269c = u0Var == null ? td.r0.a() : u0Var;
        this.f33270d = i0Var;
        this.f33271e = i10;
        this.f33272f = str;
        this.f33273g = new r(false);
        this.f33274h = new Object();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Runnable V0() {
        while (true) {
            Runnable runnable = (Runnable) this.f33273g.e();
            if (runnable == null) {
                synchronized (this.f33274h) {
                    f33268i.decrementAndGet(this);
                    if (this.f33273g.c() == 0) {
                        return null;
                    }
                    f33268i.incrementAndGet(this);
                }
            } else {
                return runnable;
            }
        }
    }

    private final boolean W0() {
        synchronized (this.f33274h) {
            if (f33268i.get(this) >= this.f33271e) {
                return false;
            }
            f33268i.incrementAndGet(this);
            return true;
        }
    }

    @Override // td.i0
    public td.i0 A0(int i10, String str) {
        n.a(i10);
        if (i10 >= this.f33271e) {
            return n.b(this, str);
        }
        return super.A0(i10, str);
    }

    @Override // td.u0
    public void h(long j10, td.l lVar) {
        this.f33269c.h(j10, lVar);
    }

    @Override // td.i0
    public void q0(ad.i iVar, Runnable runnable) {
        Runnable V0;
        this.f33273g.a(runnable);
        if (f33268i.get(this) < this.f33271e && W0() && (V0 = V0()) != null) {
            this.f33270d.q0(this, new a(V0));
        }
    }

    @Override // td.i0
    public String toString() {
        String str = this.f33272f;
        if (str == null) {
            return this.f33270d + ".limitedParallelism(" + this.f33271e + ')';
        }
        return str;
    }
}
