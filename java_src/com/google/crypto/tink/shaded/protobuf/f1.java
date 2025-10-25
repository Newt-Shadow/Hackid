package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.z;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes.dex */
abstract class f1 {

    /* renamed from: a  reason: collision with root package name */
    private static final Class f8437a = A();

    /* renamed from: b  reason: collision with root package name */
    private static final j1 f8438b = B(false);

    /* renamed from: c  reason: collision with root package name */
    private static final j1 f8439c = B(true);

    /* renamed from: d  reason: collision with root package name */
    private static final j1 f8440d = new l1();

    private static Class A() {
        try {
            return Class.forName("com.google.crypto.tink.shaded.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static j1 B(boolean z10) {
        try {
            Class C = C();
            if (C == null) {
                return null;
            }
            return (j1) C.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class C() {
        try {
            return Class.forName("com.google.crypto.tink.shaded.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void D(q qVar, Object obj, Object obj2) {
        t c10 = qVar.c(obj2);
        if (!c10.d()) {
            qVar.d(obj).h(c10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void E(j0 j0Var, Object obj, Object obj2, long j10) {
        n1.R(obj, j10, j0Var.a(n1.C(obj, j10), n1.C(obj2, j10)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void F(j1 j1Var, Object obj, Object obj2) {
        j1Var.p(obj, j1Var.k(j1Var.g(obj), j1Var.g(obj2)));
    }

    public static j1 G() {
        return f8438b;
    }

    public static j1 H() {
        return f8439c;
    }

    public static void I(Class cls) {
        Class cls2;
        if (!x.class.isAssignableFrom(cls) && (cls2 = f8437a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessageV3 or GeneratedMessageLite");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean J(Object obj, Object obj2) {
        if (obj != obj2 && (obj == null || !obj.equals(obj2))) {
            return false;
        }
        return true;
    }

    static Object K(Object obj, int i10, int i11, Object obj2, j1 j1Var) {
        if (obj2 == null) {
            obj2 = j1Var.f(obj);
        }
        j1Var.e(obj2, i10, i11);
        return obj2;
    }

    public static j1 L() {
        return f8440d;
    }

    public static void M(int i10, List list, q1 q1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            q1Var.w(i10, list, z10);
        }
    }

    public static void N(int i10, List list, q1 q1Var) {
        if (list != null && !list.isEmpty()) {
            q1Var.I(i10, list);
        }
    }

    public static void O(int i10, List list, q1 q1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            q1Var.G(i10, list, z10);
        }
    }

    public static void P(int i10, List list, q1 q1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            q1Var.F(i10, list, z10);
        }
    }

    public static void Q(int i10, List list, q1 q1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            q1Var.v(i10, list, z10);
        }
    }

    public static void R(int i10, List list, q1 q1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            q1Var.s(i10, list, z10);
        }
    }

    public static void S(int i10, List list, q1 q1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            q1Var.a(i10, list, z10);
        }
    }

    public static void T(int i10, List list, q1 q1Var, d1 d1Var) {
        if (list != null && !list.isEmpty()) {
            q1Var.M(i10, list, d1Var);
        }
    }

    public static void U(int i10, List list, q1 q1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            q1Var.m(i10, list, z10);
        }
    }

    public static void V(int i10, List list, q1 q1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            q1Var.E(i10, list, z10);
        }
    }

    public static void W(int i10, List list, q1 q1Var, d1 d1Var) {
        if (list != null && !list.isEmpty()) {
            q1Var.N(i10, list, d1Var);
        }
    }

    public static void X(int i10, List list, q1 q1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            q1Var.t(i10, list, z10);
        }
    }

    public static void Y(int i10, List list, q1 q1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            q1Var.f(i10, list, z10);
        }
    }

    public static void Z(int i10, List list, q1 q1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            q1Var.C(i10, list, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z10) {
            return k.L(i10) + k.x(size);
        }
        return size * k.d(i10, true);
    }

    public static void a0(int i10, List list, q1 q1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            q1Var.y(i10, list, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(List list) {
        return list.size();
    }

    public static void b0(int i10, List list, q1 q1Var) {
        if (list != null && !list.isEmpty()) {
            q1Var.j(i10, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int L = size * k.L(i10);
        for (int i11 = 0; i11 < list.size(); i11++) {
            L += k.g((h) list.get(i11));
        }
        return L;
    }

    public static void c0(int i10, List list, q1 q1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            q1Var.x(i10, list, z10);
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
            return k.L(i10) + k.x(e10);
        }
        return e10 + (size * k.L(i10));
    }

    public static void d0(int i10, List list, q1 q1Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            q1Var.g(i10, list, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof y) {
            y yVar = (y) list;
            i10 = 0;
            while (i11 < size) {
                i10 += k.k(yVar.i(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += k.k(((Integer) list.get(i11)).intValue());
                i11++;
            }
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
            return k.L(i10) + k.x(size * 4);
        }
        return size * k.l(i10, 0);
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
            return k.L(i10) + k.x(size * 8);
        }
        return size * k.n(i10, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(List list) {
        return list.size() * 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(int i10, List list, d1 d1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            i11 += k.r(i10, (o0) list.get(i12), d1Var);
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
            return k.L(i10) + k.x(l10);
        }
        return l10 + (size * k.L(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int l(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof y) {
            y yVar = (y) list;
            i10 = 0;
            while (i11 < size) {
                i10 += k.u(yVar.i(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += k.u(((Integer) list.get(i11)).intValue());
                i11++;
            }
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
            return k.L(i10) + k.x(n10);
        }
        return n10 + (list.size() * k.L(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int n(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof f0) {
            f0 f0Var = (f0) list;
            i10 = 0;
            while (i11 < size) {
                i10 += k.w(f0Var.i(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += k.w(((Long) list.get(i11)).longValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int o(int i10, Object obj, d1 d1Var) {
        return k.y(i10, (o0) obj, d1Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int p(int i10, List list, d1 d1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int L = k.L(i10) * size;
        for (int i11 = 0; i11 < size; i11++) {
            L += k.z((o0) list.get(i11), d1Var);
        }
        return L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int q(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int r10 = r(list);
        if (z10) {
            return k.L(i10) + k.x(r10);
        }
        return r10 + (size * k.L(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int r(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof y) {
            y yVar = (y) list;
            i10 = 0;
            while (i11 < size) {
                i10 += k.G(yVar.i(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += k.G(((Integer) list.get(i11)).intValue());
                i11++;
            }
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
            return k.L(i10) + k.x(t10);
        }
        return t10 + (size * k.L(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int t(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof f0) {
            f0 f0Var = (f0) list;
            i10 = 0;
            while (i11 < size) {
                i10 += k.I(f0Var.i(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += k.I(((Long) list.get(i11)).longValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int u(int i10, List list) {
        int K;
        int K2;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        int L = k.L(i10) * size;
        if (list instanceof d0) {
            d0 d0Var = (d0) list;
            while (i11 < size) {
                Object v10 = d0Var.v(i11);
                if (v10 instanceof h) {
                    K2 = k.g((h) v10);
                } else {
                    K2 = k.K((String) v10);
                }
                L += K2;
                i11++;
            }
        } else {
            while (i11 < size) {
                Object obj = list.get(i11);
                if (obj instanceof h) {
                    K = k.g((h) obj);
                } else {
                    K = k.K((String) obj);
                }
                L += K;
                i11++;
            }
        }
        return L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int v(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int w10 = w(list);
        if (z10) {
            return k.L(i10) + k.x(w10);
        }
        return w10 + (size * k.L(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int w(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof y) {
            y yVar = (y) list;
            i10 = 0;
            while (i11 < size) {
                i10 += k.N(yVar.i(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += k.N(((Integer) list.get(i11)).intValue());
                i11++;
            }
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
            return k.L(i10) + k.x(y10);
        }
        return y10 + (size * k.L(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int y(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof f0) {
            f0 f0Var = (f0) list;
            i10 = 0;
            while (i11 < size) {
                i10 += k.P(f0Var.i(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += k.P(((Long) list.get(i11)).longValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object z(Object obj, int i10, List list, z.c cVar, Object obj2, j1 j1Var) {
        if (cVar == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                int intValue = ((Integer) list.get(i12)).intValue();
                if (cVar.a(intValue)) {
                    if (i12 != i11) {
                        list.set(i11, Integer.valueOf(intValue));
                    }
                    i11++;
                } else {
                    obj2 = K(obj, i10, intValue, obj2, j1Var);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = ((Integer) it.next()).intValue();
                if (!cVar.a(intValue2)) {
                    obj2 = K(obj, i10, intValue2, obj2, j1Var);
                    it.remove();
                }
            }
        }
        return obj2;
    }
}
