package re;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import kotlin.jvm.internal.m;
import xc.t;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final e f29132a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29133b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f29134c;

    /* renamed from: d  reason: collision with root package name */
    private a f29135d;

    /* renamed from: e  reason: collision with root package name */
    private final List f29136e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f29137f;

    public d(e taskRunner, String name) {
        m.e(taskRunner, "taskRunner");
        m.e(name, "name");
        this.f29132a = taskRunner;
        this.f29133b = name;
        this.f29136e = new ArrayList();
    }

    public static /* synthetic */ void j(d dVar, a aVar, long j10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = 0;
        }
        dVar.i(aVar, j10);
    }

    public final void a() {
        if (oe.d.f27589h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        synchronized (this.f29132a) {
            if (b()) {
                h().h(this);
            }
            t tVar = t.f32733a;
        }
    }

    public final boolean b() {
        a aVar = this.f29135d;
        if (aVar != null) {
            m.b(aVar);
            if (aVar.a()) {
                this.f29137f = true;
            }
        }
        int size = this.f29136e.size() - 1;
        boolean z10 = false;
        if (size >= 0) {
            while (true) {
                int i10 = size - 1;
                if (((a) this.f29136e.get(size)).a()) {
                    a aVar2 = (a) this.f29136e.get(size);
                    if (e.f29138h.a().isLoggable(Level.FINE)) {
                        b.a(aVar2, this, "canceled");
                    }
                    this.f29136e.remove(size);
                    z10 = true;
                }
                if (i10 < 0) {
                    break;
                }
                size = i10;
            }
        }
        return z10;
    }

    public final a c() {
        return this.f29135d;
    }

    public final boolean d() {
        return this.f29137f;
    }

    public final List e() {
        return this.f29136e;
    }

    public final String f() {
        return this.f29133b;
    }

    public final boolean g() {
        return this.f29134c;
    }

    public final e h() {
        return this.f29132a;
    }

    public final void i(a task, long j10) {
        m.e(task, "task");
        synchronized (this.f29132a) {
            if (g()) {
                if (task.a()) {
                    if (e.f29138h.a().isLoggable(Level.FINE)) {
                        b.a(task, this, "schedule canceled (queue is shutdown)");
                    }
                    return;
                }
                if (e.f29138h.a().isLoggable(Level.FINE)) {
                    b.a(task, this, "schedule failed (queue is shutdown)");
                }
                throw new RejectedExecutionException();
            }
            if (k(task, j10, false)) {
                h().h(this);
            }
            t tVar = t.f32733a;
        }
    }

    public final boolean k(a task, long j10, boolean z10) {
        boolean z11;
        String l10;
        m.e(task, "task");
        task.e(this);
        long a10 = this.f29132a.g().a();
        long j11 = a10 + j10;
        int indexOf = this.f29136e.indexOf(task);
        if (indexOf != -1) {
            if (task.c() <= j11) {
                if (e.f29138h.a().isLoggable(Level.FINE)) {
                    b.a(task, this, "already scheduled");
                }
                return false;
            }
            this.f29136e.remove(indexOf);
        }
        task.g(j11);
        if (e.f29138h.a().isLoggable(Level.FINE)) {
            if (z10) {
                l10 = m.l("run again after ", b.b(j11 - a10));
            } else {
                l10 = m.l("scheduled after ", b.b(j11 - a10));
            }
            b.a(task, this, l10);
        }
        Iterator it = this.f29136e.iterator();
        int i10 = 0;
        while (true) {
            if (it.hasNext()) {
                if (((a) it.next()).c() - a10 > j10) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (z11) {
                    break;
                }
                i10++;
            } else {
                i10 = -1;
                break;
            }
        }
        if (i10 == -1) {
            i10 = this.f29136e.size();
        }
        this.f29136e.add(i10, task);
        if (i10 != 0) {
            return false;
        }
        return true;
    }

    public final void l(a aVar) {
        this.f29135d = aVar;
    }

    public final void m(boolean z10) {
        this.f29137f = z10;
    }

    public final void n(boolean z10) {
        this.f29134c = z10;
    }

    public final void o() {
        if (oe.d.f27589h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        synchronized (this.f29132a) {
            n(true);
            if (b()) {
                h().h(this);
            }
            t tVar = t.f32733a;
        }
    }

    public String toString() {
        return this.f29133b;
    }
}
