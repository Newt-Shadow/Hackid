package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.w;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes.dex */
public class o {

    /* renamed from: b  reason: collision with root package name */
    private static volatile o f2231b;

    /* renamed from: c  reason: collision with root package name */
    static final o f2232c = new o(true);

    /* renamed from: a  reason: collision with root package name */
    private final Map f2233a = Collections.emptyMap();

    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Object f2234a;

        /* renamed from: b  reason: collision with root package name */
        private final int f2235b;

        a(Object obj, int i10) {
            this.f2234a = obj;
            this.f2235b = i10;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f2234a != aVar.f2234a || this.f2235b != aVar.f2235b) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (System.identityHashCode(this.f2234a) * 65535) + this.f2235b;
        }
    }

    o(boolean z10) {
    }

    public static o b() {
        if (a1.f2118d) {
            return f2232c;
        }
        o oVar = f2231b;
        if (oVar == null) {
            synchronized (o.class) {
                oVar = f2231b;
                if (oVar == null) {
                    oVar = n.a();
                    f2231b = oVar;
                }
            }
        }
        return oVar;
    }

    public w.c a(p0 p0Var, int i10) {
        android.support.v4.media.session.b.a(this.f2233a.get(new a(p0Var, i10)));
        return null;
    }
}
