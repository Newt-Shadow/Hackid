package yc;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class j0 extends i0 {
    public static List t(Map map) {
        kotlin.jvm.internal.m.e(map, "<this>");
        if (map.size() == 0) {
            return m.h();
        }
        Iterator it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return m.h();
        }
        Map.Entry entry = (Map.Entry) it.next();
        if (!it.hasNext()) {
            return m.b(new xc.k(entry.getKey(), entry.getValue()));
        }
        ArrayList arrayList = new ArrayList(map.size());
        arrayList.add(new xc.k(entry.getKey(), entry.getValue()));
        do {
            Map.Entry entry2 = (Map.Entry) it.next();
            arrayList.add(new xc.k(entry2.getKey(), entry2.getValue()));
        } while (it.hasNext());
        return arrayList;
    }
}
