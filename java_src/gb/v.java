package gb;
/* loaded from: classes.dex */
public abstract class v {
    public static final boolean a(String value, String pattern) {
        kotlin.jvm.internal.m.e(value, "value");
        kotlin.jvm.internal.m.e(pattern, "pattern");
        try {
            return new rd.l(pattern).a(value);
        } catch (Throwable unused) {
            return false;
        }
    }
}
