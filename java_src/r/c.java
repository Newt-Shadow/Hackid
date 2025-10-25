package r;

import java.lang.reflect.Array;
/* loaded from: classes.dex */
abstract class c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] a(Object[] objArr, int i10) {
        if (objArr.length < i10) {
            return (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i10);
        }
        if (objArr.length > i10) {
            objArr[i10] = null;
        }
        return objArr;
    }
}
