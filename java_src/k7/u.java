package k7;

import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
class u implements h8.d, h8.c {

    /* renamed from: a  reason: collision with root package name */
    private final Map f24850a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private Queue f24851b = new ArrayDeque();

    /* renamed from: c  reason: collision with root package name */
    private final Executor f24852c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(Executor executor) {
        this.f24852c = executor;
    }

    private synchronized Set g(h8.a aVar) {
        Set entrySet;
        Map map = (Map) this.f24850a.get(aVar.b());
        if (map == null) {
            entrySet = Collections.emptySet();
        } else {
            entrySet = map.entrySet();
        }
        return entrySet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(Map.Entry entry, h8.a aVar) {
        ((h8.b) entry.getKey()).a(aVar);
    }

    @Override // h8.c
    public void a(final h8.a aVar) {
        d0.b(aVar);
        synchronized (this) {
            Queue queue = this.f24851b;
            if (queue != null) {
                queue.add(aVar);
                return;
            }
            for (final Map.Entry entry : g(aVar)) {
                ((Executor) entry.getValue()).execute(new Runnable() { // from class: k7.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        u.h(entry, aVar);
                    }
                });
            }
        }
    }

    @Override // h8.d
    public void b(Class cls, h8.b bVar) {
        c(cls, this.f24852c, bVar);
    }

    @Override // h8.d
    public synchronized void c(Class cls, Executor executor, h8.b bVar) {
        d0.b(cls);
        d0.b(bVar);
        d0.b(executor);
        if (!this.f24850a.containsKey(cls)) {
            this.f24850a.put(cls, new ConcurrentHashMap());
        }
        ((ConcurrentHashMap) this.f24850a.get(cls)).put(bVar, executor);
    }

    @Override // h8.d
    public synchronized void d(Class cls, h8.b bVar) {
        d0.b(cls);
        d0.b(bVar);
        if (!this.f24850a.containsKey(cls)) {
            return;
        }
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f24850a.get(cls);
        concurrentHashMap.remove(bVar);
        if (concurrentHashMap.isEmpty()) {
            this.f24850a.remove(cls);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        Queue<h8.a> queue;
        synchronized (this) {
            queue = this.f24851b;
            if (queue != null) {
                this.f24851b = null;
            } else {
                queue = null;
            }
        }
        if (queue != null) {
            for (h8.a aVar : queue) {
                a(aVar);
            }
        }
    }
}
