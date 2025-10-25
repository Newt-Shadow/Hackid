package c6;
/* loaded from: classes.dex */
public abstract class h {
    public static Object a(Class cls, String str, g... gVarArr) {
        return b(cls, "isIsolated", null, false, gVarArr);
    }

    private static Object b(Class cls, String str, Object obj, boolean z10, g... gVarArr) {
        int length = gVarArr.length;
        Class<?>[] clsArr = new Class[length];
        Object[] objArr = new Object[length];
        if (gVarArr.length <= 0) {
            return cls.getDeclaredMethod(str, clsArr).invoke(null, objArr);
        }
        g gVar = gVarArr[0];
        throw null;
    }
}
