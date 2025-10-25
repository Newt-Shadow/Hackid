package androidx.datastore.preferences.protobuf;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a1 {

    /* renamed from: c  reason: collision with root package name */
    private static final a1 f2117c = new a1();

    /* renamed from: d  reason: collision with root package name */
    static boolean f2118d = false;

    /* renamed from: b  reason: collision with root package name */
    private final ConcurrentMap f2120b = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    private final f1 f2119a = new h0();

    private a1() {
    }

    public static a1 a() {
        return f2117c;
    }

    public e1 b(Class cls, e1 e1Var) {
        y.b(cls, "messageType");
        y.b(e1Var, "schema");
        return (e1) this.f2120b.putIfAbsent(cls, e1Var);
    }

    public e1 c(Class cls) {
        y.b(cls, "messageType");
        e1 e1Var = (e1) this.f2120b.get(cls);
        if (e1Var == null) {
            e1 a10 = this.f2119a.a(cls);
            e1 b10 = b(cls, a10);
            if (b10 != null) {
                return b10;
            }
            return a10;
        }
        return e1Var;
    }

    public e1 d(Object obj) {
        return c(obj.getClass());
    }
}
