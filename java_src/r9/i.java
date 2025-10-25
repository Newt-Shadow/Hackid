package r9;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
/* loaded from: classes.dex */
public final class i extends k {

    /* renamed from: b  reason: collision with root package name */
    private static final k[] f29019b = new k[0];

    /* renamed from: a  reason: collision with root package name */
    private final k[] f29020a;

    public i(Map map) {
        Collection collection;
        boolean z10;
        if (map == null) {
            collection = null;
        } else {
            collection = (Collection) map.get(d9.e.POSSIBLE_FORMATS);
        }
        if (map != null && map.get(d9.e.ASSUME_CODE_39_CHECK_DIGIT) != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            if (collection.contains(d9.a.EAN_13) || collection.contains(d9.a.UPC_A) || collection.contains(d9.a.EAN_8) || collection.contains(d9.a.UPC_E)) {
                arrayList.add(new j(map));
            }
            if (collection.contains(d9.a.CODE_39)) {
                arrayList.add(new c(z10));
            }
            if (collection.contains(d9.a.CODE_93)) {
                arrayList.add(new d());
            }
            if (collection.contains(d9.a.CODE_128)) {
                arrayList.add(new b());
            }
            if (collection.contains(d9.a.ITF)) {
                arrayList.add(new h());
            }
            if (collection.contains(d9.a.CODABAR)) {
                arrayList.add(new a());
            }
            if (collection.contains(d9.a.RSS_14)) {
                arrayList.add(new s9.e());
            }
            if (collection.contains(d9.a.RSS_EXPANDED)) {
                arrayList.add(new t9.d());
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new j(map));
            arrayList.add(new c());
            arrayList.add(new a());
            arrayList.add(new d());
            arrayList.add(new b());
            arrayList.add(new h());
            arrayList.add(new s9.e());
            arrayList.add(new t9.d());
        }
        this.f29020a = (k[]) arrayList.toArray(f29019b);
    }

    @Override // r9.k, d9.l
    public void a() {
        for (k kVar : this.f29020a) {
            kVar.a();
        }
    }

    @Override // r9.k
    public d9.n d(int i10, j9.a aVar, Map map) {
        for (k kVar : this.f29020a) {
            try {
                return kVar.d(i10, aVar, map);
            } catch (d9.m unused) {
            }
        }
        throw d9.j.a();
    }
}
