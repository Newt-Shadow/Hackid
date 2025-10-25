package b3;

import android.os.Looper;
import java.util.concurrent.TimeoutException;
/* loaded from: classes.dex */
public final class p3 {

    /* renamed from: a  reason: collision with root package name */
    private final b f4320a;

    /* renamed from: b  reason: collision with root package name */
    private final a f4321b;

    /* renamed from: c  reason: collision with root package name */
    private final y4.d f4322c;

    /* renamed from: d  reason: collision with root package name */
    private final g4 f4323d;

    /* renamed from: e  reason: collision with root package name */
    private int f4324e;

    /* renamed from: f  reason: collision with root package name */
    private Object f4325f;

    /* renamed from: g  reason: collision with root package name */
    private Looper f4326g;

    /* renamed from: h  reason: collision with root package name */
    private int f4327h;

    /* renamed from: i  reason: collision with root package name */
    private long f4328i = -9223372036854775807L;

    /* renamed from: j  reason: collision with root package name */
    private boolean f4329j = true;

    /* renamed from: k  reason: collision with root package name */
    private boolean f4330k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f4331l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f4332m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f4333n;

    /* loaded from: classes.dex */
    public interface a {
        void d(p3 p3Var);
    }

    /* loaded from: classes.dex */
    public interface b {
        void y(int i10, Object obj);
    }

    public p3(a aVar, b bVar, g4 g4Var, int i10, y4.d dVar, Looper looper) {
        this.f4321b = aVar;
        this.f4320a = bVar;
        this.f4323d = g4Var;
        this.f4326g = looper;
        this.f4322c = dVar;
        this.f4327h = i10;
    }

    public synchronized boolean a(long j10) {
        boolean z10;
        boolean z11;
        y4.a.f(this.f4330k);
        if (this.f4326g.getThread() != Thread.currentThread()) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        long elapsedRealtime = this.f4322c.elapsedRealtime() + j10;
        while (true) {
            z11 = this.f4332m;
            if (z11 || j10 <= 0) {
                break;
            }
            this.f4322c.b();
            wait(j10);
            j10 = elapsedRealtime - this.f4322c.elapsedRealtime();
        }
        if (z11) {
        } else {
            throw new TimeoutException("Message delivery timed out.");
        }
        return this.f4331l;
    }

    public boolean b() {
        return this.f4329j;
    }

    public Looper c() {
        return this.f4326g;
    }

    public int d() {
        return this.f4327h;
    }

    public Object e() {
        return this.f4325f;
    }

    public long f() {
        return this.f4328i;
    }

    public b g() {
        return this.f4320a;
    }

    public g4 h() {
        return this.f4323d;
    }

    public int i() {
        return this.f4324e;
    }

    public synchronized boolean j() {
        return this.f4333n;
    }

    public synchronized void k(boolean z10) {
        this.f4331l = z10 | this.f4331l;
        this.f4332m = true;
        notifyAll();
    }

    public p3 l() {
        y4.a.f(!this.f4330k);
        if (this.f4328i == -9223372036854775807L) {
            y4.a.a(this.f4329j);
        }
        this.f4330k = true;
        this.f4321b.d(this);
        return this;
    }

    public p3 m(Object obj) {
        y4.a.f(!this.f4330k);
        this.f4325f = obj;
        return this;
    }

    public p3 n(int i10) {
        y4.a.f(!this.f4330k);
        this.f4324e = i10;
        return this;
    }
}
