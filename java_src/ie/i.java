package ie;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class i extends l {

    /* renamed from: c  reason: collision with root package name */
    private final ge.d f17424c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(ee.b kSerializer, ee.b vSerializer) {
        super(kSerializer, vSerializer, null);
        kotlin.jvm.internal.m.e(kSerializer, "kSerializer");
        kotlin.jvm.internal.m.e(vSerializer, "vSerializer");
        this.f17424c = new h(kSerializer.a(), vSerializer.a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ie.a
    /* renamed from: A */
    public LinkedHashMap p(Map map) {
        LinkedHashMap linkedHashMap;
        kotlin.jvm.internal.m.e(map, "<this>");
        if (map instanceof LinkedHashMap) {
            linkedHashMap = (LinkedHashMap) map;
        } else {
            linkedHashMap = null;
        }
        if (linkedHashMap == null) {
            return new LinkedHashMap(map);
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ie.a
    /* renamed from: B */
    public Map q(LinkedHashMap linkedHashMap) {
        kotlin.jvm.internal.m.e(linkedHashMap, "<this>");
        return linkedHashMap;
    }

    @Override // ie.l, ee.b, ee.e, ee.a
    public ge.d a() {
        return this.f17424c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ie.a
    /* renamed from: v */
    public LinkedHashMap f() {
        return new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ie.a
    /* renamed from: w */
    public int g(LinkedHashMap linkedHashMap) {
        kotlin.jvm.internal.m.e(linkedHashMap, "<this>");
        return linkedHashMap.size() * 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ie.a
    /* renamed from: x */
    public void h(LinkedHashMap linkedHashMap, int i10) {
        kotlin.jvm.internal.m.e(linkedHashMap, "<this>");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ie.a
    /* renamed from: y */
    public Iterator i(Map map) {
        kotlin.jvm.internal.m.e(map, "<this>");
        return map.entrySet().iterator();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ie.a
    /* renamed from: z */
    public int j(Map map) {
        kotlin.jvm.internal.m.e(map, "<this>");
        return map.size();
    }
}
