package ne;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class o {

    /* renamed from: c  reason: collision with root package name */
    private Runnable f26760c;

    /* renamed from: d  reason: collision with root package name */
    private ExecutorService f26761d;

    /* renamed from: a  reason: collision with root package name */
    private int f26758a = 64;

    /* renamed from: b  reason: collision with root package name */
    private int f26759b = 5;

    /* renamed from: e  reason: collision with root package name */
    private final ArrayDeque f26762e = new ArrayDeque();

    /* renamed from: f  reason: collision with root package name */
    private final ArrayDeque f26763f = new ArrayDeque();

    /* renamed from: g  reason: collision with root package name */
    private final ArrayDeque f26764g = new ArrayDeque();

    private final void c(Deque deque, Object obj) {
        Runnable e10;
        synchronized (this) {
            if (deque.remove(obj)) {
                e10 = e();
                xc.t tVar = xc.t.f32733a;
            } else {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        if (!g() && e10 != null) {
            e10.run();
        }
    }

    private final boolean g() {
        boolean z10;
        if (oe.d.f27589h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator it = this.f26762e.iterator();
            kotlin.jvm.internal.m.d(it, "readyAsyncCalls.iterator()");
            if (it.hasNext()) {
                android.support.v4.media.session.b.a(it.next());
                if (this.f26763f.size() < f()) {
                    throw null;
                }
            }
            if (h() > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            xc.t tVar = xc.t.f32733a;
        }
        if (arrayList.size() <= 0) {
            return z10;
        }
        android.support.v4.media.session.b.a(arrayList.get(0));
        b();
        throw null;
    }

    public final synchronized void a(se.e call) {
        kotlin.jvm.internal.m.e(call, "call");
        this.f26764g.add(call);
    }

    public final synchronized ExecutorService b() {
        ExecutorService executorService;
        if (this.f26761d == null) {
            this.f26761d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), oe.d.L(kotlin.jvm.internal.m.l(oe.d.f27590i, " Dispatcher"), false));
        }
        executorService = this.f26761d;
        kotlin.jvm.internal.m.b(executorService);
        return executorService;
    }

    public final void d(se.e call) {
        kotlin.jvm.internal.m.e(call, "call");
        c(this.f26764g, call);
    }

    public final synchronized Runnable e() {
        return this.f26760c;
    }

    public final synchronized int f() {
        return this.f26758a;
    }

    public final synchronized int h() {
        return this.f26763f.size() + this.f26764g.size();
    }
}
