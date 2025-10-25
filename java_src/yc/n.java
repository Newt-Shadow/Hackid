package yc;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class n {
    public static final Object[] a(Object[] objArr, boolean z10) {
        kotlin.jvm.internal.m.e(objArr, "<this>");
        if (!z10 || !kotlin.jvm.internal.m.a(objArr.getClass(), Object[].class)) {
            Object[] copyOf = Arrays.copyOf(objArr, objArr.length, Object[].class);
            kotlin.jvm.internal.m.d(copyOf, "copyOf(...)");
            return copyOf;
        }
        return objArr;
    }

    public static List b(Object obj) {
        List singletonList = Collections.singletonList(obj);
        kotlin.jvm.internal.m.d(singletonList, "singletonList(...)");
        return singletonList;
    }

    public static final Object[] c(int i10, Object[] array) {
        kotlin.jvm.internal.m.e(array, "array");
        if (i10 < array.length) {
            array[i10] = null;
        }
        return array;
    }
}
