package ke;

import java.util.Map;
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private final Map f24916a = j.a(16);

    /* loaded from: classes2.dex */
    public static final class a {
    }

    public final Object a(ge.d descriptor, a key) {
        Object obj;
        kotlin.jvm.internal.m.e(descriptor, "descriptor");
        kotlin.jvm.internal.m.e(key, "key");
        Map map = (Map) this.f24916a.get(descriptor);
        if (map != null) {
            obj = map.get(key);
        } else {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        return obj;
    }

    public final Object b(ge.d descriptor, a key, id.a defaultValue) {
        kotlin.jvm.internal.m.e(descriptor, "descriptor");
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(defaultValue, "defaultValue");
        Object a10 = a(descriptor, key);
        if (a10 != null) {
            return a10;
        }
        Object invoke = defaultValue.invoke();
        c(descriptor, key, invoke);
        return invoke;
    }

    public final void c(ge.d descriptor, a key, Object value) {
        kotlin.jvm.internal.m.e(descriptor, "descriptor");
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(value, "value");
        Map map = this.f24916a;
        Object obj = map.get(descriptor);
        if (obj == null) {
            obj = j.a(2);
            map.put(descriptor, obj);
        }
        ((Map) obj).put(key, value);
    }
}
