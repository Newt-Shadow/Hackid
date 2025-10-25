package o0;

import java.util.Collections;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.m;
import yc.w;
/* loaded from: classes.dex */
public abstract class a {
    public static final Set a(Set set) {
        Set o02;
        m.e(set, "set");
        o02 = w.o0(set);
        Set unmodifiableSet = Collections.unmodifiableSet(o02);
        m.d(unmodifiableSet, "unmodifiableSet(set.toSet())");
        return unmodifiableSet;
    }

    public static final Map b(Map map) {
        m.e(map, "map");
        Map unmodifiableMap = Collections.unmodifiableMap(map);
        m.d(unmodifiableMap, "unmodifiableMap(map)");
        return unmodifiableMap;
    }
}
