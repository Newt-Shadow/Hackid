package r9;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
/* loaded from: classes.dex */
public final class j extends k {

    /* renamed from: b  reason: collision with root package name */
    private static final p[] f29021b = new p[0];

    /* renamed from: a  reason: collision with root package name */
    private final p[] f29022a;

    public j(Map map) {
        Collection collection;
        if (map == null) {
            collection = null;
        } else {
            collection = (Collection) map.get(d9.e.POSSIBLE_FORMATS);
        }
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            if (collection.contains(d9.a.EAN_13)) {
                arrayList.add(new e());
            } else if (collection.contains(d9.a.UPC_A)) {
                arrayList.add(new l());
            }
            if (collection.contains(d9.a.EAN_8)) {
                arrayList.add(new f());
            }
            if (collection.contains(d9.a.UPC_E)) {
                arrayList.add(new q());
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new e());
            arrayList.add(new f());
            arrayList.add(new q());
        }
        this.f29022a = (p[]) arrayList.toArray(f29021b);
    }

    @Override // r9.k, d9.l
    public void a() {
        for (p pVar : this.f29022a) {
            pVar.a();
        }
    }

    @Override // r9.k
    public d9.n d(int i10, j9.a aVar, Map map) {
        boolean z10;
        Collection collection;
        boolean z11;
        int[] q10 = p.q(aVar);
        for (p pVar : this.f29022a) {
            try {
                d9.n n10 = pVar.n(i10, aVar, q10, map);
                if (n10.b() == d9.a.EAN_13 && n10.f().charAt(0) == '0') {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (map == null) {
                    collection = null;
                } else {
                    collection = (Collection) map.get(d9.e.POSSIBLE_FORMATS);
                }
                if (collection != null && !collection.contains(d9.a.UPC_A)) {
                    z11 = false;
                    if (!z10 && z11) {
                        d9.n nVar = new d9.n(n10.f().substring(1), n10.c(), n10.e(), d9.a.UPC_A);
                        nVar.g(n10.d());
                        return nVar;
                    }
                    return n10;
                }
                z11 = true;
                if (!z10) {
                }
                return n10;
            } catch (d9.m unused) {
            }
        }
        throw d9.j.a();
    }
}
