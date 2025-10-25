package o0;

import java.util.Map;
import kotlin.jvm.internal.m;
import yc.h0;
/* loaded from: classes.dex */
public abstract class f {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f26915a;

        public a(String name) {
            m.e(name, "name");
            this.f26915a = name;
        }

        public final String a() {
            return this.f26915a;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return m.a(this.f26915a, ((a) obj).f26915a);
            }
            return false;
        }

        public int hashCode() {
            return this.f26915a.hashCode();
        }

        public String toString() {
            return this.f26915a;
        }
    }

    /* loaded from: classes.dex */
    public static final class b {
    }

    public abstract Map a();

    public abstract Object b(a aVar);

    public final c c() {
        Map s10;
        s10 = h0.s(a());
        return new c(s10, false);
    }

    public final f d() {
        Map s10;
        s10 = h0.s(a());
        return new c(s10, true);
    }
}
