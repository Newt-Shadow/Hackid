package n6;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public abstract class o {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b implements n, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final List f26440a;

        @Override // n6.n
        public boolean apply(Object obj) {
            for (int i10 = 0; i10 < this.f26440a.size(); i10++) {
                if (!((n) this.f26440a.get(i10)).apply(obj)) {
                    return false;
                }
            }
            return true;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.f26440a.equals(((b) obj).f26440a);
            }
            return false;
        }

        public int hashCode() {
            return this.f26440a.hashCode() + 306654252;
        }

        public String toString() {
            return o.d("and", this.f26440a);
        }

        private b(List list) {
            this.f26440a = list;
        }
    }

    public static n b(n nVar, n nVar2) {
        return new b(c((n) m.i(nVar), (n) m.i(nVar2)));
    }

    private static List c(n nVar, n nVar2) {
        return Arrays.asList(nVar, nVar2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(String str, Iterable iterable) {
        StringBuilder sb2 = new StringBuilder("Predicates.");
        sb2.append(str);
        sb2.append('(');
        boolean z10 = true;
        for (Object obj : iterable) {
            if (!z10) {
                sb2.append(',');
            }
            sb2.append(obj);
            z10 = false;
        }
        sb2.append(')');
        return sb2.toString();
    }
}
