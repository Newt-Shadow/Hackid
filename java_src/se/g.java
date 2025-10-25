package se;

import java.lang.ref.Reference;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import se.e;
import xc.t;
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: f  reason: collision with root package name */
    public static final a f29674f = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final int f29675a;

    /* renamed from: b  reason: collision with root package name */
    private final long f29676b;

    /* renamed from: c  reason: collision with root package name */
    private final re.d f29677c;

    /* renamed from: d  reason: collision with root package name */
    private final b f29678d;

    /* renamed from: e  reason: collision with root package name */
    private final ConcurrentLinkedQueue f29679e;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends re.a {
        b(String str) {
            super(str, false, 2, null);
        }

        @Override // re.a
        public long f() {
            return g.this.b(System.nanoTime());
        }
    }

    public g(re.e taskRunner, int i10, long j10, TimeUnit timeUnit) {
        boolean z10;
        m.e(taskRunner, "taskRunner");
        m.e(timeUnit, "timeUnit");
        this.f29675a = i10;
        this.f29676b = timeUnit.toNanos(j10);
        this.f29677c = taskRunner.i();
        this.f29678d = new b(m.l(oe.d.f27590i, " ConnectionPool"));
        this.f29679e = new ConcurrentLinkedQueue();
        if (j10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return;
        }
        throw new IllegalArgumentException(m.l("keepAliveDuration <= 0: ", Long.valueOf(j10)).toString());
    }

    private final int d(f fVar, long j10) {
        if (oe.d.f27589h && !Thread.holdsLock(fVar)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + fVar);
        }
        List n10 = fVar.n();
        int i10 = 0;
        while (i10 < n10.size()) {
            Reference reference = (Reference) n10.get(i10);
            if (reference.get() != null) {
                i10++;
            } else {
                we.j.f32161a.g().l("A connection to " + fVar.z().a().l() + " was leaked. Did you forget to close a response body?", ((e.a) reference).a());
                n10.remove(i10);
                fVar.C(true);
                if (n10.isEmpty()) {
                    fVar.B(j10 - this.f29676b);
                    return 0;
                }
            }
        }
        return n10.size();
    }

    public final boolean a(ne.a address, e call, List list, boolean z10) {
        m.e(address, "address");
        m.e(call, "call");
        Iterator it = this.f29679e.iterator();
        while (it.hasNext()) {
            f connection = (f) it.next();
            m.d(connection, "connection");
            synchronized (connection) {
                if (z10) {
                    if (!connection.v()) {
                        t tVar = t.f32733a;
                    }
                }
                if (connection.t(address, list)) {
                    call.a(connection);
                    return true;
                }
                t tVar2 = t.f32733a;
            }
        }
        return false;
    }

    public final long b(long j10) {
        Iterator it = this.f29679e.iterator();
        int i10 = 0;
        long j11 = Long.MIN_VALUE;
        f fVar = null;
        int i11 = 0;
        while (it.hasNext()) {
            f connection = (f) it.next();
            m.d(connection, "connection");
            synchronized (connection) {
                if (d(connection, j10) > 0) {
                    i11++;
                } else {
                    i10++;
                    long o10 = j10 - connection.o();
                    if (o10 > j11) {
                        fVar = connection;
                        j11 = o10;
                    }
                    t tVar = t.f32733a;
                }
            }
        }
        long j12 = this.f29676b;
        if (j11 < j12 && i10 <= this.f29675a) {
            if (i10 > 0) {
                return j12 - j11;
            }
            if (i11 > 0) {
                return j12;
            }
            return -1L;
        }
        m.b(fVar);
        synchronized (fVar) {
            if (!fVar.n().isEmpty()) {
                return 0L;
            }
            if (fVar.o() + j11 != j10) {
                return 0L;
            }
            fVar.C(true);
            this.f29679e.remove(fVar);
            oe.d.m(fVar.D());
            if (this.f29679e.isEmpty()) {
                this.f29677c.a();
            }
            return 0L;
        }
    }

    public final boolean c(f connection) {
        m.e(connection, "connection");
        if (oe.d.f27589h && !Thread.holdsLock(connection)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + connection);
        } else if (!connection.p() && this.f29675a != 0) {
            re.d.j(this.f29677c, this.f29678d, 0L, 2, null);
            return false;
        } else {
            connection.C(true);
            this.f29679e.remove(connection);
            if (this.f29679e.isEmpty()) {
                this.f29677c.a();
            }
            return true;
        }
    }

    public final void e(f connection) {
        m.e(connection, "connection");
        if (oe.d.f27589h && !Thread.holdsLock(connection)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + connection);
        }
        this.f29679e.add(connection);
        re.d.j(this.f29677c, this.f29678d, 0L, 2, null);
    }
}
