package k7;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
abstract class p {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final k7.c f24839a;

        /* renamed from: b  reason: collision with root package name */
        private final Set f24840b = new HashSet();

        /* renamed from: c  reason: collision with root package name */
        private final Set f24841c = new HashSet();

        b(k7.c cVar) {
            this.f24839a = cVar;
        }

        void a(b bVar) {
            this.f24840b.add(bVar);
        }

        void b(b bVar) {
            this.f24841c.add(bVar);
        }

        k7.c c() {
            return this.f24839a;
        }

        Set d() {
            return this.f24840b;
        }

        boolean e() {
            return this.f24840b.isEmpty();
        }

        boolean f() {
            return this.f24841c.isEmpty();
        }

        void g(b bVar) {
            this.f24841c.remove(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final e0 f24842a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f24843b;

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (!cVar.f24842a.equals(this.f24842a) || cVar.f24843b != this.f24843b) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return ((this.f24842a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f24843b).hashCode();
        }

        private c(e0 e0Var, boolean z10) {
            this.f24842a = e0Var;
            this.f24843b = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(List list) {
        Set<b> c10 = c(list);
        Set b10 = b(c10);
        int i10 = 0;
        while (!b10.isEmpty()) {
            b bVar = (b) b10.iterator().next();
            b10.remove(bVar);
            i10++;
            for (b bVar2 : bVar.d()) {
                bVar2.g(bVar);
                if (bVar2.f()) {
                    b10.add(bVar2);
                }
            }
        }
        if (i10 == list.size()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (b bVar3 : c10) {
            if (!bVar3.f() && !bVar3.e()) {
                arrayList.add(bVar3.c());
            }
        }
        throw new r(arrayList);
    }

    private static Set b(Set set) {
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            if (bVar.f()) {
                hashSet.add(bVar);
            }
        }
        return hashSet;
    }

    private static Set c(List list) {
        Set<b> set;
        HashMap hashMap = new HashMap(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            k7.c cVar = (k7.c) it.next();
            b bVar = new b(cVar);
            for (e0 e0Var : cVar.j()) {
                c cVar2 = new c(e0Var, !cVar.p());
                if (!hashMap.containsKey(cVar2)) {
                    hashMap.put(cVar2, new HashSet());
                }
                Set set2 = (Set) hashMap.get(cVar2);
                if (!set2.isEmpty() && !cVar2.f24843b) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", e0Var));
                }
                set2.add(bVar);
            }
        }
        for (Set<b> set3 : hashMap.values()) {
            for (b bVar2 : set3) {
                for (q qVar : bVar2.c().g()) {
                    if (qVar.e() && (set = (Set) hashMap.get(new c(qVar.c(), qVar.g()))) != null) {
                        for (b bVar3 : set) {
                            bVar2.a(bVar3);
                            bVar3.b(bVar2);
                        }
                    }
                }
            }
        }
        HashSet hashSet = new HashSet();
        for (Set set4 : hashMap.values()) {
            hashSet.addAll(set4);
        }
        return hashSet;
    }
}
