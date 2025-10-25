package d8;

import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final String f15050a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f15051b;

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f15052a;

        /* renamed from: b  reason: collision with root package name */
        private Map f15053b = null;

        b(String str) {
            this.f15052a = str;
        }

        public c a() {
            Map unmodifiableMap;
            String str = this.f15052a;
            if (this.f15053b == null) {
                unmodifiableMap = Collections.emptyMap();
            } else {
                unmodifiableMap = Collections.unmodifiableMap(new HashMap(this.f15053b));
            }
            return new c(str, unmodifiableMap);
        }

        public b b(Annotation annotation) {
            if (this.f15053b == null) {
                this.f15053b = new HashMap();
            }
            this.f15053b.put(annotation.annotationType(), annotation);
            return this;
        }
    }

    public static b a(String str) {
        return new b(str);
    }

    public static c d(String str) {
        return new c(str, Collections.emptyMap());
    }

    public String b() {
        return this.f15050a;
    }

    public Annotation c(Class cls) {
        return (Annotation) this.f15051b.get(cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f15050a.equals(cVar.f15050a) && this.f15051b.equals(cVar.f15051b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f15050a.hashCode() * 31) + this.f15051b.hashCode();
    }

    public String toString() {
        return "FieldDescriptor{name=" + this.f15050a + ", properties=" + this.f15051b.values() + "}";
    }

    private c(String str, Map map) {
        this.f15050a = str;
        this.f15051b = map;
    }
}
