package c7;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    public static final a f5047b = a().a();

    /* renamed from: a  reason: collision with root package name */
    private final Map f5048a;

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private HashMap f5049a = new HashMap();

        public a a() {
            if (this.f5049a != null) {
                a aVar = new a(Collections.unmodifiableMap(this.f5049a));
                this.f5049a = null;
                return aVar;
            }
            throw new IllegalStateException("cannot call build() twice");
        }
    }

    public static b a() {
        return new b();
    }

    public Map b() {
        return this.f5048a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        return this.f5048a.equals(((a) obj).f5048a);
    }

    public int hashCode() {
        return this.f5048a.hashCode();
    }

    public String toString() {
        return this.f5048a.toString();
    }

    private a(Map map) {
        this.f5048a = map;
    }
}
