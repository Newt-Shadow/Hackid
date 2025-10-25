package k7;

import android.util.Log;
import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import k7.n;
/* loaded from: classes.dex */
public class n implements d, c8.a {

    /* renamed from: i  reason: collision with root package name */
    private static final k8.b f24825i = new k8.b() { // from class: k7.k
        @Override // k8.b
        public final Object get() {
            return Collections.emptySet();
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final Map f24826a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f24827b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f24828c;

    /* renamed from: d  reason: collision with root package name */
    private final List f24829d;

    /* renamed from: e  reason: collision with root package name */
    private Set f24830e;

    /* renamed from: f  reason: collision with root package name */
    private final u f24831f;

    /* renamed from: g  reason: collision with root package name */
    private final AtomicReference f24832g;

    /* renamed from: h  reason: collision with root package name */
    private final i f24833h;

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Executor f24834a;

        /* renamed from: b  reason: collision with root package name */
        private final List f24835b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private final List f24836c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        private i f24837d = i.f24818a;

        b(Executor executor) {
            this.f24834a = executor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ ComponentRegistrar f(ComponentRegistrar componentRegistrar) {
            return componentRegistrar;
        }

        public b b(c cVar) {
            this.f24836c.add(cVar);
            return this;
        }

        public b c(final ComponentRegistrar componentRegistrar) {
            this.f24835b.add(new k8.b() { // from class: k7.o
                @Override // k8.b
                public final Object get() {
                    ComponentRegistrar f10;
                    f10 = n.b.f(ComponentRegistrar.this);
                    return f10;
                }
            });
            return this;
        }

        public b d(Collection collection) {
            this.f24835b.addAll(collection);
            return this;
        }

        public n e() {
            return new n(this.f24834a, this.f24835b, this.f24836c, this.f24837d);
        }

        public b g(i iVar) {
            this.f24837d = iVar;
            return this;
        }
    }

    public static b l(Executor executor) {
        return new b(executor);
    }

    private void m(List list) {
        ArrayList<Runnable> arrayList = new ArrayList();
        synchronized (this) {
            Iterator it = this.f24829d.iterator();
            while (it.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = (ComponentRegistrar) ((k8.b) it.next()).get();
                    if (componentRegistrar != null) {
                        list.addAll(this.f24833h.a(componentRegistrar));
                        it.remove();
                    }
                } catch (v e10) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e10);
                }
            }
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                Object[] array = ((c) it2.next()).j().toArray();
                int length = array.length;
                int i10 = 0;
                while (true) {
                    if (i10 < length) {
                        Object obj = array[i10];
                        if (obj.toString().contains("kotlinx.coroutines.CoroutineDispatcher")) {
                            if (this.f24830e.contains(obj.toString())) {
                                it2.remove();
                                break;
                            }
                            this.f24830e.add(obj.toString());
                        }
                        i10++;
                    }
                }
            }
            if (this.f24826a.isEmpty()) {
                p.a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.f24826a.keySet());
                arrayList2.addAll(list);
                p.a(arrayList2);
            }
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                final c cVar = (c) it3.next();
                this.f24826a.put(cVar, new w(new k8.b() { // from class: k7.j
                    @Override // k8.b
                    public final Object get() {
                        Object q10;
                        q10 = n.this.q(cVar);
                        return q10;
                    }
                }));
            }
            arrayList.addAll(v(list));
            arrayList.addAll(w());
            u();
        }
        for (Runnable runnable : arrayList) {
            runnable.run();
        }
        t();
    }

    private void n(Map map, boolean z10) {
        for (Map.Entry entry : map.entrySet()) {
            c cVar = (c) entry.getKey();
            k8.b bVar = (k8.b) entry.getValue();
            if (cVar.n() || (cVar.o() && z10)) {
                bVar.get();
            }
        }
        this.f24831f.f();
    }

    private static List p(Iterable iterable) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            arrayList.add(obj);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object q(c cVar) {
        return cVar.h().a(new f0(cVar, this));
    }

    private void t() {
        Boolean bool = (Boolean) this.f24832g.get();
        if (bool != null) {
            n(this.f24826a, bool.booleanValue());
        }
    }

    private void u() {
        for (c cVar : this.f24826a.keySet()) {
            for (q qVar : cVar.g()) {
                if (qVar.g() && !this.f24828c.containsKey(qVar.c())) {
                    this.f24828c.put(qVar.c(), x.b(Collections.emptySet()));
                } else if (this.f24827b.containsKey(qVar.c())) {
                    continue;
                } else if (!qVar.f()) {
                    if (!qVar.g()) {
                        this.f24827b.put(qVar.c(), c0.e());
                    }
                } else {
                    throw new y(String.format("Unsatisfied dependency for component %s: %s", cVar, qVar.c()));
                }
            }
        }
    }

    private List v(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.p()) {
                final k8.b bVar = (k8.b) this.f24826a.get(cVar);
                for (e0 e0Var : cVar.j()) {
                    if (!this.f24827b.containsKey(e0Var)) {
                        this.f24827b.put(e0Var, bVar);
                    } else {
                        final c0 c0Var = (c0) ((k8.b) this.f24827b.get(e0Var));
                        arrayList.add(new Runnable() { // from class: k7.l
                            @Override // java.lang.Runnable
                            public final void run() {
                                c0.this.j(bVar);
                            }
                        });
                    }
                }
            }
        }
        return arrayList;
    }

    private List w() {
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : this.f24826a.entrySet()) {
            c cVar = (c) entry.getKey();
            if (!cVar.p()) {
                k8.b bVar = (k8.b) entry.getValue();
                for (e0 e0Var : cVar.j()) {
                    if (!hashMap.containsKey(e0Var)) {
                        hashMap.put(e0Var, new HashSet());
                    }
                    ((Set) hashMap.get(e0Var)).add(bVar);
                }
            }
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            if (!this.f24828c.containsKey(entry2.getKey())) {
                this.f24828c.put((e0) entry2.getKey(), x.b((Collection) entry2.getValue()));
            } else {
                final x xVar = (x) this.f24828c.get(entry2.getKey());
                for (final k8.b bVar2 : (Set) entry2.getValue()) {
                    arrayList.add(new Runnable() { // from class: k7.m
                        @Override // java.lang.Runnable
                        public final void run() {
                            x.this.a(bVar2);
                        }
                    });
                }
            }
        }
        return arrayList;
    }

    @Override // k7.d
    public synchronized k8.b d(e0 e0Var) {
        x xVar = (x) this.f24828c.get(e0Var);
        if (xVar != null) {
            return xVar;
        }
        return f24825i;
    }

    @Override // k7.d
    public synchronized k8.b e(e0 e0Var) {
        d0.c(e0Var, "Null interface requested.");
        return (k8.b) this.f24827b.get(e0Var);
    }

    @Override // k7.d
    public k8.a g(e0 e0Var) {
        k8.b e10 = e(e0Var);
        if (e10 == null) {
            return c0.e();
        }
        if (e10 instanceof c0) {
            return (c0) e10;
        }
        return c0.i(e10);
    }

    public void o(boolean z10) {
        HashMap hashMap;
        if (!o1.c.a(this.f24832g, null, Boolean.valueOf(z10))) {
            return;
        }
        synchronized (this) {
            hashMap = new HashMap(this.f24826a);
        }
        n(hashMap, z10);
    }

    private n(Executor executor, Iterable iterable, Collection collection, i iVar) {
        this.f24826a = new HashMap();
        this.f24827b = new HashMap();
        this.f24828c = new HashMap();
        this.f24830e = new HashSet();
        this.f24832g = new AtomicReference();
        u uVar = new u(executor);
        this.f24831f = uVar;
        this.f24833h = iVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(c.s(uVar, u.class, h8.d.class, h8.c.class));
        arrayList.add(c.s(this, c8.a.class, new Class[0]));
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar != null) {
                arrayList.add(cVar);
            }
        }
        this.f24829d = p(iterable);
        m(arrayList);
    }
}
