package yc;

import java.util.Collections;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class g0 extends f0 {
    public static int b(int i10) {
        if (i10 < 0) {
            return i10;
        }
        if (i10 < 3) {
            return i10 + 1;
        }
        if (i10 < 1073741824) {
            return (int) ((i10 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static Map c(xc.k pair) {
        kotlin.jvm.internal.m.e(pair, "pair");
        Map singletonMap = Collections.singletonMap(pair.c(), pair.d());
        kotlin.jvm.internal.m.d(singletonMap, "singletonMap(...)");
        return singletonMap;
    }

    public static final Map d(Map map) {
        kotlin.jvm.internal.m.e(map, "<this>");
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        Map singletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        kotlin.jvm.internal.m.d(singletonMap, "with(...)");
        return singletonMap;
    }
}
