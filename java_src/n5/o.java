package n5;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public abstract class o {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List f26356a;

        /* renamed from: b  reason: collision with root package name */
        private final Object f26357b;

        /* synthetic */ a(Object obj, a1 a1Var) {
            q.k(obj);
            this.f26357b = obj;
            this.f26356a = new ArrayList();
        }

        public a a(String str, Object obj) {
            q.k(str);
            String valueOf = String.valueOf(obj);
            this.f26356a.add(str + "=" + valueOf);
            return this;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder(100);
            sb2.append(this.f26357b.getClass().getSimpleName());
            sb2.append('{');
            int size = this.f26356a.size();
            for (int i10 = 0; i10 < size; i10++) {
                sb2.append((String) this.f26356a.get(i10));
                if (i10 < size - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append('}');
            return sb2.toString();
        }
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj != null && obj.equals(obj2)) {
            return true;
        }
        return false;
    }

    public static int b(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static a c(Object obj) {
        return new a(obj, null);
    }
}
