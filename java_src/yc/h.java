package yc;

import java.lang.reflect.Array;
/* loaded from: classes2.dex */
abstract class h {
    public static final Object[] a(Object[] reference, int i10) {
        kotlin.jvm.internal.m.e(reference, "reference");
        Object newInstance = Array.newInstance(reference.getClass().getComponentType(), i10);
        kotlin.jvm.internal.m.c(newInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
        return (Object[]) newInstance;
    }

    public static final void b(int i10, int i11) {
        if (i10 <= i11) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i10 + ") is greater than size (" + i11 + ").");
    }
}
