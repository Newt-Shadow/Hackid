package ke;
/* loaded from: classes2.dex */
public abstract class a0 {
    public static final z a(je.b json, String source) {
        kotlin.jvm.internal.m.e(json, "json");
        kotlin.jvm.internal.m.e(source, "source");
        if (!json.c().a()) {
            return new z(source);
        }
        return new b0(source);
    }
}
