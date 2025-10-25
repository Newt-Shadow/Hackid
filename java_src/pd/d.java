package pd;
/* loaded from: classes2.dex */
public abstract class d {
    public static final Object a(c cVar, Object obj) {
        kotlin.jvm.internal.m.e(cVar, "<this>");
        if (cVar.d(obj)) {
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type T of kotlin.reflect.KClasses.cast");
            return obj;
        }
        throw new ClassCastException("Value cannot be cast to " + cVar.a());
    }
}
