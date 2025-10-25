package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.y;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class g1 {

    /* renamed from: a  reason: collision with root package name */
    private static final Class f2146a = A();

    /* renamed from: b  reason: collision with root package name */
    private static final l1 f2147b = B();

    /* renamed from: c  reason: collision with root package name */
    private static final l1 f2148c = new n1();

    private static Class A() {
        if (a1.f2118d) {
            return null;
        }
        try {
            return Class.forName("androidx.datastore.preferences.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static l1 B() {
        try {
            Class C = C();
            if (C == null) {
                return null;
            }
            return (l1) C.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class C() {
        if (a1.f2118d) {
            return null;
        }
        try {
            return Class.forName("androidx.datastore.preferences.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void D(p pVar, Object obj, Object obj2) {
        s c10 = pVar.c(obj2);
        if (!c10.j()) {
            pVar.d(obj).p(c10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void E(k0 k0Var, Object obj, Object obj2, long j10) {
        o1.O(obj, j10, k0Var.a(o1.z(obj, j10), o1.z(obj2, j10)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void F(l1 l1Var, Object obj, Object obj2) {
        l1Var.p(obj, l1Var.k(l1Var.g(obj), l1Var.g(obj2)));
    }

    public static void G(Class cls) {
        Class cls2;
        if (!w.class.isAssignableFrom(cls) && !a1.f2118d && (cls2 = f2146a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean H(Object obj, Object obj2) {
        if (obj != obj2 && (obj == null || !obj.equals(obj2))) {
            return false;
        }
        return true;
    }

    static Object I(Object obj, int i10, int i11, Object obj2, l1 l1Var) {
        if (obj2 == null) {
            obj2 = l1Var.f(obj);
        }
        l1Var.e(obj2, i10, i11);
        return obj2;
    }

    public static l1 J() {
        return f2147b;
    }

    public static l1 K() {
        return f2148c;
    }

    public static void L(int i10, List list, r1 r1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            r1Var.w(i10, list, z10);
        }
    }

    public static void M(int i10, List list, r1 r1Var) {
        if (list != null && !list.isEmpty()) {
            r1Var.I(i10, list);
        }
    }

    public static void N(int i10, List list, r1 r1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            r1Var.G(i10, list, z10);
        }
    }

    public static void O(int i10, List list, r1 r1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            r1Var.F(i10, list, z10);
        }
    }

    public static void P(int i10, List list, r1 r1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            r1Var.v(i10, list, z10);
        }
    }

    public static void Q(int i10, List list, r1 r1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            r1Var.s(i10, list, z10);
        }
    }

    public static void R(int i10, List list, r1 r1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            r1Var.a(i10, list, z10);
        }
    }

    public static void S(int i10, List list, r1 r1Var, e1 e1Var) {
        if (list != null && !list.isEmpty()) {
            r1Var.K(i10, list, e1Var);
        }
    }

    public static void T(int i10, List list, r1 r1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            r1Var.m(i10, list, z10);
        }
    }

    public static void U(int i10, List list, r1 r1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            r1Var.E(i10, list, z10);
        }
    }

    public static void V(int i10, List list, r1 r1Var, e1 e1Var) {
        if (list != null && !list.isEmpty()) {
            r1Var.J(i10, list, e1Var);
        }
    }

    public static void W(int i10, List list, r1 r1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            r1Var.t(i10, list, z10);
        }
    }

    public static void X(int i10, List list, r1 r1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            r1Var.f(i10, list, z10);
        }
    }

    public static void Y(int i10, List list, r1 r1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            r1Var.C(i10, list, z10);
        }
    }

    public static void Z(int i10, List list, r1 r1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            r1Var.y(i10, list, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z10) {
            return j.O(i10) + j.y(size);
        }
        return size * j.c(i10, true);
    }

    public static void a0(int i10, List list, r1 r1Var) {
        if (list != null && !list.isEmpty()) {
            r1Var.j(i10, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(List list) {
        return list.size();
    }

    public static void b0(int i10, List list, r1 r1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            r1Var.x(i10, list, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int O = size * j.O(i10);
        for (int i11 = 0; i11 < list.size(); i11++) {
            O += j.g((g) list.get(i11));
        }
        return O;
    }

    public static void c0(int i10, List list, r1 r1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            r1Var.g(i10, list, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e10 = e(list);
        if (z10) {
            return j.O(i10) + j.y(e10);
        }
        return e10 + (size * j.O(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof x) {
            x xVar = (x) list;
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += j.k(((Integer) list.get(i11)).intValue());
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z10) {
            return j.O(i10) + j.y(size * 4);
        }
        return size * j.l(i10, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(List list) {
        return list.size() * 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z10) {
            return j.O(i10) + j.y(size * 8);
        }
        return size * j.n(i10, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(List list) {
        return list.size() * 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(int i10, List list, e1 e1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            i11 += j.r(i10, (p0) list.get(i12), e1Var);
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int k(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int l10 = l(list);
        if (z10) {
            return j.O(i10) + j.y(l10);
        }
        return l10 + (size * j.O(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int l(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof x) {
            x xVar = (x) list;
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += j.v(((Integer) list.get(i11)).intValue());
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int m(int i10, List list, boolean z10) {
        if (list.size() == 0) {
            return 0;
        }
        int n10 = n(list);
        if (z10) {
            return j.O(i10) + j.y(n10);
        }
        return n10 + (list.size() * j.O(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int n(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof g0) {
            g0 g0Var = (g0) list;
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += j.x(((Long) list.get(i11)).longValue());
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int o(int i10, Object obj, e1 e1Var) {
        return j.z(i10, (p0) obj, e1Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int p(int i10, List list, e1 e1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int O = j.O(i10) * size;
        for (int i11 = 0; i11 < size; i11++) {
            O += j.B((p0) list.get(i11), e1Var);
        }
        return O;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int q(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int r10 = r(list);
        if (z10) {
            return j.O(i10) + j.y(r10);
        }
        return r10 + (size * j.O(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int r(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof x) {
            x xVar = (x) list;
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += j.J(((Integer) list.get(i11)).intValue());
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int s(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int t10 = t(list);
        if (z10) {
            return j.O(i10) + j.y(t10);
        }
        return t10 + (size * j.O(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int t(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof g0) {
            g0 g0Var = (g0) list;
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += j.L(((Long) list.get(i11)).longValue());
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int u(int i10, List list) {
        int N;
        int N2;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        int O = j.O(i10) * size;
        if (list instanceof c0) {
            c0 c0Var = (c0) list;
            while (i11 < size) {
                Object v10 = c0Var.v(i11);
                if (v10 instanceof g) {
                    N2 = j.g((g) v10);
                } else {
                    N2 = j.N((String) v10);
                }
                O += N2;
                i11++;
            }
        } else {
            while (i11 < size) {
                Object obj = list.get(i11);
                if (obj instanceof g) {
                    N = j.g((g) obj);
                } else {
                    N = j.N((String) obj);
                }
                O += N;
                i11++;
            }
        }
        return O;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int v(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int w10 = w(list);
        if (z10) {
            return j.O(i10) + j.y(w10);
        }
        return w10 + (size * j.O(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int w(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof x) {
            x xVar = (x) list;
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += j.Q(((Integer) list.get(i11)).intValue());
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int x(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int y10 = y(list);
        if (z10) {
            return j.O(i10) + j.y(y10);
        }
        return y10 + (size * j.O(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int y(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof g0) {
            g0 g0Var = (g0) list;
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += j.S(((Long) list.get(i11)).longValue());
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object z(Object obj, int i10, List list, y.a aVar, Object obj2, l1 l1Var) {
        if (aVar == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                int intValue = ((Integer) list.get(i12)).intValue();
                if (aVar.a(intValue)) {
                    if (i12 != i11) {
                        list.set(i11, Integer.valueOf(intValue));
                    }
                    i11++;
                } else {
                    obj2 = I(obj, i10, intValue, obj2, l1Var);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = ((Integer) it.next()).intValue();
                if (!aVar.a(intValue2)) {
                    obj2 = I(obj, i10, intValue2, obj2, l1Var);
                    it.remove();
                }
            }
        }
        return obj2;
    }
}
