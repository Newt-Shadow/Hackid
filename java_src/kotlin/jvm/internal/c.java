package kotlin.jvm.internal;

import java.util.Iterator;
/* loaded from: classes2.dex */
public abstract class c {
    public static final Iterator a(Object[] array) {
        m.e(array, "array");
        return new b(array);
    }
}
