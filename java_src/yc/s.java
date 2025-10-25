package yc;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class s extends r {
    public static void t(List list) {
        kotlin.jvm.internal.m.e(list, "<this>");
        if (list.size() > 1) {
            Collections.sort(list);
        }
    }

    public static void u(List list, Comparator comparator) {
        kotlin.jvm.internal.m.e(list, "<this>");
        kotlin.jvm.internal.m.e(comparator, "comparator");
        if (list.size() > 1) {
            Collections.sort(list, comparator);
        }
    }
}
