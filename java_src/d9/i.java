package d9;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
/* loaded from: classes.dex */
public final class i implements l {

    /* renamed from: c  reason: collision with root package name */
    private static final l[] f15094c = new l[0];

    /* renamed from: a  reason: collision with root package name */
    private Map f15095a;

    /* renamed from: b  reason: collision with root package name */
    private l[] f15096b;

    private n d(c cVar) {
        l[] lVarArr;
        l[] lVarArr2 = this.f15096b;
        if (lVarArr2 != null) {
            for (l lVar : lVarArr2) {
                if (!Thread.currentThread().isInterrupted()) {
                    try {
                        return lVar.b(cVar, this.f15095a);
                    } catch (m unused) {
                    }
                } else {
                    throw j.a();
                }
            }
            Map map = this.f15095a;
            if (map != null && map.containsKey(e.ALSO_INVERTED)) {
                cVar.a().c();
                for (l lVar2 : this.f15096b) {
                    if (!Thread.currentThread().isInterrupted()) {
                        try {
                            return lVar2.b(cVar, this.f15095a);
                        } catch (m unused2) {
                        }
                    } else {
                        throw j.a();
                    }
                }
            }
        }
        throw j.a();
    }

    @Override // d9.l
    public void a() {
        l[] lVarArr = this.f15096b;
        if (lVarArr != null) {
            for (l lVar : lVarArr) {
                lVar.a();
            }
        }
    }

    @Override // d9.l
    public n b(c cVar, Map map) {
        f(map);
        return d(cVar);
    }

    @Override // d9.l
    public n c(c cVar) {
        f(null);
        return d(cVar);
    }

    public n e(c cVar) {
        if (this.f15096b == null) {
            f(null);
        }
        return d(cVar);
    }

    public void f(Map map) {
        boolean z10;
        Collection collection;
        this.f15095a = map;
        boolean z11 = true;
        if (map != null && map.containsKey(e.TRY_HARDER)) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (map == null) {
            collection = null;
        } else {
            collection = (Collection) map.get(e.POSSIBLE_FORMATS);
        }
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            if (!collection.contains(a.UPC_A) && !collection.contains(a.UPC_E) && !collection.contains(a.EAN_13) && !collection.contains(a.EAN_8) && !collection.contains(a.CODABAR) && !collection.contains(a.CODE_39) && !collection.contains(a.CODE_93) && !collection.contains(a.CODE_128) && !collection.contains(a.ITF) && !collection.contains(a.RSS_14) && !collection.contains(a.RSS_EXPANDED)) {
                z11 = false;
            }
            if (z11 && !z10) {
                arrayList.add(new r9.i(map));
            }
            if (collection.contains(a.QR_CODE)) {
                arrayList.add(new z9.a());
            }
            if (collection.contains(a.DATA_MATRIX)) {
                arrayList.add(new m9.a());
            }
            if (collection.contains(a.AZTEC)) {
                arrayList.add(new e9.b());
            }
            if (collection.contains(a.PDF_417)) {
                arrayList.add(new v9.b());
            }
            if (collection.contains(a.MAXICODE)) {
                arrayList.add(new p9.a());
            }
            if (z11 && z10) {
                arrayList.add(new r9.i(map));
            }
        }
        if (arrayList.isEmpty()) {
            if (!z10) {
                arrayList.add(new r9.i(map));
            }
            arrayList.add(new z9.a());
            arrayList.add(new m9.a());
            arrayList.add(new e9.b());
            arrayList.add(new v9.b());
            arrayList.add(new p9.a());
            if (z10) {
                arrayList.add(new r9.i(map));
            }
        }
        this.f15096b = (l[]) arrayList.toArray(f15094c);
    }
}
