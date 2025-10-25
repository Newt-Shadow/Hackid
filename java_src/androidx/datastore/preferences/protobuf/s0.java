package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.q1;
import androidx.datastore.preferences.protobuf.r1;
import androidx.datastore.preferences.protobuf.y;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.apache.tika.pipes.PipesConfigBase;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class s0 implements e1 {

    /* renamed from: r  reason: collision with root package name */
    private static final int[] f2309r = new int[0];

    /* renamed from: s  reason: collision with root package name */
    private static final Unsafe f2310s = o1.A();

    /* renamed from: a  reason: collision with root package name */
    private final int[] f2311a;

    /* renamed from: b  reason: collision with root package name */
    private final Object[] f2312b;

    /* renamed from: c  reason: collision with root package name */
    private final int f2313c;

    /* renamed from: d  reason: collision with root package name */
    private final int f2314d;

    /* renamed from: e  reason: collision with root package name */
    private final p0 f2315e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f2316f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f2317g;

    /* renamed from: h  reason: collision with root package name */
    private final z0 f2318h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f2319i;

    /* renamed from: j  reason: collision with root package name */
    private final int[] f2320j;

    /* renamed from: k  reason: collision with root package name */
    private final int f2321k;

    /* renamed from: l  reason: collision with root package name */
    private final int f2322l;

    /* renamed from: m  reason: collision with root package name */
    private final u0 f2323m;

    /* renamed from: n  reason: collision with root package name */
    private final d0 f2324n;

    /* renamed from: o  reason: collision with root package name */
    private final l1 f2325o;

    /* renamed from: p  reason: collision with root package name */
    private final p f2326p;

    /* renamed from: q  reason: collision with root package name */
    private final k0 f2327q;

    private s0(int[] iArr, Object[] objArr, int i10, int i11, p0 p0Var, z0 z0Var, boolean z10, int[] iArr2, int i12, int i13, u0 u0Var, d0 d0Var, l1 l1Var, p pVar, k0 k0Var) {
        boolean z11;
        this.f2311a = iArr;
        this.f2312b = objArr;
        this.f2313c = i10;
        this.f2314d = i11;
        this.f2317g = p0Var instanceof w;
        this.f2318h = z0Var;
        if (pVar != null && pVar.e(p0Var)) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.f2316f = z11;
        this.f2319i = z10;
        this.f2320j = iArr2;
        this.f2321k = i12;
        this.f2322l = i13;
        this.f2323m = u0Var;
        this.f2324n = d0Var;
        this.f2325o = l1Var;
        this.f2326p = pVar;
        this.f2315e = p0Var;
        this.f2327q = k0Var;
    }

    private static boolean A(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof w) {
            return ((w) obj).C();
        }
        return true;
    }

    private boolean B(Object obj, Object obj2, int i10) {
        long X = X(i10) & 1048575;
        if (o1.w(obj, X) == o1.w(obj2, X)) {
            return true;
        }
        return false;
    }

    private boolean C(Object obj, int i10, int i11) {
        if (o1.w(obj, X(i11) & 1048575) == i10) {
            return true;
        }
        return false;
    }

    private static boolean D(int i10) {
        return (i10 & 268435456) != 0;
    }

    private static long E(Object obj, long j10) {
        return o1.x(obj, j10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:230:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0092, code lost:
        r0 = r19.f2321k;
        r5 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0098, code lost:
        if (r0 >= r19.f2322l) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x009a, code lost:
        r5 = n(r22, r19.f2320j[r0], r5, r20, r22);
        r0 = r0 + 1;
        r4 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b0, code lost:
        r11 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b1, code lost:
        if (r5 == null) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00b3, code lost:
        r7.o(r11, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b6, code lost:
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:156:0x05f7 A[Catch: all -> 0x0654, TRY_LEAVE, TryCatch #1 {all -> 0x0654, blocks: (B:61:0x00d7, B:154:0x05f1, B:156:0x05f7, B:166:0x0620, B:88:0x024f, B:89:0x0254, B:90:0x0265, B:91:0x0276, B:92:0x0287, B:93:0x0298, B:94:0x02b9, B:95:0x02ca, B:96:0x02db, B:97:0x02ec, B:98:0x02fd, B:99:0x030e, B:100:0x031f, B:101:0x0330, B:102:0x0341, B:103:0x0352, B:104:0x0363, B:105:0x0374, B:106:0x0385, B:107:0x0396, B:108:0x03b7, B:109:0x03c8, B:110:0x03d9, B:111:0x03ed, B:112:0x03f4, B:113:0x0405, B:114:0x0416, B:115:0x0427, B:116:0x0438, B:117:0x0449, B:118:0x045a, B:119:0x046b, B:120:0x047c, B:121:0x0490, B:122:0x04a2, B:123:0x04b4, B:124:0x04c6, B:125:0x04d8, B:126:0x04ed, B:127:0x04ff, B:128:0x0511, B:129:0x0525, B:130:0x052f, B:131:0x0541, B:132:0x0553, B:133:0x0565, B:134:0x0577, B:135:0x0589, B:136:0x059b, B:137:0x05ad), top: B:197:0x00d7 }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x061e  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0665 A[LOOP:2: B:187:0x0661->B:189:0x0665, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x067a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void F(androidx.datastore.preferences.protobuf.l1 r20, androidx.datastore.preferences.protobuf.p r21, java.lang.Object r22, androidx.datastore.preferences.protobuf.d1 r23, androidx.datastore.preferences.protobuf.o r24) {
        /*
            Method dump skipped, instructions count: 1804
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.s0.F(androidx.datastore.preferences.protobuf.l1, androidx.datastore.preferences.protobuf.p, java.lang.Object, androidx.datastore.preferences.protobuf.d1, androidx.datastore.preferences.protobuf.o):void");
    }

    private final void G(Object obj, int i10, Object obj2, o oVar, d1 d1Var) {
        long Q = Q(j0(i10));
        Object z10 = o1.z(obj, Q);
        if (z10 == null) {
            z10 = this.f2327q.e(obj2);
            o1.O(obj, Q, z10);
        } else if (this.f2327q.g(z10)) {
            Object e10 = this.f2327q.e(obj2);
            this.f2327q.a(e10, z10);
            o1.O(obj, Q, e10);
            z10 = e10;
        }
        d1Var.K(this.f2327q.d(z10), this.f2327q.c(obj2), oVar);
    }

    private void H(Object obj, Object obj2, int i10) {
        if (!v(obj2, i10)) {
            return;
        }
        long Q = Q(j0(i10));
        Unsafe unsafe = f2310s;
        Object object = unsafe.getObject(obj2, Q);
        if (object != null) {
            e1 r10 = r(i10);
            if (!v(obj, i10)) {
                if (!A(object)) {
                    unsafe.putObject(obj, Q, object);
                } else {
                    Object newInstance = r10.newInstance();
                    r10.a(newInstance, object);
                    unsafe.putObject(obj, Q, newInstance);
                }
                d0(obj, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, Q);
            if (!A(object2)) {
                Object newInstance2 = r10.newInstance();
                r10.a(newInstance2, object2);
                unsafe.putObject(obj, Q, newInstance2);
                object2 = newInstance2;
            }
            r10.a(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + P(i10) + " is present but null: " + obj2);
    }

    private void I(Object obj, Object obj2, int i10) {
        int P = P(i10);
        if (!C(obj2, P, i10)) {
            return;
        }
        long Q = Q(j0(i10));
        Unsafe unsafe = f2310s;
        Object object = unsafe.getObject(obj2, Q);
        if (object != null) {
            e1 r10 = r(i10);
            if (!C(obj, P, i10)) {
                if (!A(object)) {
                    unsafe.putObject(obj, Q, object);
                } else {
                    Object newInstance = r10.newInstance();
                    r10.a(newInstance, object);
                    unsafe.putObject(obj, Q, newInstance);
                }
                e0(obj, P, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, Q);
            if (!A(object2)) {
                Object newInstance2 = r10.newInstance();
                r10.a(newInstance2, object2);
                unsafe.putObject(obj, Q, newInstance2);
                object2 = newInstance2;
            }
            r10.a(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + P(i10) + " is present but null: " + obj2);
    }

    private void J(Object obj, Object obj2, int i10) {
        int j02 = j0(i10);
        long Q = Q(j02);
        int P = P(i10);
        switch (i0(j02)) {
            case 0:
                if (v(obj2, i10)) {
                    o1.K(obj, Q, o1.u(obj2, Q));
                    d0(obj, i10);
                    return;
                }
                return;
            case 1:
                if (v(obj2, i10)) {
                    o1.L(obj, Q, o1.v(obj2, Q));
                    d0(obj, i10);
                    return;
                }
                return;
            case 2:
                if (v(obj2, i10)) {
                    o1.N(obj, Q, o1.x(obj2, Q));
                    d0(obj, i10);
                    return;
                }
                return;
            case 3:
                if (v(obj2, i10)) {
                    o1.N(obj, Q, o1.x(obj2, Q));
                    d0(obj, i10);
                    return;
                }
                return;
            case 4:
                if (v(obj2, i10)) {
                    o1.M(obj, Q, o1.w(obj2, Q));
                    d0(obj, i10);
                    return;
                }
                return;
            case 5:
                if (v(obj2, i10)) {
                    o1.N(obj, Q, o1.x(obj2, Q));
                    d0(obj, i10);
                    return;
                }
                return;
            case 6:
                if (v(obj2, i10)) {
                    o1.M(obj, Q, o1.w(obj2, Q));
                    d0(obj, i10);
                    return;
                }
                return;
            case 7:
                if (v(obj2, i10)) {
                    o1.E(obj, Q, o1.p(obj2, Q));
                    d0(obj, i10);
                    return;
                }
                return;
            case 8:
                if (v(obj2, i10)) {
                    o1.O(obj, Q, o1.z(obj2, Q));
                    d0(obj, i10);
                    return;
                }
                return;
            case 9:
                H(obj, obj2, i10);
                return;
            case 10:
                if (v(obj2, i10)) {
                    o1.O(obj, Q, o1.z(obj2, Q));
                    d0(obj, i10);
                    return;
                }
                return;
            case 11:
                if (v(obj2, i10)) {
                    o1.M(obj, Q, o1.w(obj2, Q));
                    d0(obj, i10);
                    return;
                }
                return;
            case 12:
                if (v(obj2, i10)) {
                    o1.M(obj, Q, o1.w(obj2, Q));
                    d0(obj, i10);
                    return;
                }
                return;
            case 13:
                if (v(obj2, i10)) {
                    o1.M(obj, Q, o1.w(obj2, Q));
                    d0(obj, i10);
                    return;
                }
                return;
            case 14:
                if (v(obj2, i10)) {
                    o1.N(obj, Q, o1.x(obj2, Q));
                    d0(obj, i10);
                    return;
                }
                return;
            case 15:
                if (v(obj2, i10)) {
                    o1.M(obj, Q, o1.w(obj2, Q));
                    d0(obj, i10);
                    return;
                }
                return;
            case 16:
                if (v(obj2, i10)) {
                    o1.N(obj, Q, o1.x(obj2, Q));
                    d0(obj, i10);
                    return;
                }
                return;
            case 17:
                H(obj, obj2, i10);
                return;
            case 18:
            case C1415p9.C /* 19 */:
            case 20:
            case 21:
            case Build.API_LEVELS.API_22 /* 22 */:
            case Build.API_LEVELS.API_23 /* 23 */:
            case Build.API_LEVELS.API_24 /* 24 */:
            case 25:
            case 26:
            case 27:
            case Build.API_LEVELS.API_28 /* 28 */:
            case 29:
            case Build.API_LEVELS.API_30 /* 30 */:
            case Build.API_LEVELS.API_31 /* 31 */:
            case Build.API_LEVELS.API_32 /* 32 */:
            case Build.API_LEVELS.API_33 /* 33 */:
            case Build.API_LEVELS.API_34 /* 34 */:
            case 35:
            case Build.API_LEVELS.API_36 /* 36 */:
            case 37:
            case C1415p9.K /* 38 */:
            case 39:
            case C1415p9.L /* 40 */:
            case 41:
            case C1415p9.M /* 42 */:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                this.f2324n.a(obj, obj2, Q);
                return;
            case 50:
                g1.E(this.f2327q, obj, obj2, Q);
                return;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (C(obj2, P, i10)) {
                    o1.O(obj, Q, o1.z(obj2, Q));
                    e0(obj, P, i10);
                    return;
                }
                return;
            case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                I(obj, obj2, i10);
                return;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (C(obj2, P, i10)) {
                    o1.O(obj, Q, o1.z(obj2, Q));
                    e0(obj, P, i10);
                    return;
                }
                return;
            case 68:
                I(obj, obj2, i10);
                return;
            default:
                return;
        }
    }

    private Object K(Object obj, int i10) {
        e1 r10 = r(i10);
        long Q = Q(j0(i10));
        if (!v(obj, i10)) {
            return r10.newInstance();
        }
        Object object = f2310s.getObject(obj, Q);
        if (A(object)) {
            return object;
        }
        Object newInstance = r10.newInstance();
        if (object != null) {
            r10.a(newInstance, object);
        }
        return newInstance;
    }

    private Object L(Object obj, int i10, int i11) {
        e1 r10 = r(i11);
        if (!C(obj, i10, i11)) {
            return r10.newInstance();
        }
        Object object = f2310s.getObject(obj, Q(j0(i11)));
        if (A(object)) {
            return object;
        }
        Object newInstance = r10.newInstance();
        if (object != null) {
            r10.a(newInstance, object);
        }
        return newInstance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static s0 M(Class cls, n0 n0Var, u0 u0Var, d0 d0Var, l1 l1Var, p pVar, k0 k0Var) {
        if (n0Var instanceof c1) {
            return O((c1) n0Var, u0Var, d0Var, l1Var, pVar, k0Var);
        }
        android.support.v4.media.session.b.a(n0Var);
        return N(null, u0Var, d0Var, l1Var, pVar, k0Var);
    }

    static s0 N(i1 i1Var, u0 u0Var, d0 d0Var, l1 l1Var, p pVar, k0 k0Var) {
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0265  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static androidx.datastore.preferences.protobuf.s0 O(androidx.datastore.preferences.protobuf.c1 r32, androidx.datastore.preferences.protobuf.u0 r33, androidx.datastore.preferences.protobuf.d0 r34, androidx.datastore.preferences.protobuf.l1 r35, androidx.datastore.preferences.protobuf.p r36, androidx.datastore.preferences.protobuf.k0 r37) {
        /*
            Method dump skipped, instructions count: 989
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.s0.O(androidx.datastore.preferences.protobuf.c1, androidx.datastore.preferences.protobuf.u0, androidx.datastore.preferences.protobuf.d0, androidx.datastore.preferences.protobuf.l1, androidx.datastore.preferences.protobuf.p, androidx.datastore.preferences.protobuf.k0):androidx.datastore.preferences.protobuf.s0");
    }

    private int P(int i10) {
        return this.f2311a[i10];
    }

    private static long Q(int i10) {
        return i10 & 1048575;
    }

    private static boolean R(Object obj, long j10) {
        return ((Boolean) o1.z(obj, j10)).booleanValue();
    }

    private static double S(Object obj, long j10) {
        return ((Double) o1.z(obj, j10)).doubleValue();
    }

    private static float T(Object obj, long j10) {
        return ((Float) o1.z(obj, j10)).floatValue();
    }

    private static int U(Object obj, long j10) {
        return ((Integer) o1.z(obj, j10)).intValue();
    }

    private static long V(Object obj, long j10) {
        return ((Long) o1.z(obj, j10)).longValue();
    }

    private int W(int i10) {
        if (i10 >= this.f2313c && i10 <= this.f2314d) {
            return f0(i10, 0);
        }
        return -1;
    }

    private int X(int i10) {
        return this.f2311a[i10 + 2];
    }

    private void Y(Object obj, long j10, d1 d1Var, e1 e1Var, o oVar) {
        d1Var.M(this.f2324n.c(obj, j10), e1Var, oVar);
    }

    private void Z(Object obj, int i10, d1 d1Var, e1 e1Var, o oVar) {
        d1Var.N(this.f2324n.c(obj, Q(i10)), e1Var, oVar);
    }

    private void a0(Object obj, int i10, d1 d1Var) {
        if (u(i10)) {
            o1.O(obj, Q(i10), d1Var.H());
        } else if (this.f2317g) {
            o1.O(obj, Q(i10), d1Var.v());
        } else {
            o1.O(obj, Q(i10), d1Var.z());
        }
    }

    private void b0(Object obj, int i10, d1 d1Var) {
        if (u(i10)) {
            d1Var.y(this.f2324n.c(obj, Q(i10)));
        } else {
            d1Var.x(this.f2324n.c(obj, Q(i10)));
        }
    }

    private static Field c0(Class cls, String str) {
        Field[] declaredFields;
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            for (Field field : cls.getDeclaredFields()) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private void d0(Object obj, int i10) {
        int X = X(i10);
        long j10 = 1048575 & X;
        if (j10 == 1048575) {
            return;
        }
        o1.M(obj, j10, (1 << (X >>> 20)) | o1.w(obj, j10));
    }

    private void e0(Object obj, int i10, int i11) {
        o1.M(obj, X(i11) & 1048575, i10);
    }

    private int f0(int i10, int i11) {
        int length = (this.f2311a.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int P = P(i13);
            if (i10 == P) {
                return i13;
            }
            if (i10 < P) {
                length = i12 - 1;
            } else {
                i11 = i12 + 1;
            }
        }
        return -1;
    }

    private void g0(Object obj, int i10, Object obj2) {
        f2310s.putObject(obj, Q(j0(i10)), obj2);
        d0(obj, i10);
    }

    private void h0(Object obj, int i10, int i11, Object obj2) {
        f2310s.putObject(obj, Q(j0(i11)), obj2);
        e0(obj, i10, i11);
    }

    private boolean i(Object obj, Object obj2, int i10) {
        if (v(obj, i10) == v(obj2, i10)) {
            return true;
        }
        return false;
    }

    private static int i0(int i10) {
        return (i10 & 267386880) >>> 20;
    }

    private static boolean j(Object obj, long j10) {
        return o1.p(obj, j10);
    }

    private int j0(int i10) {
        return this.f2311a[i10 + 1];
    }

    private static void k(Object obj) {
        if (A(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + obj);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0626  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void k0(java.lang.Object r22, androidx.datastore.preferences.protobuf.r1 r23) {
        /*
            Method dump skipped, instructions count: 1744
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.s0.k0(java.lang.Object, androidx.datastore.preferences.protobuf.r1):void");
    }

    private static double l(Object obj, long j10) {
        return o1.u(obj, j10);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x058e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void l0(java.lang.Object r11, androidx.datastore.preferences.protobuf.r1 r12) {
        /*
            Method dump skipped, instructions count: 1586
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.s0.l0(java.lang.Object, androidx.datastore.preferences.protobuf.r1):void");
    }

    private boolean m(Object obj, Object obj2, int i10) {
        int j02 = j0(i10);
        long Q = Q(j02);
        switch (i0(j02)) {
            case 0:
                if (!i(obj, obj2, i10) || Double.doubleToLongBits(o1.u(obj, Q)) != Double.doubleToLongBits(o1.u(obj2, Q))) {
                    return false;
                }
                return true;
            case 1:
                if (!i(obj, obj2, i10) || Float.floatToIntBits(o1.v(obj, Q)) != Float.floatToIntBits(o1.v(obj2, Q))) {
                    return false;
                }
                return true;
            case 2:
                if (!i(obj, obj2, i10) || o1.x(obj, Q) != o1.x(obj2, Q)) {
                    return false;
                }
                return true;
            case 3:
                if (!i(obj, obj2, i10) || o1.x(obj, Q) != o1.x(obj2, Q)) {
                    return false;
                }
                return true;
            case 4:
                if (!i(obj, obj2, i10) || o1.w(obj, Q) != o1.w(obj2, Q)) {
                    return false;
                }
                return true;
            case 5:
                if (!i(obj, obj2, i10) || o1.x(obj, Q) != o1.x(obj2, Q)) {
                    return false;
                }
                return true;
            case 6:
                if (!i(obj, obj2, i10) || o1.w(obj, Q) != o1.w(obj2, Q)) {
                    return false;
                }
                return true;
            case 7:
                if (!i(obj, obj2, i10) || o1.p(obj, Q) != o1.p(obj2, Q)) {
                    return false;
                }
                return true;
            case 8:
                if (!i(obj, obj2, i10) || !g1.H(o1.z(obj, Q), o1.z(obj2, Q))) {
                    return false;
                }
                return true;
            case 9:
                if (!i(obj, obj2, i10) || !g1.H(o1.z(obj, Q), o1.z(obj2, Q))) {
                    return false;
                }
                return true;
            case 10:
                if (!i(obj, obj2, i10) || !g1.H(o1.z(obj, Q), o1.z(obj2, Q))) {
                    return false;
                }
                return true;
            case 11:
                if (!i(obj, obj2, i10) || o1.w(obj, Q) != o1.w(obj2, Q)) {
                    return false;
                }
                return true;
            case 12:
                if (!i(obj, obj2, i10) || o1.w(obj, Q) != o1.w(obj2, Q)) {
                    return false;
                }
                return true;
            case 13:
                if (!i(obj, obj2, i10) || o1.w(obj, Q) != o1.w(obj2, Q)) {
                    return false;
                }
                return true;
            case 14:
                if (!i(obj, obj2, i10) || o1.x(obj, Q) != o1.x(obj2, Q)) {
                    return false;
                }
                return true;
            case 15:
                if (!i(obj, obj2, i10) || o1.w(obj, Q) != o1.w(obj2, Q)) {
                    return false;
                }
                return true;
            case 16:
                if (!i(obj, obj2, i10) || o1.x(obj, Q) != o1.x(obj2, Q)) {
                    return false;
                }
                return true;
            case 17:
                if (!i(obj, obj2, i10) || !g1.H(o1.z(obj, Q), o1.z(obj2, Q))) {
                    return false;
                }
                return true;
            case 18:
            case C1415p9.C /* 19 */:
            case 20:
            case 21:
            case Build.API_LEVELS.API_22 /* 22 */:
            case Build.API_LEVELS.API_23 /* 23 */:
            case Build.API_LEVELS.API_24 /* 24 */:
            case 25:
            case 26:
            case 27:
            case Build.API_LEVELS.API_28 /* 28 */:
            case 29:
            case Build.API_LEVELS.API_30 /* 30 */:
            case Build.API_LEVELS.API_31 /* 31 */:
            case Build.API_LEVELS.API_32 /* 32 */:
            case Build.API_LEVELS.API_33 /* 33 */:
            case Build.API_LEVELS.API_34 /* 34 */:
            case 35:
            case Build.API_LEVELS.API_36 /* 36 */:
            case 37:
            case C1415p9.K /* 38 */:
            case 39:
            case C1415p9.L /* 40 */:
            case 41:
            case C1415p9.M /* 42 */:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                return g1.H(o1.z(obj, Q), o1.z(obj2, Q));
            case 50:
                return g1.H(o1.z(obj, Q), o1.z(obj2, Q));
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
                if (!B(obj, obj2, i10) || !g1.H(o1.z(obj, Q), o1.z(obj2, Q))) {
                    return false;
                }
                return true;
            default:
                return true;
        }
    }

    private void m0(r1 r1Var, int i10, Object obj, int i11) {
        if (obj != null) {
            r1Var.N(i10, this.f2327q.c(q(i11)), this.f2327q.h(obj));
        }
    }

    private Object n(Object obj, int i10, Object obj2, l1 l1Var, Object obj3) {
        P(i10);
        if (o1.z(obj, Q(j0(i10))) == null) {
            return obj2;
        }
        p(i10);
        return obj2;
    }

    private void n0(int i10, Object obj, r1 r1Var) {
        if (obj instanceof String) {
            r1Var.k(i10, (String) obj);
        } else {
            r1Var.L(i10, (g) obj);
        }
    }

    private static float o(Object obj, long j10) {
        return o1.v(obj, j10);
    }

    private void o0(l1 l1Var, Object obj, r1 r1Var) {
        l1Var.t(l1Var.g(obj), r1Var);
    }

    private y.a p(int i10) {
        android.support.v4.media.session.b.a(this.f2312b[((i10 / 3) * 2) + 1]);
        return null;
    }

    private Object q(int i10) {
        return this.f2312b[(i10 / 3) * 2];
    }

    private e1 r(int i10) {
        int i11 = (i10 / 3) * 2;
        e1 e1Var = (e1) this.f2312b[i11];
        if (e1Var != null) {
            return e1Var;
        }
        e1 c10 = a1.a().c((Class) this.f2312b[i11 + 1]);
        this.f2312b[i11] = c10;
        return c10;
    }

    private int s(l1 l1Var, Object obj) {
        return l1Var.h(l1Var.g(obj));
    }

    private static int t(Object obj, long j10) {
        return o1.w(obj, j10);
    }

    private static boolean u(int i10) {
        return (i10 & 536870912) != 0;
    }

    private boolean v(Object obj, int i10) {
        int X = X(i10);
        long j10 = 1048575 & X;
        if (j10 == 1048575) {
            int j02 = j0(i10);
            long Q = Q(j02);
            switch (i0(j02)) {
                case 0:
                    if (Double.doubleToRawLongBits(o1.u(obj, Q)) == 0) {
                        return false;
                    }
                    return true;
                case 1:
                    if (Float.floatToRawIntBits(o1.v(obj, Q)) == 0) {
                        return false;
                    }
                    return true;
                case 2:
                    if (o1.x(obj, Q) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (o1.x(obj, Q) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (o1.w(obj, Q) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (o1.x(obj, Q) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (o1.w(obj, Q) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return o1.p(obj, Q);
                case 8:
                    Object z10 = o1.z(obj, Q);
                    if (z10 instanceof String) {
                        return !((String) z10).isEmpty();
                    }
                    if (z10 instanceof g) {
                        return !g.f2136b.equals(z10);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    if (o1.z(obj, Q) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    return !g.f2136b.equals(o1.z(obj, Q));
                case 11:
                    if (o1.w(obj, Q) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (o1.w(obj, Q) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (o1.w(obj, Q) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (o1.x(obj, Q) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (o1.w(obj, Q) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (o1.x(obj, Q) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (o1.z(obj, Q) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((o1.w(obj, j10) & (1 << (X >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    private boolean w(Object obj, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return v(obj, i10);
        }
        if ((i12 & i13) != 0) {
            return true;
        }
        return false;
    }

    private static boolean x(Object obj, int i10, e1 e1Var) {
        return e1Var.c(o1.z(obj, Q(i10)));
    }

    private boolean y(Object obj, int i10, int i11) {
        List list = (List) o1.z(obj, Q(i10));
        if (list.isEmpty()) {
            return true;
        }
        e1 r10 = r(i11);
        for (int i12 = 0; i12 < list.size(); i12++) {
            if (!r10.c(list.get(i12))) {
                return false;
            }
        }
        return true;
    }

    private boolean z(Object obj, int i10, int i11) {
        Map h10 = this.f2327q.h(o1.z(obj, Q(i10)));
        if (h10.isEmpty()) {
            return true;
        }
        if (this.f2327q.c(q(i11)).f2204c.a() != q1.c.MESSAGE) {
            return true;
        }
        e1 e1Var = null;
        for (Object obj2 : h10.values()) {
            if (e1Var == null) {
                e1Var = a1.a().c(obj2.getClass());
            }
            if (!e1Var.c(obj2)) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.e1
    public void a(Object obj, Object obj2) {
        k(obj);
        obj2.getClass();
        for (int i10 = 0; i10 < this.f2311a.length; i10 += 3) {
            J(obj, obj2, i10);
        }
        g1.F(this.f2325o, obj, obj2);
        if (this.f2316f) {
            g1.D(this.f2326p, obj, obj2);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.e1
    public void b(Object obj) {
        if (!A(obj)) {
            return;
        }
        if (obj instanceof w) {
            w wVar = (w) obj;
            wVar.l();
            wVar.k();
            wVar.E();
        }
        int length = this.f2311a.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int j02 = j0(i10);
            long Q = Q(j02);
            int i02 = i0(j02);
            if (i02 != 9) {
                if (i02 != 60 && i02 != 68) {
                    switch (i02) {
                        case 18:
                        case C1415p9.C /* 19 */:
                        case 20:
                        case 21:
                        case Build.API_LEVELS.API_22 /* 22 */:
                        case Build.API_LEVELS.API_23 /* 23 */:
                        case Build.API_LEVELS.API_24 /* 24 */:
                        case 25:
                        case 26:
                        case 27:
                        case Build.API_LEVELS.API_28 /* 28 */:
                        case 29:
                        case Build.API_LEVELS.API_30 /* 30 */:
                        case Build.API_LEVELS.API_31 /* 31 */:
                        case Build.API_LEVELS.API_32 /* 32 */:
                        case Build.API_LEVELS.API_33 /* 33 */:
                        case Build.API_LEVELS.API_34 /* 34 */:
                        case 35:
                        case Build.API_LEVELS.API_36 /* 36 */:
                        case 37:
                        case C1415p9.K /* 38 */:
                        case 39:
                        case C1415p9.L /* 40 */:
                        case 41:
                        case C1415p9.M /* 42 */:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                            this.f2324n.b(obj, Q);
                            break;
                        case 50:
                            Unsafe unsafe = f2310s;
                            Object object = unsafe.getObject(obj, Q);
                            if (object != null) {
                                unsafe.putObject(obj, Q, this.f2327q.b(object));
                                break;
                            } else {
                                break;
                            }
                    }
                } else if (C(obj, P(i10), i10)) {
                    r(i10).b(f2310s.getObject(obj, Q));
                }
            }
            if (v(obj, i10)) {
                r(i10).b(f2310s.getObject(obj, Q));
            }
        }
        this.f2325o.j(obj);
        if (this.f2316f) {
            this.f2326p.f(obj);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.e1
    public final boolean c(Object obj) {
        int i10;
        int i11;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        while (i14 < this.f2321k) {
            int i15 = this.f2320j[i14];
            int P = P(i15);
            int j02 = j0(i15);
            int i16 = this.f2311a[i15 + 2];
            int i17 = i16 & 1048575;
            int i18 = 1 << (i16 >>> 20);
            if (i17 != i12) {
                if (i17 != 1048575) {
                    i13 = f2310s.getInt(obj, i17);
                }
                i11 = i13;
                i10 = i17;
            } else {
                i10 = i12;
                i11 = i13;
            }
            if (D(j02) && !w(obj, i15, i10, i11, i18)) {
                return false;
            }
            int i02 = i0(j02);
            if (i02 != 9 && i02 != 17) {
                if (i02 != 27) {
                    if (i02 != 60 && i02 != 68) {
                        if (i02 != 49) {
                            if (i02 == 50 && !z(obj, j02, i15)) {
                                return false;
                            }
                        }
                    } else if (C(obj, P, i15) && !x(obj, j02, r(i15))) {
                        return false;
                    }
                }
                if (!y(obj, j02, i15)) {
                    return false;
                }
            } else if (w(obj, i15, i10, i11, i18) && !x(obj, j02, r(i15))) {
                return false;
            }
            i14++;
            i12 = i10;
            i13 = i11;
        }
        if (this.f2316f && !this.f2326p.c(obj).k()) {
            return false;
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.e1
    public boolean d(Object obj, Object obj2) {
        int length = this.f2311a.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            if (!m(obj, obj2, i10)) {
                return false;
            }
        }
        if (!this.f2325o.g(obj).equals(this.f2325o.g(obj2))) {
            return false;
        }
        if (this.f2316f) {
            return this.f2326p.c(obj).equals(this.f2326p.c(obj2));
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r9v16 */
    @Override // androidx.datastore.preferences.protobuf.e1
    public int e(Object obj) {
        int i10;
        int i11;
        int i12;
        boolean z10;
        int h10;
        int c10;
        int h11;
        int i13;
        int O;
        int Q;
        Unsafe unsafe = f2310s;
        ?? r92 = 0;
        int i14 = 1048575;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 1048575;
        while (i16 < this.f2311a.length) {
            int j02 = j0(i16);
            int i02 = i0(j02);
            int P = P(i16);
            int i19 = this.f2311a[i16 + 2];
            int i20 = i19 & i14;
            if (i02 <= 17) {
                if (i20 != i18) {
                    i15 = i20 == i14 ? r92 : unsafe.getInt(obj, i20);
                    i18 = i20;
                }
                i10 = i18;
                i11 = i15;
                i12 = 1 << (i19 >>> 20);
            } else {
                i10 = i18;
                i11 = i15;
                i12 = r92;
            }
            long Q2 = Q(j02);
            if (i02 < t.O.a() || i02 > t.f2329b0.a()) {
                i20 = r92;
            }
            int i21 = i20;
            switch (i02) {
                case 0:
                    z10 = r92;
                    if (!w(obj, i16, i10, i11, i12)) {
                        break;
                    } else {
                        h10 = j.h(P, 0.0d);
                        i17 += h10;
                        break;
                    }
                case 1:
                    z10 = r92;
                    if (!w(obj, i16, i10, i11, i12)) {
                        break;
                    } else {
                        h10 = j.p(P, 0.0f);
                        i17 += h10;
                        break;
                    }
                case 2:
                    z10 = r92;
                    if (!w(obj, i16, i10, i11, i12)) {
                        break;
                    } else {
                        h10 = j.w(P, unsafe.getLong(obj, Q2));
                        i17 += h10;
                        break;
                    }
                case 3:
                    z10 = r92;
                    if (!w(obj, i16, i10, i11, i12)) {
                        break;
                    } else {
                        h10 = j.R(P, unsafe.getLong(obj, Q2));
                        i17 += h10;
                        break;
                    }
                case 4:
                    z10 = r92;
                    if (!w(obj, i16, i10, i11, i12)) {
                        break;
                    } else {
                        h10 = j.u(P, unsafe.getInt(obj, Q2));
                        i17 += h10;
                        break;
                    }
                case 5:
                    z10 = r92;
                    if (!w(obj, i16, i10, i11, i12)) {
                        break;
                    } else {
                        h10 = j.n(P, 0L);
                        i17 += h10;
                        break;
                    }
                case 6:
                    if (w(obj, i16, i10, i11, i12)) {
                        z10 = false;
                        h10 = j.l(P, 0);
                        i17 += h10;
                        break;
                    }
                    z10 = false;
                    break;
                case 7:
                    if (w(obj, i16, i10, i11, i12)) {
                        c10 = j.c(P, true);
                        i17 += c10;
                    }
                    z10 = false;
                    break;
                case 8:
                    if (w(obj, i16, i10, i11, i12)) {
                        Object object = unsafe.getObject(obj, Q2);
                        if (object instanceof g) {
                            c10 = j.f(P, (g) object);
                        } else {
                            c10 = j.M(P, (String) object);
                        }
                        i17 += c10;
                    }
                    z10 = false;
                    break;
                case 9:
                    if (w(obj, i16, i10, i11, i12)) {
                        c10 = g1.o(P, unsafe.getObject(obj, Q2), r(i16));
                        i17 += c10;
                    }
                    z10 = false;
                    break;
                case 10:
                    if (w(obj, i16, i10, i11, i12)) {
                        c10 = j.f(P, (g) unsafe.getObject(obj, Q2));
                        i17 += c10;
                    }
                    z10 = false;
                    break;
                case 11:
                    if (w(obj, i16, i10, i11, i12)) {
                        c10 = j.P(P, unsafe.getInt(obj, Q2));
                        i17 += c10;
                    }
                    z10 = false;
                    break;
                case 12:
                    if (w(obj, i16, i10, i11, i12)) {
                        c10 = j.j(P, unsafe.getInt(obj, Q2));
                        i17 += c10;
                    }
                    z10 = false;
                    break;
                case 13:
                    if (w(obj, i16, i10, i11, i12)) {
                        i17 += j.E(P, 0);
                    }
                    z10 = false;
                    break;
                case 14:
                    if (w(obj, i16, i10, i11, i12)) {
                        c10 = j.G(P, 0L);
                        i17 += c10;
                    }
                    z10 = false;
                    break;
                case 15:
                    if (w(obj, i16, i10, i11, i12)) {
                        c10 = j.I(P, unsafe.getInt(obj, Q2));
                        i17 += c10;
                    }
                    z10 = false;
                    break;
                case 16:
                    if (w(obj, i16, i10, i11, i12)) {
                        c10 = j.K(P, unsafe.getLong(obj, Q2));
                        i17 += c10;
                    }
                    z10 = false;
                    break;
                case 17:
                    if (w(obj, i16, i10, i11, i12)) {
                        c10 = j.r(P, (p0) unsafe.getObject(obj, Q2), r(i16));
                        i17 += c10;
                    }
                    z10 = false;
                    break;
                case 18:
                    h11 = g1.h(P, (List) unsafe.getObject(obj, Q2), r92);
                    i17 += h11;
                    z10 = r92;
                    break;
                case C1415p9.C /* 19 */:
                    h11 = g1.f(P, (List) unsafe.getObject(obj, Q2), r92);
                    i17 += h11;
                    z10 = r92;
                    break;
                case 20:
                    h11 = g1.m(P, (List) unsafe.getObject(obj, Q2), r92);
                    i17 += h11;
                    z10 = r92;
                    break;
                case 21:
                    h11 = g1.x(P, (List) unsafe.getObject(obj, Q2), r92);
                    i17 += h11;
                    z10 = r92;
                    break;
                case Build.API_LEVELS.API_22 /* 22 */:
                    h11 = g1.k(P, (List) unsafe.getObject(obj, Q2), r92);
                    i17 += h11;
                    z10 = r92;
                    break;
                case Build.API_LEVELS.API_23 /* 23 */:
                    h11 = g1.h(P, (List) unsafe.getObject(obj, Q2), r92);
                    i17 += h11;
                    z10 = r92;
                    break;
                case Build.API_LEVELS.API_24 /* 24 */:
                    h11 = g1.f(P, (List) unsafe.getObject(obj, Q2), r92);
                    i17 += h11;
                    z10 = r92;
                    break;
                case 25:
                    h11 = g1.a(P, (List) unsafe.getObject(obj, Q2), r92);
                    i17 += h11;
                    z10 = r92;
                    break;
                case 26:
                    h11 = g1.u(P, (List) unsafe.getObject(obj, Q2));
                    i17 += h11;
                    z10 = r92;
                    break;
                case 27:
                    h11 = g1.p(P, (List) unsafe.getObject(obj, Q2), r(i16));
                    i17 += h11;
                    z10 = r92;
                    break;
                case Build.API_LEVELS.API_28 /* 28 */:
                    h11 = g1.c(P, (List) unsafe.getObject(obj, Q2));
                    i17 += h11;
                    z10 = r92;
                    break;
                case 29:
                    h11 = g1.v(P, (List) unsafe.getObject(obj, Q2), r92);
                    i17 += h11;
                    z10 = r92;
                    break;
                case Build.API_LEVELS.API_30 /* 30 */:
                    h11 = g1.d(P, (List) unsafe.getObject(obj, Q2), r92);
                    i17 += h11;
                    z10 = r92;
                    break;
                case Build.API_LEVELS.API_31 /* 31 */:
                    h11 = g1.f(P, (List) unsafe.getObject(obj, Q2), r92);
                    i17 += h11;
                    z10 = r92;
                    break;
                case Build.API_LEVELS.API_32 /* 32 */:
                    h11 = g1.h(P, (List) unsafe.getObject(obj, Q2), r92);
                    i17 += h11;
                    z10 = r92;
                    break;
                case Build.API_LEVELS.API_33 /* 33 */:
                    h11 = g1.q(P, (List) unsafe.getObject(obj, Q2), r92);
                    i17 += h11;
                    z10 = r92;
                    break;
                case Build.API_LEVELS.API_34 /* 34 */:
                    h11 = g1.s(P, (List) unsafe.getObject(obj, Q2), r92);
                    i17 += h11;
                    z10 = r92;
                    break;
                case 35:
                    i13 = g1.i((List) unsafe.getObject(obj, Q2));
                    if (i13 > 0) {
                        if (this.f2319i) {
                            unsafe.putInt(obj, i21, i13);
                        }
                        O = j.O(P);
                        Q = j.Q(i13);
                        h11 = O + Q + i13;
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case Build.API_LEVELS.API_36 /* 36 */:
                    i13 = g1.g((List) unsafe.getObject(obj, Q2));
                    if (i13 > 0) {
                        if (this.f2319i) {
                            unsafe.putInt(obj, i21, i13);
                        }
                        O = j.O(P);
                        Q = j.Q(i13);
                        h11 = O + Q + i13;
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 37:
                    i13 = g1.n((List) unsafe.getObject(obj, Q2));
                    if (i13 > 0) {
                        if (this.f2319i) {
                            unsafe.putInt(obj, i21, i13);
                        }
                        O = j.O(P);
                        Q = j.Q(i13);
                        h11 = O + Q + i13;
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case C1415p9.K /* 38 */:
                    i13 = g1.y((List) unsafe.getObject(obj, Q2));
                    if (i13 > 0) {
                        if (this.f2319i) {
                            unsafe.putInt(obj, i21, i13);
                        }
                        O = j.O(P);
                        Q = j.Q(i13);
                        h11 = O + Q + i13;
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 39:
                    i13 = g1.l((List) unsafe.getObject(obj, Q2));
                    if (i13 > 0) {
                        if (this.f2319i) {
                            unsafe.putInt(obj, i21, i13);
                        }
                        O = j.O(P);
                        Q = j.Q(i13);
                        h11 = O + Q + i13;
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case C1415p9.L /* 40 */:
                    i13 = g1.i((List) unsafe.getObject(obj, Q2));
                    if (i13 > 0) {
                        if (this.f2319i) {
                            unsafe.putInt(obj, i21, i13);
                        }
                        O = j.O(P);
                        Q = j.Q(i13);
                        h11 = O + Q + i13;
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 41:
                    i13 = g1.g((List) unsafe.getObject(obj, Q2));
                    if (i13 > 0) {
                        if (this.f2319i) {
                            unsafe.putInt(obj, i21, i13);
                        }
                        O = j.O(P);
                        Q = j.Q(i13);
                        h11 = O + Q + i13;
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case C1415p9.M /* 42 */:
                    i13 = g1.b((List) unsafe.getObject(obj, Q2));
                    if (i13 > 0) {
                        if (this.f2319i) {
                            unsafe.putInt(obj, i21, i13);
                        }
                        O = j.O(P);
                        Q = j.Q(i13);
                        h11 = O + Q + i13;
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 43:
                    i13 = g1.w((List) unsafe.getObject(obj, Q2));
                    if (i13 > 0) {
                        if (this.f2319i) {
                            unsafe.putInt(obj, i21, i13);
                        }
                        O = j.O(P);
                        Q = j.Q(i13);
                        h11 = O + Q + i13;
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 44:
                    i13 = g1.e((List) unsafe.getObject(obj, Q2));
                    if (i13 > 0) {
                        if (this.f2319i) {
                            unsafe.putInt(obj, i21, i13);
                        }
                        O = j.O(P);
                        Q = j.Q(i13);
                        h11 = O + Q + i13;
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 45:
                    i13 = g1.g((List) unsafe.getObject(obj, Q2));
                    if (i13 > 0) {
                        if (this.f2319i) {
                            unsafe.putInt(obj, i21, i13);
                        }
                        O = j.O(P);
                        Q = j.Q(i13);
                        h11 = O + Q + i13;
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 46:
                    i13 = g1.i((List) unsafe.getObject(obj, Q2));
                    if (i13 > 0) {
                        if (this.f2319i) {
                            unsafe.putInt(obj, i21, i13);
                        }
                        O = j.O(P);
                        Q = j.Q(i13);
                        h11 = O + Q + i13;
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 47:
                    i13 = g1.r((List) unsafe.getObject(obj, Q2));
                    if (i13 > 0) {
                        if (this.f2319i) {
                            unsafe.putInt(obj, i21, i13);
                        }
                        O = j.O(P);
                        Q = j.Q(i13);
                        h11 = O + Q + i13;
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 48:
                    i13 = g1.t((List) unsafe.getObject(obj, Q2));
                    if (i13 > 0) {
                        if (this.f2319i) {
                            unsafe.putInt(obj, i21, i13);
                        }
                        O = j.O(P);
                        Q = j.Q(i13);
                        h11 = O + Q + i13;
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 49:
                    h11 = g1.j(P, (List) unsafe.getObject(obj, Q2), r(i16));
                    i17 += h11;
                    z10 = r92;
                    break;
                case 50:
                    h11 = this.f2327q.f(P, unsafe.getObject(obj, Q2), q(i16));
                    i17 += h11;
                    z10 = r92;
                    break;
                case 51:
                    if (C(obj, P, i16)) {
                        h11 = j.h(P, 0.0d);
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 52:
                    if (C(obj, P, i16)) {
                        h11 = j.p(P, 0.0f);
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 53:
                    if (C(obj, P, i16)) {
                        h11 = j.w(P, V(obj, Q2));
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 54:
                    if (C(obj, P, i16)) {
                        h11 = j.R(P, V(obj, Q2));
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 55:
                    if (C(obj, P, i16)) {
                        h11 = j.u(P, U(obj, Q2));
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 56:
                    if (C(obj, P, i16)) {
                        h11 = j.n(P, 0L);
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 57:
                    if (C(obj, P, i16)) {
                        h11 = j.l(P, r92);
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 58:
                    if (C(obj, P, i16)) {
                        h11 = j.c(P, true);
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 59:
                    if (C(obj, P, i16)) {
                        Object object2 = unsafe.getObject(obj, Q2);
                        if (object2 instanceof g) {
                            h11 = j.f(P, (g) object2);
                        } else {
                            h11 = j.M(P, (String) object2);
                        }
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                    if (C(obj, P, i16)) {
                        h11 = g1.o(P, unsafe.getObject(obj, Q2), r(i16));
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 61:
                    if (C(obj, P, i16)) {
                        h11 = j.f(P, (g) unsafe.getObject(obj, Q2));
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 62:
                    if (C(obj, P, i16)) {
                        h11 = j.P(P, U(obj, Q2));
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 63:
                    if (C(obj, P, i16)) {
                        h11 = j.j(P, U(obj, Q2));
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 64:
                    if (C(obj, P, i16)) {
                        h11 = j.E(P, r92);
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 65:
                    if (C(obj, P, i16)) {
                        h11 = j.G(P, 0L);
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 66:
                    if (C(obj, P, i16)) {
                        h11 = j.I(P, U(obj, Q2));
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 67:
                    if (C(obj, P, i16)) {
                        h11 = j.K(P, V(obj, Q2));
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                case 68:
                    if (C(obj, P, i16)) {
                        h11 = j.r(P, (p0) unsafe.getObject(obj, Q2), r(i16));
                        i17 += h11;
                    }
                    z10 = r92;
                    break;
                default:
                    z10 = r92;
                    break;
            }
            i16 += 3;
            i18 = i10;
            r92 = z10;
            i15 = i11;
            i14 = 1048575;
        }
        int s10 = i17 + s(this.f2325o, obj);
        return this.f2316f ? s10 + this.f2326p.c(obj).h() : s10;
    }

    @Override // androidx.datastore.preferences.protobuf.e1
    public int f(Object obj) {
        int i10;
        int f10;
        int length = this.f2311a.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int j02 = j0(i12);
            int P = P(i12);
            long Q = Q(j02);
            int i13 = 37;
            switch (i0(j02)) {
                case 0:
                    i10 = i11 * 53;
                    f10 = y.f(Double.doubleToLongBits(o1.u(obj, Q)));
                    i11 = i10 + f10;
                    break;
                case 1:
                    i10 = i11 * 53;
                    f10 = Float.floatToIntBits(o1.v(obj, Q));
                    i11 = i10 + f10;
                    break;
                case 2:
                    i10 = i11 * 53;
                    f10 = y.f(o1.x(obj, Q));
                    i11 = i10 + f10;
                    break;
                case 3:
                    i10 = i11 * 53;
                    f10 = y.f(o1.x(obj, Q));
                    i11 = i10 + f10;
                    break;
                case 4:
                    i10 = i11 * 53;
                    f10 = o1.w(obj, Q);
                    i11 = i10 + f10;
                    break;
                case 5:
                    i10 = i11 * 53;
                    f10 = y.f(o1.x(obj, Q));
                    i11 = i10 + f10;
                    break;
                case 6:
                    i10 = i11 * 53;
                    f10 = o1.w(obj, Q);
                    i11 = i10 + f10;
                    break;
                case 7:
                    i10 = i11 * 53;
                    f10 = y.c(o1.p(obj, Q));
                    i11 = i10 + f10;
                    break;
                case 8:
                    i10 = i11 * 53;
                    f10 = ((String) o1.z(obj, Q)).hashCode();
                    i11 = i10 + f10;
                    break;
                case 9:
                    Object z10 = o1.z(obj, Q);
                    if (z10 != null) {
                        i13 = z10.hashCode();
                    }
                    i11 = (i11 * 53) + i13;
                    break;
                case 10:
                    i10 = i11 * 53;
                    f10 = o1.z(obj, Q).hashCode();
                    i11 = i10 + f10;
                    break;
                case 11:
                    i10 = i11 * 53;
                    f10 = o1.w(obj, Q);
                    i11 = i10 + f10;
                    break;
                case 12:
                    i10 = i11 * 53;
                    f10 = o1.w(obj, Q);
                    i11 = i10 + f10;
                    break;
                case 13:
                    i10 = i11 * 53;
                    f10 = o1.w(obj, Q);
                    i11 = i10 + f10;
                    break;
                case 14:
                    i10 = i11 * 53;
                    f10 = y.f(o1.x(obj, Q));
                    i11 = i10 + f10;
                    break;
                case 15:
                    i10 = i11 * 53;
                    f10 = o1.w(obj, Q);
                    i11 = i10 + f10;
                    break;
                case 16:
                    i10 = i11 * 53;
                    f10 = y.f(o1.x(obj, Q));
                    i11 = i10 + f10;
                    break;
                case 17:
                    Object z11 = o1.z(obj, Q);
                    if (z11 != null) {
                        i13 = z11.hashCode();
                    }
                    i11 = (i11 * 53) + i13;
                    break;
                case 18:
                case C1415p9.C /* 19 */:
                case 20:
                case 21:
                case Build.API_LEVELS.API_22 /* 22 */:
                case Build.API_LEVELS.API_23 /* 23 */:
                case Build.API_LEVELS.API_24 /* 24 */:
                case 25:
                case 26:
                case 27:
                case Build.API_LEVELS.API_28 /* 28 */:
                case 29:
                case Build.API_LEVELS.API_30 /* 30 */:
                case Build.API_LEVELS.API_31 /* 31 */:
                case Build.API_LEVELS.API_32 /* 32 */:
                case Build.API_LEVELS.API_33 /* 33 */:
                case Build.API_LEVELS.API_34 /* 34 */:
                case 35:
                case Build.API_LEVELS.API_36 /* 36 */:
                case 37:
                case C1415p9.K /* 38 */:
                case 39:
                case C1415p9.L /* 40 */:
                case 41:
                case C1415p9.M /* 42 */:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i10 = i11 * 53;
                    f10 = o1.z(obj, Q).hashCode();
                    i11 = i10 + f10;
                    break;
                case 50:
                    i10 = i11 * 53;
                    f10 = o1.z(obj, Q).hashCode();
                    i11 = i10 + f10;
                    break;
                case 51:
                    if (C(obj, P, i12)) {
                        i10 = i11 * 53;
                        f10 = y.f(Double.doubleToLongBits(S(obj, Q)));
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (C(obj, P, i12)) {
                        i10 = i11 * 53;
                        f10 = Float.floatToIntBits(T(obj, Q));
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (C(obj, P, i12)) {
                        i10 = i11 * 53;
                        f10 = y.f(V(obj, Q));
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (C(obj, P, i12)) {
                        i10 = i11 * 53;
                        f10 = y.f(V(obj, Q));
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (C(obj, P, i12)) {
                        i10 = i11 * 53;
                        f10 = U(obj, Q);
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (C(obj, P, i12)) {
                        i10 = i11 * 53;
                        f10 = y.f(V(obj, Q));
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (C(obj, P, i12)) {
                        i10 = i11 * 53;
                        f10 = U(obj, Q);
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (C(obj, P, i12)) {
                        i10 = i11 * 53;
                        f10 = y.c(R(obj, Q));
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (C(obj, P, i12)) {
                        i10 = i11 * 53;
                        f10 = ((String) o1.z(obj, Q)).hashCode();
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                    if (C(obj, P, i12)) {
                        i10 = i11 * 53;
                        f10 = o1.z(obj, Q).hashCode();
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (C(obj, P, i12)) {
                        i10 = i11 * 53;
                        f10 = o1.z(obj, Q).hashCode();
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (C(obj, P, i12)) {
                        i10 = i11 * 53;
                        f10 = U(obj, Q);
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (C(obj, P, i12)) {
                        i10 = i11 * 53;
                        f10 = U(obj, Q);
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (C(obj, P, i12)) {
                        i10 = i11 * 53;
                        f10 = U(obj, Q);
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (C(obj, P, i12)) {
                        i10 = i11 * 53;
                        f10 = y.f(V(obj, Q));
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (C(obj, P, i12)) {
                        i10 = i11 * 53;
                        f10 = U(obj, Q);
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (C(obj, P, i12)) {
                        i10 = i11 * 53;
                        f10 = y.f(V(obj, Q));
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (C(obj, P, i12)) {
                        i10 = i11 * 53;
                        f10 = o1.z(obj, Q).hashCode();
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i11 * 53) + this.f2325o.g(obj).hashCode();
        if (this.f2316f) {
            return (hashCode * 53) + this.f2326p.c(obj).hashCode();
        }
        return hashCode;
    }

    @Override // androidx.datastore.preferences.protobuf.e1
    public void g(Object obj, d1 d1Var, o oVar) {
        oVar.getClass();
        k(obj);
        F(this.f2325o, this.f2326p, obj, d1Var, oVar);
    }

    @Override // androidx.datastore.preferences.protobuf.e1
    public void h(Object obj, r1 r1Var) {
        if (r1Var.i() == r1.a.DESCENDING) {
            l0(obj, r1Var);
        } else {
            k0(obj, r1Var);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.e1
    public Object newInstance() {
        return this.f2323m.a(this.f2315e);
    }
}
