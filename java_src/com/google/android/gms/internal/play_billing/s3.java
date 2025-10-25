package com.google.android.gms.internal.play_billing;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class s3 {

    /* renamed from: a  reason: collision with root package name */
    private static final Class f7109a;

    /* renamed from: b  reason: collision with root package name */
    private static final v3 f7110b;

    /* renamed from: c  reason: collision with root package name */
    private static final v3 f7111c;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f7112d = 0;

    static {
        Class<?> cls;
        Class<?> cls2;
        v3 v3Var = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f7109a = cls;
        try {
            cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                v3Var = (v3) cls2.getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Throwable unused3) {
            }
        }
        f7110b = v3Var;
        f7111c = new x3();
    }

    public static void A(int i10, List list, m4 m4Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            m4Var.t(i10, list, z10);
        }
    }

    public static void B(int i10, List list, m4 m4Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            m4Var.z(i10, list, z10);
        }
    }

    public static void C(int i10, List list, m4 m4Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            m4Var.G(i10, list, z10);
        }
    }

    public static void D(int i10, List list, m4 m4Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            m4Var.v(i10, list, z10);
        }
    }

    public static void E(int i10, List list, m4 m4Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            m4Var.C(i10, list, z10);
        }
    }

    public static void F(int i10, List list, m4 m4Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            m4Var.i(i10, list, z10);
        }
    }

    public static void a(int i10, List list, m4 m4Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            m4Var.a(i10, list, z10);
        }
    }

    public static void b(int i10, List list, m4 m4Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            m4Var.g(i10, list, z10);
        }
    }

    public static void c(int i10, List list, m4 m4Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            m4Var.j(i10, list, z10);
        }
    }

    public static void d(int i10, List list, m4 m4Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            m4Var.c(i10, list, z10);
        }
    }

    public static void e(int i10, List list, m4 m4Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            m4Var.h(i10, list, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean f(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj != null && obj.equals(obj2)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof c2) {
            c2 c2Var = (c2) list;
            i10 = 0;
            while (i11 < size) {
                i10 += m1.x(c2Var.g(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += m1.x(((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (m1.w(i10 << 3) + 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(List list) {
        return list.size() * 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (m1.w(i10 << 3) + 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int k(List list) {
        return list.size() * 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int l(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof c2) {
            c2 c2Var = (c2) list;
            i10 = 0;
            while (i11 < size) {
                i10 += m1.x(c2Var.g(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += m1.x(((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int m(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof v2) {
            v2 v2Var = (v2) list;
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += m1.x(((Long) list.get(i11)).longValue());
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int n(int i10, Object obj, q3 q3Var) {
        return m1.w(i10 << 3) + m1.u((f3) obj, q3Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int o(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof c2) {
            c2 c2Var = (c2) list;
            i10 = 0;
            while (i11 < size) {
                int g10 = c2Var.g(i11);
                i10 += m1.w((g10 >> 31) ^ (g10 + g10));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                int intValue = ((Integer) list.get(i11)).intValue();
                i10 += m1.w((intValue >> 31) ^ (intValue + intValue));
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int p(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof v2) {
            v2 v2Var = (v2) list;
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            long longValue = ((Long) list.get(i11)).longValue();
            i10 += m1.x((longValue >> 63) ^ (longValue + longValue));
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int q(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof c2) {
            c2 c2Var = (c2) list;
            i10 = 0;
            while (i11 < size) {
                i10 += m1.w(c2Var.g(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += m1.w(((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int r(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof v2) {
            v2 v2Var = (v2) list;
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += m1.x(((Long) list.get(i11)).longValue());
        }
        return i10;
    }

    public static v3 s() {
        return f7110b;
    }

    public static v3 t() {
        return f7111c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object u(Object obj, int i10, int i11, Object obj2, v3 v3Var) {
        if (obj2 == null) {
            obj2 = v3Var.c(obj);
        }
        v3Var.f(obj2, i10, i11);
        return obj2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void v(v3 v3Var, Object obj, Object obj2) {
        v3Var.h(obj, v3Var.e(v3Var.d(obj), v3Var.d(obj2)));
    }

    public static void w(Class cls) {
        Class cls2;
        if (!b2.class.isAssignableFrom(cls) && (cls2 = f7109a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void x(int i10, List list, m4 m4Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            m4Var.r(i10, list, z10);
        }
    }

    public static void y(int i10, List list, m4 m4Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            m4Var.D(i10, list, z10);
        }
    }

    public static void z(int i10, List list, m4 m4Var, boolean z10) {
        if (list != null && !list.isEmpty()) {
            m4Var.w(i10, list, z10);
        }
    }
}
