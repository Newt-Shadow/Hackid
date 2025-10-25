package yc;

import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class m0 extends l0 {
    public static Set b() {
        return a0.f33225a;
    }

    public static final Set c(Set set) {
        Set b10;
        Set a10;
        kotlin.jvm.internal.m.e(set, "<this>");
        int size = set.size();
        if (size == 0) {
            b10 = b();
            return b10;
        } else if (size == 1) {
            a10 = l0.a(set.iterator().next());
            return a10;
        } else {
            return set;
        }
    }

    public static Set d(Object... elements) {
        Set T;
        kotlin.jvm.internal.m.e(elements, "elements");
        T = k.T(elements);
        return T;
    }
}
