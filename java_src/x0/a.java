package x0;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private final Map f32164a = new LinkedHashMap();

    /* renamed from: x0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0362a extends a {

        /* renamed from: b  reason: collision with root package name */
        public static final C0362a f32165b = new C0362a();

        private C0362a() {
        }

        @Override // x0.a
        public Object a(b key) {
            m.e(key, "key");
            return null;
        }
    }

    /* loaded from: classes.dex */
    public interface b {
    }

    public abstract Object a(b bVar);

    public final Map b() {
        return this.f32164a;
    }
}
