package ke;
/* loaded from: classes2.dex */
public abstract class i {
    public static final g a(l sb2, je.b json) {
        kotlin.jvm.internal.m.e(sb2, "sb");
        kotlin.jvm.internal.m.e(json, "json");
        if (json.c().m()) {
            return new h(sb2, json);
        }
        return new g(sb2);
    }
}
