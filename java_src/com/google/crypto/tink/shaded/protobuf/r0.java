package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.e;
import com.google.crypto.tink.shaded.protobuf.h0;
import com.google.crypto.tink.shaded.protobuf.q1;
import com.google.crypto.tink.shaded.protobuf.z;
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
public final class r0 implements d1 {

    /* renamed from: r  reason: collision with root package name */
    private static final int[] f8583r = new int[0];

    /* renamed from: s  reason: collision with root package name */
    private static final Unsafe f8584s = n1.D();

    /* renamed from: a  reason: collision with root package name */
    private final int[] f8585a;

    /* renamed from: b  reason: collision with root package name */
    private final Object[] f8586b;

    /* renamed from: c  reason: collision with root package name */
    private final int f8587c;

    /* renamed from: d  reason: collision with root package name */
    private final int f8588d;

    /* renamed from: e  reason: collision with root package name */
    private final o0 f8589e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f8590f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f8591g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f8592h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f8593i;

    /* renamed from: j  reason: collision with root package name */
    private final int[] f8594j;

    /* renamed from: k  reason: collision with root package name */
    private final int f8595k;

    /* renamed from: l  reason: collision with root package name */
    private final int f8596l;

    /* renamed from: m  reason: collision with root package name */
    private final t0 f8597m;

    /* renamed from: n  reason: collision with root package name */
    private final e0 f8598n;

    /* renamed from: o  reason: collision with root package name */
    private final j1 f8599o;

    /* renamed from: p  reason: collision with root package name */
    private final q f8600p;

    /* renamed from: q  reason: collision with root package name */
    private final j0 f8601q;

    private r0(int[] iArr, Object[] objArr, int i10, int i11, o0 o0Var, boolean z10, boolean z11, int[] iArr2, int i12, int i13, t0 t0Var, e0 e0Var, j1 j1Var, q qVar, j0 j0Var) {
        boolean z12;
        this.f8585a = iArr;
        this.f8586b = objArr;
        this.f8587c = i10;
        this.f8588d = i11;
        this.f8591g = o0Var instanceof x;
        this.f8592h = z10;
        if (qVar != null && qVar.e(o0Var)) {
            z12 = true;
        } else {
            z12 = false;
        }
        this.f8590f = z12;
        this.f8593i = z11;
        this.f8594j = iArr2;
        this.f8595k = i12;
        this.f8596l = i13;
        this.f8597m = t0Var;
        this.f8598n = e0Var;
        this.f8599o = j1Var;
        this.f8600p = qVar;
        this.f8589e = o0Var;
        this.f8601q = j0Var;
    }

    private boolean A(Object obj, int i10) {
        int j02 = j0(i10);
        long j10 = 1048575 & j02;
        if (j10 == 1048575) {
            int v02 = v0(i10);
            long W = W(v02);
            switch (u0(v02)) {
                case 0:
                    if (Double.doubleToRawLongBits(n1.x(obj, W)) == 0) {
                        return false;
                    }
                    return true;
                case 1:
                    if (Float.floatToRawIntBits(n1.y(obj, W)) == 0) {
                        return false;
                    }
                    return true;
                case 2:
                    if (n1.A(obj, W) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (n1.A(obj, W) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (n1.z(obj, W) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (n1.A(obj, W) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (n1.z(obj, W) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return n1.r(obj, W);
                case 8:
                    Object C = n1.C(obj, W);
                    if (C instanceof String) {
                        return !((String) C).isEmpty();
                    }
                    if (C instanceof h) {
                        return !h.f8444b.equals(C);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    if (n1.C(obj, W) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    return !h.f8444b.equals(n1.C(obj, W));
                case 11:
                    if (n1.z(obj, W) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (n1.z(obj, W) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (n1.z(obj, W) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (n1.A(obj, W) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (n1.z(obj, W) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (n1.A(obj, W) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (n1.C(obj, W) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((n1.z(obj, j10) & (1 << (j02 >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    private void A0(int i10, Object obj, q1 q1Var) {
        if (obj instanceof String) {
            q1Var.k(i10, (String) obj);
        } else {
            q1Var.O(i10, (h) obj);
        }
    }

    private boolean B(Object obj, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return A(obj, i10);
        }
        if ((i12 & i13) != 0) {
            return true;
        }
        return false;
    }

    private void B0(j1 j1Var, Object obj, q1 q1Var) {
        j1Var.t(j1Var.g(obj), q1Var);
    }

    private static boolean C(Object obj, int i10, d1 d1Var) {
        return d1Var.c(n1.C(obj, W(i10)));
    }

    private boolean D(Object obj, int i10, int i11) {
        List list = (List) n1.C(obj, W(i10));
        if (list.isEmpty()) {
            return true;
        }
        d1 t10 = t(i11);
        for (int i12 = 0; i12 < list.size(); i12++) {
            if (!t10.c(list.get(i12))) {
                return false;
            }
        }
        return true;
    }

    private boolean E(Object obj, int i10, int i11) {
        if (this.f8601q.h(n1.C(obj, W(i10))).isEmpty()) {
            return true;
        }
        this.f8601q.c(s(i11));
        throw null;
    }

    private static boolean F(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof x) {
            return ((x) obj).D();
        }
        return true;
    }

    private boolean G(Object obj, Object obj2, int i10) {
        long j02 = j0(i10) & 1048575;
        if (n1.z(obj, j02) == n1.z(obj2, j02)) {
            return true;
        }
        return false;
    }

    private boolean H(Object obj, int i10, int i11) {
        if (n1.z(obj, j0(i11) & 1048575) == i10) {
            return true;
        }
        return false;
    }

    private static boolean I(int i10) {
        return (i10 & 268435456) != 0;
    }

    private static List J(Object obj, long j10) {
        return (List) n1.C(obj, j10);
    }

    private static long K(Object obj, long j10) {
        return n1.A(obj, j10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:229:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0091, code lost:
        r0 = r19.f8595k;
        r5 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0097, code lost:
        if (r0 >= r19.f8596l) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0099, code lost:
        r5 = p(r22, r19.f8594j[r0], r5, r20, r22);
        r0 = r0 + 1;
        r4 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00af, code lost:
        r10 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b0, code lost:
        if (r5 == null) goto L196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b2, code lost:
        r7.o(r10, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00b5, code lost:
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:155:0x05f6 A[Catch: all -> 0x0653, TRY_LEAVE, TryCatch #1 {all -> 0x0653, blocks: (B:60:0x00d6, B:153:0x05f0, B:155:0x05f6, B:165:0x061f, B:87:0x024e, B:88:0x0253, B:89:0x0264, B:90:0x0275, B:91:0x0286, B:92:0x0297, B:93:0x02b8, B:94:0x02c9, B:95:0x02da, B:96:0x02eb, B:97:0x02fc, B:98:0x030d, B:99:0x031e, B:100:0x032f, B:101:0x0340, B:102:0x0351, B:103:0x0362, B:104:0x0373, B:105:0x0384, B:106:0x0395, B:107:0x03b6, B:108:0x03c7, B:109:0x03d8, B:110:0x03ec, B:111:0x03f3, B:112:0x0404, B:113:0x0415, B:114:0x0426, B:115:0x0437, B:116:0x0448, B:117:0x0459, B:118:0x046a, B:119:0x047b, B:120:0x048f, B:121:0x04a1, B:122:0x04b3, B:123:0x04c5, B:124:0x04d7, B:125:0x04ec, B:126:0x04fe, B:127:0x0510, B:128:0x0524, B:129:0x052e, B:130:0x0540, B:131:0x0552, B:132:0x0564, B:133:0x0576, B:134:0x0588, B:135:0x059a, B:136:0x05ac), top: B:196:0x00d6 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x061d  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0664 A[LOOP:4: B:186:0x0660->B:188:0x0664, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0679  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void L(com.google.crypto.tink.shaded.protobuf.j1 r20, com.google.crypto.tink.shaded.protobuf.q r21, java.lang.Object r22, com.google.crypto.tink.shaded.protobuf.c1 r23, com.google.crypto.tink.shaded.protobuf.p r24) {
        /*
            Method dump skipped, instructions count: 1804
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.r0.L(com.google.crypto.tink.shaded.protobuf.j1, com.google.crypto.tink.shaded.protobuf.q, java.lang.Object, com.google.crypto.tink.shaded.protobuf.c1, com.google.crypto.tink.shaded.protobuf.p):void");
    }

    private final void M(Object obj, int i10, Object obj2, p pVar, c1 c1Var) {
        long W = W(v0(i10));
        Object C = n1.C(obj, W);
        if (C == null) {
            C = this.f8601q.e(obj2);
            n1.R(obj, W, C);
        } else if (this.f8601q.g(C)) {
            Object e10 = this.f8601q.e(obj2);
            this.f8601q.a(e10, C);
            n1.R(obj, W, e10);
            C = e10;
        }
        Map d10 = this.f8601q.d(C);
        this.f8601q.c(obj2);
        c1Var.M(d10, null, pVar);
    }

    private void N(Object obj, Object obj2, int i10) {
        if (!A(obj2, i10)) {
            return;
        }
        long W = W(v0(i10));
        Unsafe unsafe = f8584s;
        Object object = unsafe.getObject(obj2, W);
        if (object != null) {
            d1 t10 = t(i10);
            if (!A(obj, i10)) {
                if (!F(object)) {
                    unsafe.putObject(obj, W, object);
                } else {
                    Object newInstance = t10.newInstance();
                    t10.a(newInstance, object);
                    unsafe.putObject(obj, W, newInstance);
                }
                p0(obj, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, W);
            if (!F(object2)) {
                Object newInstance2 = t10.newInstance();
                t10.a(newInstance2, object2);
                unsafe.putObject(obj, W, newInstance2);
                object2 = newInstance2;
            }
            t10.a(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + V(i10) + " is present but null: " + obj2);
    }

    private void O(Object obj, Object obj2, int i10) {
        int V = V(i10);
        if (!H(obj2, V, i10)) {
            return;
        }
        long W = W(v0(i10));
        Unsafe unsafe = f8584s;
        Object object = unsafe.getObject(obj2, W);
        if (object != null) {
            d1 t10 = t(i10);
            if (!H(obj, V, i10)) {
                if (!F(object)) {
                    unsafe.putObject(obj, W, object);
                } else {
                    Object newInstance = t10.newInstance();
                    t10.a(newInstance, object);
                    unsafe.putObject(obj, W, newInstance);
                }
                q0(obj, V, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, W);
            if (!F(object2)) {
                Object newInstance2 = t10.newInstance();
                t10.a(newInstance2, object2);
                unsafe.putObject(obj, W, newInstance2);
                object2 = newInstance2;
            }
            t10.a(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + V(i10) + " is present but null: " + obj2);
    }

    private void P(Object obj, Object obj2, int i10) {
        int v02 = v0(i10);
        long W = W(v02);
        int V = V(i10);
        switch (u0(v02)) {
            case 0:
                if (A(obj2, i10)) {
                    n1.N(obj, W, n1.x(obj2, W));
                    p0(obj, i10);
                    return;
                }
                return;
            case 1:
                if (A(obj2, i10)) {
                    n1.O(obj, W, n1.y(obj2, W));
                    p0(obj, i10);
                    return;
                }
                return;
            case 2:
                if (A(obj2, i10)) {
                    n1.Q(obj, W, n1.A(obj2, W));
                    p0(obj, i10);
                    return;
                }
                return;
            case 3:
                if (A(obj2, i10)) {
                    n1.Q(obj, W, n1.A(obj2, W));
                    p0(obj, i10);
                    return;
                }
                return;
            case 4:
                if (A(obj2, i10)) {
                    n1.P(obj, W, n1.z(obj2, W));
                    p0(obj, i10);
                    return;
                }
                return;
            case 5:
                if (A(obj2, i10)) {
                    n1.Q(obj, W, n1.A(obj2, W));
                    p0(obj, i10);
                    return;
                }
                return;
            case 6:
                if (A(obj2, i10)) {
                    n1.P(obj, W, n1.z(obj2, W));
                    p0(obj, i10);
                    return;
                }
                return;
            case 7:
                if (A(obj2, i10)) {
                    n1.H(obj, W, n1.r(obj2, W));
                    p0(obj, i10);
                    return;
                }
                return;
            case 8:
                if (A(obj2, i10)) {
                    n1.R(obj, W, n1.C(obj2, W));
                    p0(obj, i10);
                    return;
                }
                return;
            case 9:
                N(obj, obj2, i10);
                return;
            case 10:
                if (A(obj2, i10)) {
                    n1.R(obj, W, n1.C(obj2, W));
                    p0(obj, i10);
                    return;
                }
                return;
            case 11:
                if (A(obj2, i10)) {
                    n1.P(obj, W, n1.z(obj2, W));
                    p0(obj, i10);
                    return;
                }
                return;
            case 12:
                if (A(obj2, i10)) {
                    n1.P(obj, W, n1.z(obj2, W));
                    p0(obj, i10);
                    return;
                }
                return;
            case 13:
                if (A(obj2, i10)) {
                    n1.P(obj, W, n1.z(obj2, W));
                    p0(obj, i10);
                    return;
                }
                return;
            case 14:
                if (A(obj2, i10)) {
                    n1.Q(obj, W, n1.A(obj2, W));
                    p0(obj, i10);
                    return;
                }
                return;
            case 15:
                if (A(obj2, i10)) {
                    n1.P(obj, W, n1.z(obj2, W));
                    p0(obj, i10);
                    return;
                }
                return;
            case 16:
                if (A(obj2, i10)) {
                    n1.Q(obj, W, n1.A(obj2, W));
                    p0(obj, i10);
                    return;
                }
                return;
            case 17:
                N(obj, obj2, i10);
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
                this.f8598n.d(obj, obj2, W);
                return;
            case 50:
                f1.E(this.f8601q, obj, obj2, W);
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
                if (H(obj2, V, i10)) {
                    n1.R(obj, W, n1.C(obj2, W));
                    q0(obj, V, i10);
                    return;
                }
                return;
            case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                O(obj, obj2, i10);
                return;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (H(obj2, V, i10)) {
                    n1.R(obj, W, n1.C(obj2, W));
                    q0(obj, V, i10);
                    return;
                }
                return;
            case 68:
                O(obj, obj2, i10);
                return;
            default:
                return;
        }
    }

    private Object Q(Object obj, int i10) {
        d1 t10 = t(i10);
        long W = W(v0(i10));
        if (!A(obj, i10)) {
            return t10.newInstance();
        }
        Object object = f8584s.getObject(obj, W);
        if (F(object)) {
            return object;
        }
        Object newInstance = t10.newInstance();
        if (object != null) {
            t10.a(newInstance, object);
        }
        return newInstance;
    }

    private Object R(Object obj, int i10, int i11) {
        d1 t10 = t(i11);
        if (!H(obj, i10, i11)) {
            return t10.newInstance();
        }
        Object object = f8584s.getObject(obj, W(v0(i11)));
        if (F(object)) {
            return object;
        }
        Object newInstance = t10.newInstance();
        if (object != null) {
            t10.a(newInstance, object);
        }
        return newInstance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r0 S(Class cls, m0 m0Var, t0 t0Var, e0 e0Var, j1 j1Var, q qVar, j0 j0Var) {
        if (m0Var instanceof b1) {
            return U((b1) m0Var, t0Var, e0Var, j1Var, qVar, j0Var);
        }
        android.support.v4.media.session.b.a(m0Var);
        return T(null, t0Var, e0Var, j1Var, qVar, j0Var);
    }

    static r0 T(g1 g1Var, t0 t0Var, e0 e0Var, j1 j1Var, q qVar, j0 j0Var) {
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x037a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static com.google.crypto.tink.shaded.protobuf.r0 U(com.google.crypto.tink.shaded.protobuf.b1 r34, com.google.crypto.tink.shaded.protobuf.t0 r35, com.google.crypto.tink.shaded.protobuf.e0 r36, com.google.crypto.tink.shaded.protobuf.j1 r37, com.google.crypto.tink.shaded.protobuf.q r38, com.google.crypto.tink.shaded.protobuf.j0 r39) {
        /*
            Method dump skipped, instructions count: 996
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.r0.U(com.google.crypto.tink.shaded.protobuf.b1, com.google.crypto.tink.shaded.protobuf.t0, com.google.crypto.tink.shaded.protobuf.e0, com.google.crypto.tink.shaded.protobuf.j1, com.google.crypto.tink.shaded.protobuf.q, com.google.crypto.tink.shaded.protobuf.j0):com.google.crypto.tink.shaded.protobuf.r0");
    }

    private int V(int i10) {
        return this.f8585a[i10];
    }

    private static long W(int i10) {
        return i10 & 1048575;
    }

    private static boolean X(Object obj, long j10) {
        return ((Boolean) n1.C(obj, j10)).booleanValue();
    }

    private static double Y(Object obj, long j10) {
        return ((Double) n1.C(obj, j10)).doubleValue();
    }

    private static float Z(Object obj, long j10) {
        return ((Float) n1.C(obj, j10)).floatValue();
    }

    private static int a0(Object obj, long j10) {
        return ((Integer) n1.C(obj, j10)).intValue();
    }

    private static long b0(Object obj, long j10) {
        return ((Long) n1.C(obj, j10)).longValue();
    }

    private int c0(Object obj, byte[] bArr, int i10, int i11, int i12, long j10, e.a aVar) {
        Unsafe unsafe = f8584s;
        Object s10 = s(i12);
        Object object = unsafe.getObject(obj, j10);
        if (this.f8601q.g(object)) {
            Object e10 = this.f8601q.e(s10);
            this.f8601q.a(e10, object);
            unsafe.putObject(obj, j10, e10);
            object = e10;
        }
        this.f8601q.c(s10);
        return m(bArr, i10, i11, null, this.f8601q.d(object), aVar);
    }

    private int d0(Object obj, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, int i17, e.a aVar) {
        Unsafe unsafe = f8584s;
        long j11 = this.f8585a[i17 + 2] & 1048575;
        switch (i16) {
            case 51:
                if (i14 == 1) {
                    unsafe.putObject(obj, j10, Double.valueOf(e.d(bArr, i10)));
                    int i18 = i10 + 8;
                    unsafe.putInt(obj, j11, i13);
                    return i18;
                }
                break;
            case 52:
                if (i14 == 5) {
                    unsafe.putObject(obj, j10, Float.valueOf(e.k(bArr, i10)));
                    int i19 = i10 + 4;
                    unsafe.putInt(obj, j11, i13);
                    return i19;
                }
                break;
            case 53:
            case 54:
                if (i14 == 0) {
                    int K = e.K(bArr, i10, aVar);
                    unsafe.putObject(obj, j10, Long.valueOf(aVar.f8431b));
                    unsafe.putInt(obj, j11, i13);
                    return K;
                }
                break;
            case 55:
            case 62:
                if (i14 == 0) {
                    int H = e.H(bArr, i10, aVar);
                    unsafe.putObject(obj, j10, Integer.valueOf(aVar.f8430a));
                    unsafe.putInt(obj, j11, i13);
                    return H;
                }
                break;
            case 56:
            case 65:
                if (i14 == 1) {
                    unsafe.putObject(obj, j10, Long.valueOf(e.i(bArr, i10)));
                    int i20 = i10 + 8;
                    unsafe.putInt(obj, j11, i13);
                    return i20;
                }
                break;
            case 57:
            case 64:
                if (i14 == 5) {
                    unsafe.putObject(obj, j10, Integer.valueOf(e.g(bArr, i10)));
                    int i21 = i10 + 4;
                    unsafe.putInt(obj, j11, i13);
                    return i21;
                }
                break;
            case 58:
                if (i14 == 0) {
                    int K2 = e.K(bArr, i10, aVar);
                    unsafe.putObject(obj, j10, Boolean.valueOf(aVar.f8431b != 0));
                    unsafe.putInt(obj, j11, i13);
                    return K2;
                }
                break;
            case 59:
                if (i14 == 2) {
                    int H2 = e.H(bArr, i10, aVar);
                    int i22 = aVar.f8430a;
                    if (i22 == 0) {
                        unsafe.putObject(obj, j10, "");
                    } else if ((i15 & 536870912) != 0 && !o1.n(bArr, H2, H2 + i22)) {
                        throw a0.d();
                    } else {
                        unsafe.putObject(obj, j10, new String(bArr, H2, i22, z.f8667b));
                        H2 += i22;
                    }
                    unsafe.putInt(obj, j11, i13);
                    return H2;
                }
                break;
            case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                if (i14 == 2) {
                    Object R = R(obj, i13, i17);
                    int N = e.N(R, t(i17), bArr, i10, i11, aVar);
                    t0(obj, i13, i17, R);
                    return N;
                }
                break;
            case 61:
                if (i14 == 2) {
                    int b10 = e.b(bArr, i10, aVar);
                    unsafe.putObject(obj, j10, aVar.f8432c);
                    unsafe.putInt(obj, j11, i13);
                    return b10;
                }
                break;
            case 63:
                if (i14 == 0) {
                    int H3 = e.H(bArr, i10, aVar);
                    int i23 = aVar.f8430a;
                    r(i17);
                    unsafe.putObject(obj, j10, Integer.valueOf(i23));
                    unsafe.putInt(obj, j11, i13);
                    return H3;
                }
                break;
            case 66:
                if (i14 == 0) {
                    int H4 = e.H(bArr, i10, aVar);
                    unsafe.putObject(obj, j10, Integer.valueOf(i.b(aVar.f8430a)));
                    unsafe.putInt(obj, j11, i13);
                    return H4;
                }
                break;
            case 67:
                if (i14 == 0) {
                    int K3 = e.K(bArr, i10, aVar);
                    unsafe.putObject(obj, j10, Long.valueOf(i.c(aVar.f8431b)));
                    unsafe.putInt(obj, j11, i13);
                    return K3;
                }
                break;
            case 68:
                if (i14 == 3) {
                    Object R2 = R(obj, i13, i17);
                    int M = e.M(R2, t(i17), bArr, i10, i11, (i12 & (-8)) | 4, aVar);
                    t0(obj, i13, i17, R2);
                    return M;
                }
                break;
        }
        return i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x02e1, code lost:
        if (r0 != r15) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0304, code lost:
        if (r0 != r15) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0307, code lost:
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x029c, code lost:
        if (r0 != r10) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x029e, code lost:
        r15 = r29;
        r14 = r30;
        r12 = r31;
        r13 = r33;
        r11 = r34;
        r1 = r18;
        r2 = r19;
        r7 = r22;
        r6 = r26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int f0(java.lang.Object r30, byte[] r31, int r32, int r33, com.google.crypto.tink.shaded.protobuf.e.a r34) {
        /*
            Method dump skipped, instructions count: 880
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.r0.f0(java.lang.Object, byte[], int, int, com.google.crypto.tink.shaded.protobuf.e$a):int");
    }

    private int g0(Object obj, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, long j10, int i16, long j11, e.a aVar) {
        int I;
        Unsafe unsafe = f8584s;
        z.d dVar = (z.d) unsafe.getObject(obj, j11);
        if (!dVar.w()) {
            int size = dVar.size();
            dVar = dVar.c(size == 0 ? 10 : size * 2);
            unsafe.putObject(obj, j11, dVar);
        }
        switch (i16) {
            case 18:
            case 35:
                if (i14 == 2) {
                    return e.r(bArr, i10, dVar, aVar);
                }
                if (i14 == 1) {
                    return e.e(i12, bArr, i10, i11, dVar, aVar);
                }
                break;
            case C1415p9.C /* 19 */:
            case Build.API_LEVELS.API_36 /* 36 */:
                if (i14 == 2) {
                    return e.u(bArr, i10, dVar, aVar);
                }
                if (i14 == 5) {
                    return e.l(i12, bArr, i10, i11, dVar, aVar);
                }
                break;
            case 20:
            case 21:
            case 37:
            case C1415p9.K /* 38 */:
                if (i14 == 2) {
                    return e.y(bArr, i10, dVar, aVar);
                }
                if (i14 == 0) {
                    return e.L(i12, bArr, i10, i11, dVar, aVar);
                }
                break;
            case Build.API_LEVELS.API_22 /* 22 */:
            case 29:
            case 39:
            case 43:
                if (i14 == 2) {
                    return e.x(bArr, i10, dVar, aVar);
                }
                if (i14 == 0) {
                    return e.I(i12, bArr, i10, i11, dVar, aVar);
                }
                break;
            case Build.API_LEVELS.API_23 /* 23 */:
            case Build.API_LEVELS.API_32 /* 32 */:
            case C1415p9.L /* 40 */:
            case 46:
                if (i14 == 2) {
                    return e.t(bArr, i10, dVar, aVar);
                }
                if (i14 == 1) {
                    return e.j(i12, bArr, i10, i11, dVar, aVar);
                }
                break;
            case Build.API_LEVELS.API_24 /* 24 */:
            case Build.API_LEVELS.API_31 /* 31 */:
            case 41:
            case 45:
                if (i14 == 2) {
                    return e.s(bArr, i10, dVar, aVar);
                }
                if (i14 == 5) {
                    return e.h(i12, bArr, i10, i11, dVar, aVar);
                }
                break;
            case 25:
            case C1415p9.M /* 42 */:
                if (i14 == 2) {
                    return e.q(bArr, i10, dVar, aVar);
                }
                if (i14 == 0) {
                    return e.a(i12, bArr, i10, i11, dVar, aVar);
                }
                break;
            case 26:
                if (i14 == 2) {
                    if ((j10 & 536870912) == 0) {
                        return e.C(i12, bArr, i10, i11, dVar, aVar);
                    }
                    return e.D(i12, bArr, i10, i11, dVar, aVar);
                }
                break;
            case 27:
                if (i14 == 2) {
                    return e.p(t(i15), i12, bArr, i10, i11, dVar, aVar);
                }
                break;
            case Build.API_LEVELS.API_28 /* 28 */:
                if (i14 == 2) {
                    return e.c(i12, bArr, i10, i11, dVar, aVar);
                }
                break;
            case Build.API_LEVELS.API_30 /* 30 */:
            case 44:
                if (i14 == 2) {
                    I = e.x(bArr, i10, dVar, aVar);
                } else if (i14 == 0) {
                    I = e.I(i12, bArr, i10, i11, dVar, aVar);
                }
                r(i15);
                f1.z(obj, i13, dVar, null, null, this.f8599o);
                return I;
            case Build.API_LEVELS.API_33 /* 33 */:
            case 47:
                if (i14 == 2) {
                    return e.v(bArr, i10, dVar, aVar);
                }
                if (i14 == 0) {
                    return e.z(i12, bArr, i10, i11, dVar, aVar);
                }
                break;
            case Build.API_LEVELS.API_34 /* 34 */:
            case 48:
                if (i14 == 2) {
                    return e.w(bArr, i10, dVar, aVar);
                }
                if (i14 == 0) {
                    return e.A(i12, bArr, i10, i11, dVar, aVar);
                }
                break;
            case 49:
                if (i14 == 3) {
                    return e.n(t(i15), i12, bArr, i10, i11, dVar, aVar);
                }
                break;
        }
        return i10;
    }

    private int h0(int i10) {
        if (i10 >= this.f8587c && i10 <= this.f8588d) {
            return r0(i10, 0);
        }
        return -1;
    }

    private int i0(int i10, int i11) {
        if (i10 >= this.f8587c && i10 <= this.f8588d) {
            return r0(i10, i11);
        }
        return -1;
    }

    private boolean j(Object obj, Object obj2, int i10) {
        if (A(obj, i10) == A(obj2, i10)) {
            return true;
        }
        return false;
    }

    private int j0(int i10) {
        return this.f8585a[i10 + 2];
    }

    private static boolean k(Object obj, long j10) {
        return n1.r(obj, j10);
    }

    private void k0(Object obj, long j10, c1 c1Var, d1 d1Var, p pVar) {
        c1Var.N(this.f8598n.e(obj, j10), d1Var, pVar);
    }

    private static void l(Object obj) {
        if (F(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + obj);
    }

    private void l0(Object obj, int i10, c1 c1Var, d1 d1Var, p pVar) {
        c1Var.K(this.f8598n.e(obj, W(i10)), d1Var, pVar);
    }

    private int m(byte[] bArr, int i10, int i11, h0.a aVar, Map map, e.a aVar2) {
        int H = e.H(bArr, i10, aVar2);
        int i12 = aVar2.f8430a;
        if (i12 >= 0 && i12 <= i11 - H) {
            throw null;
        }
        throw a0.m();
    }

    private void m0(Object obj, int i10, c1 c1Var) {
        if (z(i10)) {
            n1.R(obj, W(i10), c1Var.H());
        } else if (this.f8591g) {
            n1.R(obj, W(i10), c1Var.v());
        } else {
            n1.R(obj, W(i10), c1Var.z());
        }
    }

    private static double n(Object obj, long j10) {
        return n1.x(obj, j10);
    }

    private void n0(Object obj, int i10, c1 c1Var) {
        if (z(i10)) {
            c1Var.y(this.f8598n.e(obj, W(i10)));
        } else {
            c1Var.x(this.f8598n.e(obj, W(i10)));
        }
    }

    private boolean o(Object obj, Object obj2, int i10) {
        int v02 = v0(i10);
        long W = W(v02);
        switch (u0(v02)) {
            case 0:
                if (!j(obj, obj2, i10) || Double.doubleToLongBits(n1.x(obj, W)) != Double.doubleToLongBits(n1.x(obj2, W))) {
                    return false;
                }
                return true;
            case 1:
                if (!j(obj, obj2, i10) || Float.floatToIntBits(n1.y(obj, W)) != Float.floatToIntBits(n1.y(obj2, W))) {
                    return false;
                }
                return true;
            case 2:
                if (!j(obj, obj2, i10) || n1.A(obj, W) != n1.A(obj2, W)) {
                    return false;
                }
                return true;
            case 3:
                if (!j(obj, obj2, i10) || n1.A(obj, W) != n1.A(obj2, W)) {
                    return false;
                }
                return true;
            case 4:
                if (!j(obj, obj2, i10) || n1.z(obj, W) != n1.z(obj2, W)) {
                    return false;
                }
                return true;
            case 5:
                if (!j(obj, obj2, i10) || n1.A(obj, W) != n1.A(obj2, W)) {
                    return false;
                }
                return true;
            case 6:
                if (!j(obj, obj2, i10) || n1.z(obj, W) != n1.z(obj2, W)) {
                    return false;
                }
                return true;
            case 7:
                if (!j(obj, obj2, i10) || n1.r(obj, W) != n1.r(obj2, W)) {
                    return false;
                }
                return true;
            case 8:
                if (!j(obj, obj2, i10) || !f1.J(n1.C(obj, W), n1.C(obj2, W))) {
                    return false;
                }
                return true;
            case 9:
                if (!j(obj, obj2, i10) || !f1.J(n1.C(obj, W), n1.C(obj2, W))) {
                    return false;
                }
                return true;
            case 10:
                if (!j(obj, obj2, i10) || !f1.J(n1.C(obj, W), n1.C(obj2, W))) {
                    return false;
                }
                return true;
            case 11:
                if (!j(obj, obj2, i10) || n1.z(obj, W) != n1.z(obj2, W)) {
                    return false;
                }
                return true;
            case 12:
                if (!j(obj, obj2, i10) || n1.z(obj, W) != n1.z(obj2, W)) {
                    return false;
                }
                return true;
            case 13:
                if (!j(obj, obj2, i10) || n1.z(obj, W) != n1.z(obj2, W)) {
                    return false;
                }
                return true;
            case 14:
                if (!j(obj, obj2, i10) || n1.A(obj, W) != n1.A(obj2, W)) {
                    return false;
                }
                return true;
            case 15:
                if (!j(obj, obj2, i10) || n1.z(obj, W) != n1.z(obj2, W)) {
                    return false;
                }
                return true;
            case 16:
                if (!j(obj, obj2, i10) || n1.A(obj, W) != n1.A(obj2, W)) {
                    return false;
                }
                return true;
            case 17:
                if (!j(obj, obj2, i10) || !f1.J(n1.C(obj, W), n1.C(obj2, W))) {
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
                return f1.J(n1.C(obj, W), n1.C(obj2, W));
            case 50:
                return f1.J(n1.C(obj, W), n1.C(obj2, W));
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
                if (!G(obj, obj2, i10) || !f1.J(n1.C(obj, W), n1.C(obj2, W))) {
                    return false;
                }
                return true;
            default:
                return true;
        }
    }

    private static Field o0(Class cls, String str) {
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

    private Object p(Object obj, int i10, Object obj2, j1 j1Var, Object obj3) {
        V(i10);
        if (n1.C(obj, W(v0(i10))) == null) {
            return obj2;
        }
        r(i10);
        return obj2;
    }

    private void p0(Object obj, int i10) {
        int j02 = j0(i10);
        long j10 = 1048575 & j02;
        if (j10 == 1048575) {
            return;
        }
        n1.P(obj, j10, (1 << (j02 >>> 20)) | n1.z(obj, j10));
    }

    private static float q(Object obj, long j10) {
        return n1.y(obj, j10);
    }

    private void q0(Object obj, int i10, int i11) {
        n1.P(obj, j0(i11) & 1048575, i10);
    }

    private z.c r(int i10) {
        android.support.v4.media.session.b.a(this.f8586b[((i10 / 3) * 2) + 1]);
        return null;
    }

    private int r0(int i10, int i11) {
        int length = (this.f8585a.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int V = V(i13);
            if (i10 == V) {
                return i13;
            }
            if (i10 < V) {
                length = i12 - 1;
            } else {
                i11 = i12 + 1;
            }
        }
        return -1;
    }

    private Object s(int i10) {
        return this.f8586b[(i10 / 3) * 2];
    }

    private void s0(Object obj, int i10, Object obj2) {
        f8584s.putObject(obj, W(v0(i10)), obj2);
        p0(obj, i10);
    }

    private d1 t(int i10) {
        int i11 = (i10 / 3) * 2;
        d1 d1Var = (d1) this.f8586b[i11];
        if (d1Var != null) {
            return d1Var;
        }
        d1 c10 = z0.a().c((Class) this.f8586b[i11 + 1]);
        this.f8586b[i11] = c10;
        return c10;
    }

    private void t0(Object obj, int i10, int i11, Object obj2) {
        f8584s.putObject(obj, W(v0(i11)), obj2);
        q0(obj, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k1 u(Object obj) {
        x xVar = (x) obj;
        k1 k1Var = xVar.unknownFields;
        if (k1Var == k1.c()) {
            k1 k10 = k1.k();
            xVar.unknownFields = k10;
            return k10;
        }
        return k1Var;
    }

    private static int u0(int i10) {
        return (i10 & 267386880) >>> 20;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int v(Object obj) {
        int i10;
        int i11;
        int h10;
        int d10;
        int B;
        boolean z10;
        int f10;
        int i12;
        int L;
        int N;
        Unsafe unsafe = f8584s;
        int i13 = 1048575;
        int i14 = 1048575;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (i15 < this.f8585a.length) {
            int v02 = v0(i15);
            int V = V(i15);
            int u02 = u0(v02);
            if (u02 <= 17) {
                i10 = this.f8585a[i15 + 2];
                int i18 = i10 & i13;
                i11 = 1 << (i10 >>> 20);
                if (i18 != i14) {
                    i17 = unsafe.getInt(obj, i18);
                    i14 = i18;
                }
            } else {
                i10 = (!this.f8593i || u02 < u.O.a() || u02 > u.f8609b0.a()) ? 0 : this.f8585a[i15 + 2] & i13;
                i11 = 0;
            }
            long W = W(v02);
            switch (u02) {
                case 0:
                    if ((i17 & i11) == 0) {
                        break;
                    } else {
                        h10 = k.h(V, 0.0d);
                        i16 += h10;
                        break;
                    }
                case 1:
                    if ((i17 & i11) == 0) {
                        break;
                    } else {
                        h10 = k.p(V, 0.0f);
                        i16 += h10;
                        break;
                    }
                case 2:
                    if ((i17 & i11) == 0) {
                        break;
                    } else {
                        h10 = k.v(V, unsafe.getLong(obj, W));
                        i16 += h10;
                        break;
                    }
                case 3:
                    if ((i17 & i11) == 0) {
                        break;
                    } else {
                        h10 = k.O(V, unsafe.getLong(obj, W));
                        i16 += h10;
                        break;
                    }
                case 4:
                    if ((i17 & i11) == 0) {
                        break;
                    } else {
                        h10 = k.t(V, unsafe.getInt(obj, W));
                        i16 += h10;
                        break;
                    }
                case 5:
                    if ((i17 & i11) == 0) {
                        break;
                    } else {
                        h10 = k.n(V, 0L);
                        i16 += h10;
                        break;
                    }
                case 6:
                    if ((i17 & i11) != 0) {
                        h10 = k.l(V, 0);
                        i16 += h10;
                        break;
                    }
                    break;
                case 7:
                    if ((i17 & i11) != 0) {
                        d10 = k.d(V, true);
                        i16 += d10;
                    }
                    break;
                case 8:
                    if ((i17 & i11) != 0) {
                        Object object = unsafe.getObject(obj, W);
                        if (object instanceof h) {
                            d10 = k.f(V, (h) object);
                        } else {
                            d10 = k.J(V, (String) object);
                        }
                        i16 += d10;
                    }
                    break;
                case 9:
                    if ((i17 & i11) != 0) {
                        d10 = f1.o(V, unsafe.getObject(obj, W), t(i15));
                        i16 += d10;
                    }
                    break;
                case 10:
                    if ((i17 & i11) != 0) {
                        d10 = k.f(V, (h) unsafe.getObject(obj, W));
                        i16 += d10;
                    }
                    break;
                case 11:
                    if ((i17 & i11) != 0) {
                        d10 = k.M(V, unsafe.getInt(obj, W));
                        i16 += d10;
                    }
                    break;
                case 12:
                    if ((i17 & i11) != 0) {
                        d10 = k.j(V, unsafe.getInt(obj, W));
                        i16 += d10;
                    }
                    break;
                case 13:
                    if ((i17 & i11) != 0) {
                        B = k.B(V, 0);
                        i16 += B;
                    }
                    break;
                case 14:
                    if ((i17 & i11) != 0) {
                        d10 = k.D(V, 0L);
                        i16 += d10;
                    }
                    break;
                case 15:
                    if ((i17 & i11) != 0) {
                        d10 = k.F(V, unsafe.getInt(obj, W));
                        i16 += d10;
                    }
                    break;
                case 16:
                    if ((i17 & i11) != 0) {
                        d10 = k.H(V, unsafe.getLong(obj, W));
                        i16 += d10;
                    }
                    break;
                case 17:
                    if ((i17 & i11) != 0) {
                        d10 = k.r(V, (o0) unsafe.getObject(obj, W), t(i15));
                        i16 += d10;
                    }
                    break;
                case 18:
                    d10 = f1.h(V, (List) unsafe.getObject(obj, W), false);
                    i16 += d10;
                    break;
                case C1415p9.C /* 19 */:
                    z10 = false;
                    f10 = f1.f(V, (List) unsafe.getObject(obj, W), false);
                    i16 += f10;
                    break;
                case 20:
                    z10 = false;
                    f10 = f1.m(V, (List) unsafe.getObject(obj, W), false);
                    i16 += f10;
                    break;
                case 21:
                    z10 = false;
                    f10 = f1.x(V, (List) unsafe.getObject(obj, W), false);
                    i16 += f10;
                    break;
                case Build.API_LEVELS.API_22 /* 22 */:
                    z10 = false;
                    f10 = f1.k(V, (List) unsafe.getObject(obj, W), false);
                    i16 += f10;
                    break;
                case Build.API_LEVELS.API_23 /* 23 */:
                    z10 = false;
                    f10 = f1.h(V, (List) unsafe.getObject(obj, W), false);
                    i16 += f10;
                    break;
                case Build.API_LEVELS.API_24 /* 24 */:
                    z10 = false;
                    f10 = f1.f(V, (List) unsafe.getObject(obj, W), false);
                    i16 += f10;
                    break;
                case 25:
                    z10 = false;
                    f10 = f1.a(V, (List) unsafe.getObject(obj, W), false);
                    i16 += f10;
                    break;
                case 26:
                    d10 = f1.u(V, (List) unsafe.getObject(obj, W));
                    i16 += d10;
                    break;
                case 27:
                    d10 = f1.p(V, (List) unsafe.getObject(obj, W), t(i15));
                    i16 += d10;
                    break;
                case Build.API_LEVELS.API_28 /* 28 */:
                    d10 = f1.c(V, (List) unsafe.getObject(obj, W));
                    i16 += d10;
                    break;
                case 29:
                    d10 = f1.v(V, (List) unsafe.getObject(obj, W), false);
                    i16 += d10;
                    break;
                case Build.API_LEVELS.API_30 /* 30 */:
                    z10 = false;
                    f10 = f1.d(V, (List) unsafe.getObject(obj, W), false);
                    i16 += f10;
                    break;
                case Build.API_LEVELS.API_31 /* 31 */:
                    z10 = false;
                    f10 = f1.f(V, (List) unsafe.getObject(obj, W), false);
                    i16 += f10;
                    break;
                case Build.API_LEVELS.API_32 /* 32 */:
                    z10 = false;
                    f10 = f1.h(V, (List) unsafe.getObject(obj, W), false);
                    i16 += f10;
                    break;
                case Build.API_LEVELS.API_33 /* 33 */:
                    z10 = false;
                    f10 = f1.q(V, (List) unsafe.getObject(obj, W), false);
                    i16 += f10;
                    break;
                case Build.API_LEVELS.API_34 /* 34 */:
                    z10 = false;
                    f10 = f1.s(V, (List) unsafe.getObject(obj, W), false);
                    i16 += f10;
                    break;
                case 35:
                    i12 = f1.i((List) unsafe.getObject(obj, W));
                    if (i12 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i12);
                        }
                        L = k.L(V);
                        N = k.N(i12);
                        B = L + N + i12;
                        i16 += B;
                    }
                    break;
                case Build.API_LEVELS.API_36 /* 36 */:
                    i12 = f1.g((List) unsafe.getObject(obj, W));
                    if (i12 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i12);
                        }
                        L = k.L(V);
                        N = k.N(i12);
                        B = L + N + i12;
                        i16 += B;
                    }
                    break;
                case 37:
                    i12 = f1.n((List) unsafe.getObject(obj, W));
                    if (i12 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i12);
                        }
                        L = k.L(V);
                        N = k.N(i12);
                        B = L + N + i12;
                        i16 += B;
                    }
                    break;
                case C1415p9.K /* 38 */:
                    i12 = f1.y((List) unsafe.getObject(obj, W));
                    if (i12 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i12);
                        }
                        L = k.L(V);
                        N = k.N(i12);
                        B = L + N + i12;
                        i16 += B;
                    }
                    break;
                case 39:
                    i12 = f1.l((List) unsafe.getObject(obj, W));
                    if (i12 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i12);
                        }
                        L = k.L(V);
                        N = k.N(i12);
                        B = L + N + i12;
                        i16 += B;
                    }
                    break;
                case C1415p9.L /* 40 */:
                    i12 = f1.i((List) unsafe.getObject(obj, W));
                    if (i12 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i12);
                        }
                        L = k.L(V);
                        N = k.N(i12);
                        B = L + N + i12;
                        i16 += B;
                    }
                    break;
                case 41:
                    i12 = f1.g((List) unsafe.getObject(obj, W));
                    if (i12 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i12);
                        }
                        L = k.L(V);
                        N = k.N(i12);
                        B = L + N + i12;
                        i16 += B;
                    }
                    break;
                case C1415p9.M /* 42 */:
                    i12 = f1.b((List) unsafe.getObject(obj, W));
                    if (i12 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i12);
                        }
                        L = k.L(V);
                        N = k.N(i12);
                        B = L + N + i12;
                        i16 += B;
                    }
                    break;
                case 43:
                    i12 = f1.w((List) unsafe.getObject(obj, W));
                    if (i12 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i12);
                        }
                        L = k.L(V);
                        N = k.N(i12);
                        B = L + N + i12;
                        i16 += B;
                    }
                    break;
                case 44:
                    i12 = f1.e((List) unsafe.getObject(obj, W));
                    if (i12 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i12);
                        }
                        L = k.L(V);
                        N = k.N(i12);
                        B = L + N + i12;
                        i16 += B;
                    }
                    break;
                case 45:
                    i12 = f1.g((List) unsafe.getObject(obj, W));
                    if (i12 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i12);
                        }
                        L = k.L(V);
                        N = k.N(i12);
                        B = L + N + i12;
                        i16 += B;
                    }
                    break;
                case 46:
                    i12 = f1.i((List) unsafe.getObject(obj, W));
                    if (i12 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i12);
                        }
                        L = k.L(V);
                        N = k.N(i12);
                        B = L + N + i12;
                        i16 += B;
                    }
                    break;
                case 47:
                    i12 = f1.r((List) unsafe.getObject(obj, W));
                    if (i12 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i12);
                        }
                        L = k.L(V);
                        N = k.N(i12);
                        B = L + N + i12;
                        i16 += B;
                    }
                    break;
                case 48:
                    i12 = f1.t((List) unsafe.getObject(obj, W));
                    if (i12 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i12);
                        }
                        L = k.L(V);
                        N = k.N(i12);
                        B = L + N + i12;
                        i16 += B;
                    }
                    break;
                case 49:
                    d10 = f1.j(V, (List) unsafe.getObject(obj, W), t(i15));
                    i16 += d10;
                    break;
                case 50:
                    d10 = this.f8601q.f(V, unsafe.getObject(obj, W), s(i15));
                    i16 += d10;
                    break;
                case 51:
                    if (H(obj, V, i15)) {
                        d10 = k.h(V, 0.0d);
                        i16 += d10;
                    }
                    break;
                case 52:
                    if (H(obj, V, i15)) {
                        d10 = k.p(V, 0.0f);
                        i16 += d10;
                    }
                    break;
                case 53:
                    if (H(obj, V, i15)) {
                        d10 = k.v(V, b0(obj, W));
                        i16 += d10;
                    }
                    break;
                case 54:
                    if (H(obj, V, i15)) {
                        d10 = k.O(V, b0(obj, W));
                        i16 += d10;
                    }
                    break;
                case 55:
                    if (H(obj, V, i15)) {
                        d10 = k.t(V, a0(obj, W));
                        i16 += d10;
                    }
                    break;
                case 56:
                    if (H(obj, V, i15)) {
                        d10 = k.n(V, 0L);
                        i16 += d10;
                    }
                    break;
                case 57:
                    if (H(obj, V, i15)) {
                        B = k.l(V, 0);
                        i16 += B;
                    }
                    break;
                case 58:
                    if (H(obj, V, i15)) {
                        d10 = k.d(V, true);
                        i16 += d10;
                    }
                    break;
                case 59:
                    if (H(obj, V, i15)) {
                        Object object2 = unsafe.getObject(obj, W);
                        if (object2 instanceof h) {
                            d10 = k.f(V, (h) object2);
                        } else {
                            d10 = k.J(V, (String) object2);
                        }
                        i16 += d10;
                    }
                    break;
                case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                    if (H(obj, V, i15)) {
                        d10 = f1.o(V, unsafe.getObject(obj, W), t(i15));
                        i16 += d10;
                    }
                    break;
                case 61:
                    if (H(obj, V, i15)) {
                        d10 = k.f(V, (h) unsafe.getObject(obj, W));
                        i16 += d10;
                    }
                    break;
                case 62:
                    if (H(obj, V, i15)) {
                        d10 = k.M(V, a0(obj, W));
                        i16 += d10;
                    }
                    break;
                case 63:
                    if (H(obj, V, i15)) {
                        d10 = k.j(V, a0(obj, W));
                        i16 += d10;
                    }
                    break;
                case 64:
                    if (H(obj, V, i15)) {
                        B = k.B(V, 0);
                        i16 += B;
                    }
                    break;
                case 65:
                    if (H(obj, V, i15)) {
                        d10 = k.D(V, 0L);
                        i16 += d10;
                    }
                    break;
                case 66:
                    if (H(obj, V, i15)) {
                        d10 = k.F(V, a0(obj, W));
                        i16 += d10;
                    }
                    break;
                case 67:
                    if (H(obj, V, i15)) {
                        d10 = k.H(V, b0(obj, W));
                        i16 += d10;
                    }
                    break;
                case 68:
                    if (H(obj, V, i15)) {
                        d10 = k.r(V, (o0) unsafe.getObject(obj, W), t(i15));
                        i16 += d10;
                    }
                    break;
            }
            i15 += 3;
            i13 = 1048575;
        }
        int x10 = i16 + x(this.f8599o, obj);
        return this.f8590f ? x10 + this.f8600p.c(obj).c() : x10;
    }

    private int v0(int i10) {
        return this.f8585a[i10 + 1];
    }

    private int w(Object obj) {
        int i10;
        int h10;
        int i11;
        int L;
        int N;
        Unsafe unsafe = f8584s;
        int i12 = 0;
        for (int i13 = 0; i13 < this.f8585a.length; i13 += 3) {
            int v02 = v0(i13);
            int u02 = u0(v02);
            int V = V(i13);
            long W = W(v02);
            if (u02 >= u.O.a() && u02 <= u.f8609b0.a()) {
                i10 = this.f8585a[i13 + 2] & 1048575;
            } else {
                i10 = 0;
            }
            switch (u02) {
                case 0:
                    if (A(obj, i13)) {
                        h10 = k.h(V, 0.0d);
                        break;
                    } else {
                        continue;
                    }
                case 1:
                    if (A(obj, i13)) {
                        h10 = k.p(V, 0.0f);
                        break;
                    } else {
                        continue;
                    }
                case 2:
                    if (A(obj, i13)) {
                        h10 = k.v(V, n1.A(obj, W));
                        break;
                    } else {
                        continue;
                    }
                case 3:
                    if (A(obj, i13)) {
                        h10 = k.O(V, n1.A(obj, W));
                        break;
                    } else {
                        continue;
                    }
                case 4:
                    if (A(obj, i13)) {
                        h10 = k.t(V, n1.z(obj, W));
                        break;
                    } else {
                        continue;
                    }
                case 5:
                    if (A(obj, i13)) {
                        h10 = k.n(V, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 6:
                    if (A(obj, i13)) {
                        h10 = k.l(V, 0);
                        break;
                    } else {
                        continue;
                    }
                case 7:
                    if (A(obj, i13)) {
                        h10 = k.d(V, true);
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    if (A(obj, i13)) {
                        Object C = n1.C(obj, W);
                        if (C instanceof h) {
                            h10 = k.f(V, (h) C);
                            break;
                        } else {
                            h10 = k.J(V, (String) C);
                            break;
                        }
                    } else {
                        continue;
                    }
                case 9:
                    if (A(obj, i13)) {
                        h10 = f1.o(V, n1.C(obj, W), t(i13));
                        break;
                    } else {
                        continue;
                    }
                case 10:
                    if (A(obj, i13)) {
                        h10 = k.f(V, (h) n1.C(obj, W));
                        break;
                    } else {
                        continue;
                    }
                case 11:
                    if (A(obj, i13)) {
                        h10 = k.M(V, n1.z(obj, W));
                        break;
                    } else {
                        continue;
                    }
                case 12:
                    if (A(obj, i13)) {
                        h10 = k.j(V, n1.z(obj, W));
                        break;
                    } else {
                        continue;
                    }
                case 13:
                    if (A(obj, i13)) {
                        h10 = k.B(V, 0);
                        break;
                    } else {
                        continue;
                    }
                case 14:
                    if (A(obj, i13)) {
                        h10 = k.D(V, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 15:
                    if (A(obj, i13)) {
                        h10 = k.F(V, n1.z(obj, W));
                        break;
                    } else {
                        continue;
                    }
                case 16:
                    if (A(obj, i13)) {
                        h10 = k.H(V, n1.A(obj, W));
                        break;
                    } else {
                        continue;
                    }
                case 17:
                    if (A(obj, i13)) {
                        h10 = k.r(V, (o0) n1.C(obj, W), t(i13));
                        break;
                    } else {
                        continue;
                    }
                case 18:
                    h10 = f1.h(V, J(obj, W), false);
                    break;
                case C1415p9.C /* 19 */:
                    h10 = f1.f(V, J(obj, W), false);
                    break;
                case 20:
                    h10 = f1.m(V, J(obj, W), false);
                    break;
                case 21:
                    h10 = f1.x(V, J(obj, W), false);
                    break;
                case Build.API_LEVELS.API_22 /* 22 */:
                    h10 = f1.k(V, J(obj, W), false);
                    break;
                case Build.API_LEVELS.API_23 /* 23 */:
                    h10 = f1.h(V, J(obj, W), false);
                    break;
                case Build.API_LEVELS.API_24 /* 24 */:
                    h10 = f1.f(V, J(obj, W), false);
                    break;
                case 25:
                    h10 = f1.a(V, J(obj, W), false);
                    break;
                case 26:
                    h10 = f1.u(V, J(obj, W));
                    break;
                case 27:
                    h10 = f1.p(V, J(obj, W), t(i13));
                    break;
                case Build.API_LEVELS.API_28 /* 28 */:
                    h10 = f1.c(V, J(obj, W));
                    break;
                case 29:
                    h10 = f1.v(V, J(obj, W), false);
                    break;
                case Build.API_LEVELS.API_30 /* 30 */:
                    h10 = f1.d(V, J(obj, W), false);
                    break;
                case Build.API_LEVELS.API_31 /* 31 */:
                    h10 = f1.f(V, J(obj, W), false);
                    break;
                case Build.API_LEVELS.API_32 /* 32 */:
                    h10 = f1.h(V, J(obj, W), false);
                    break;
                case Build.API_LEVELS.API_33 /* 33 */:
                    h10 = f1.q(V, J(obj, W), false);
                    break;
                case Build.API_LEVELS.API_34 /* 34 */:
                    h10 = f1.s(V, J(obj, W), false);
                    break;
                case 35:
                    i11 = f1.i((List) unsafe.getObject(obj, W));
                    if (i11 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i11);
                        }
                        L = k.L(V);
                        N = k.N(i11);
                        h10 = L + N + i11;
                        break;
                    } else {
                        continue;
                    }
                case Build.API_LEVELS.API_36 /* 36 */:
                    i11 = f1.g((List) unsafe.getObject(obj, W));
                    if (i11 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i11);
                        }
                        L = k.L(V);
                        N = k.N(i11);
                        h10 = L + N + i11;
                        break;
                    } else {
                        continue;
                    }
                case 37:
                    i11 = f1.n((List) unsafe.getObject(obj, W));
                    if (i11 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i11);
                        }
                        L = k.L(V);
                        N = k.N(i11);
                        h10 = L + N + i11;
                        break;
                    } else {
                        continue;
                    }
                case C1415p9.K /* 38 */:
                    i11 = f1.y((List) unsafe.getObject(obj, W));
                    if (i11 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i11);
                        }
                        L = k.L(V);
                        N = k.N(i11);
                        h10 = L + N + i11;
                        break;
                    } else {
                        continue;
                    }
                case 39:
                    i11 = f1.l((List) unsafe.getObject(obj, W));
                    if (i11 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i11);
                        }
                        L = k.L(V);
                        N = k.N(i11);
                        h10 = L + N + i11;
                        break;
                    } else {
                        continue;
                    }
                case C1415p9.L /* 40 */:
                    i11 = f1.i((List) unsafe.getObject(obj, W));
                    if (i11 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i11);
                        }
                        L = k.L(V);
                        N = k.N(i11);
                        h10 = L + N + i11;
                        break;
                    } else {
                        continue;
                    }
                case 41:
                    i11 = f1.g((List) unsafe.getObject(obj, W));
                    if (i11 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i11);
                        }
                        L = k.L(V);
                        N = k.N(i11);
                        h10 = L + N + i11;
                        break;
                    } else {
                        continue;
                    }
                case C1415p9.M /* 42 */:
                    i11 = f1.b((List) unsafe.getObject(obj, W));
                    if (i11 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i11);
                        }
                        L = k.L(V);
                        N = k.N(i11);
                        h10 = L + N + i11;
                        break;
                    } else {
                        continue;
                    }
                case 43:
                    i11 = f1.w((List) unsafe.getObject(obj, W));
                    if (i11 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i11);
                        }
                        L = k.L(V);
                        N = k.N(i11);
                        h10 = L + N + i11;
                        break;
                    } else {
                        continue;
                    }
                case 44:
                    i11 = f1.e((List) unsafe.getObject(obj, W));
                    if (i11 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i11);
                        }
                        L = k.L(V);
                        N = k.N(i11);
                        h10 = L + N + i11;
                        break;
                    } else {
                        continue;
                    }
                case 45:
                    i11 = f1.g((List) unsafe.getObject(obj, W));
                    if (i11 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i11);
                        }
                        L = k.L(V);
                        N = k.N(i11);
                        h10 = L + N + i11;
                        break;
                    } else {
                        continue;
                    }
                case 46:
                    i11 = f1.i((List) unsafe.getObject(obj, W));
                    if (i11 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i11);
                        }
                        L = k.L(V);
                        N = k.N(i11);
                        h10 = L + N + i11;
                        break;
                    } else {
                        continue;
                    }
                case 47:
                    i11 = f1.r((List) unsafe.getObject(obj, W));
                    if (i11 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i11);
                        }
                        L = k.L(V);
                        N = k.N(i11);
                        h10 = L + N + i11;
                        break;
                    } else {
                        continue;
                    }
                case 48:
                    i11 = f1.t((List) unsafe.getObject(obj, W));
                    if (i11 > 0) {
                        if (this.f8593i) {
                            unsafe.putInt(obj, i10, i11);
                        }
                        L = k.L(V);
                        N = k.N(i11);
                        h10 = L + N + i11;
                        break;
                    } else {
                        continue;
                    }
                case 49:
                    h10 = f1.j(V, J(obj, W), t(i13));
                    break;
                case 50:
                    h10 = this.f8601q.f(V, n1.C(obj, W), s(i13));
                    break;
                case 51:
                    if (H(obj, V, i13)) {
                        h10 = k.h(V, 0.0d);
                        break;
                    } else {
                        continue;
                    }
                case 52:
                    if (H(obj, V, i13)) {
                        h10 = k.p(V, 0.0f);
                        break;
                    } else {
                        continue;
                    }
                case 53:
                    if (H(obj, V, i13)) {
                        h10 = k.v(V, b0(obj, W));
                        break;
                    } else {
                        continue;
                    }
                case 54:
                    if (H(obj, V, i13)) {
                        h10 = k.O(V, b0(obj, W));
                        break;
                    } else {
                        continue;
                    }
                case 55:
                    if (H(obj, V, i13)) {
                        h10 = k.t(V, a0(obj, W));
                        break;
                    } else {
                        continue;
                    }
                case 56:
                    if (H(obj, V, i13)) {
                        h10 = k.n(V, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 57:
                    if (H(obj, V, i13)) {
                        h10 = k.l(V, 0);
                        break;
                    } else {
                        continue;
                    }
                case 58:
                    if (H(obj, V, i13)) {
                        h10 = k.d(V, true);
                        break;
                    } else {
                        continue;
                    }
                case 59:
                    if (H(obj, V, i13)) {
                        Object C2 = n1.C(obj, W);
                        if (C2 instanceof h) {
                            h10 = k.f(V, (h) C2);
                            break;
                        } else {
                            h10 = k.J(V, (String) C2);
                            break;
                        }
                    } else {
                        continue;
                    }
                case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                    if (H(obj, V, i13)) {
                        h10 = f1.o(V, n1.C(obj, W), t(i13));
                        break;
                    } else {
                        continue;
                    }
                case 61:
                    if (H(obj, V, i13)) {
                        h10 = k.f(V, (h) n1.C(obj, W));
                        break;
                    } else {
                        continue;
                    }
                case 62:
                    if (H(obj, V, i13)) {
                        h10 = k.M(V, a0(obj, W));
                        break;
                    } else {
                        continue;
                    }
                case 63:
                    if (H(obj, V, i13)) {
                        h10 = k.j(V, a0(obj, W));
                        break;
                    } else {
                        continue;
                    }
                case 64:
                    if (H(obj, V, i13)) {
                        h10 = k.B(V, 0);
                        break;
                    } else {
                        continue;
                    }
                case 65:
                    if (H(obj, V, i13)) {
                        h10 = k.D(V, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 66:
                    if (H(obj, V, i13)) {
                        h10 = k.F(V, a0(obj, W));
                        break;
                    } else {
                        continue;
                    }
                case 67:
                    if (H(obj, V, i13)) {
                        h10 = k.H(V, b0(obj, W));
                        break;
                    } else {
                        continue;
                    }
                case 68:
                    if (H(obj, V, i13)) {
                        h10 = k.r(V, (o0) n1.C(obj, W), t(i13));
                        break;
                    } else {
                        continue;
                    }
                default:
            }
            i12 += h10;
        }
        return i12 + x(this.f8599o, obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x048f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void w0(java.lang.Object r18, com.google.crypto.tink.shaded.protobuf.q1 r19) {
        /*
            Method dump skipped, instructions count: 1336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.r0.w0(java.lang.Object, com.google.crypto.tink.shaded.protobuf.q1):void");
    }

    private int x(j1 j1Var, Object obj) {
        return j1Var.h(j1Var.g(obj));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0588  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void x0(java.lang.Object r13, com.google.crypto.tink.shaded.protobuf.q1 r14) {
        /*
            Method dump skipped, instructions count: 1584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.r0.x0(java.lang.Object, com.google.crypto.tink.shaded.protobuf.q1):void");
    }

    private static int y(Object obj, long j10) {
        return n1.z(obj, j10);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x058e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void y0(java.lang.Object r11, com.google.crypto.tink.shaded.protobuf.q1 r12) {
        /*
            Method dump skipped, instructions count: 1586
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.r0.y0(java.lang.Object, com.google.crypto.tink.shaded.protobuf.q1):void");
    }

    private static boolean z(int i10) {
        return (i10 & 536870912) != 0;
    }

    private void z0(q1 q1Var, int i10, Object obj, int i11) {
        if (obj != null) {
            this.f8601q.c(s(i11));
            q1Var.K(i10, null, this.f8601q.h(obj));
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public void a(Object obj, Object obj2) {
        l(obj);
        obj2.getClass();
        for (int i10 = 0; i10 < this.f8585a.length; i10 += 3) {
            P(obj, obj2, i10);
        }
        f1.F(this.f8599o, obj, obj2);
        if (this.f8590f) {
            f1.D(this.f8600p, obj, obj2);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public void b(Object obj) {
        if (!F(obj)) {
            return;
        }
        if (obj instanceof x) {
            x xVar = (x) obj;
            xVar.m();
            xVar.l();
            xVar.F();
        }
        int length = this.f8585a.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int v02 = v0(i10);
            long W = W(v02);
            int u02 = u0(v02);
            if (u02 != 9) {
                switch (u02) {
                    case 17:
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
                        this.f8598n.c(obj, W);
                        continue;
                    case 50:
                        Unsafe unsafe = f8584s;
                        Object object = unsafe.getObject(obj, W);
                        if (object != null) {
                            unsafe.putObject(obj, W, this.f8601q.b(object));
                        } else {
                            continue;
                        }
                    default:
                }
            }
            if (A(obj, i10)) {
                t(i10).b(f8584s.getObject(obj, W));
            }
        }
        this.f8599o.j(obj);
        if (this.f8590f) {
            this.f8600p.f(obj);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final boolean c(Object obj) {
        int i10;
        int i11;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        while (i14 < this.f8595k) {
            int i15 = this.f8594j[i14];
            int V = V(i15);
            int v02 = v0(i15);
            int i16 = this.f8585a[i15 + 2];
            int i17 = i16 & 1048575;
            int i18 = 1 << (i16 >>> 20);
            if (i17 != i12) {
                if (i17 != 1048575) {
                    i13 = f8584s.getInt(obj, i17);
                }
                i11 = i13;
                i10 = i17;
            } else {
                i10 = i12;
                i11 = i13;
            }
            if (I(v02) && !B(obj, i15, i10, i11, i18)) {
                return false;
            }
            int u02 = u0(v02);
            if (u02 != 9 && u02 != 17) {
                if (u02 != 27) {
                    if (u02 != 60 && u02 != 68) {
                        if (u02 != 49) {
                            if (u02 == 50 && !E(obj, v02, i15)) {
                                return false;
                            }
                        }
                    } else if (H(obj, V, i15) && !C(obj, v02, t(i15))) {
                        return false;
                    }
                }
                if (!D(obj, v02, i15)) {
                    return false;
                }
            } else if (B(obj, i15, i10, i11, i18) && !C(obj, v02, t(i15))) {
                return false;
            }
            i14++;
            i12 = i10;
            i13 = i11;
        }
        if (this.f8590f && !this.f8600p.c(obj).e()) {
            return false;
        }
        return true;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public boolean d(Object obj, Object obj2) {
        int length = this.f8585a.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            if (!o(obj, obj2, i10)) {
                return false;
            }
        }
        if (!this.f8599o.g(obj).equals(this.f8599o.g(obj2))) {
            return false;
        }
        if (this.f8590f) {
            return this.f8600p.c(obj).equals(this.f8600p.c(obj2));
        }
        return true;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public int e(Object obj) {
        if (this.f8592h) {
            return w(obj);
        }
        return v(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x02d7, code lost:
        r15 = r27;
        r14 = r28;
        r12 = r29;
        r13 = r31;
        r11 = r32;
        r9 = r33;
        r5 = r17;
        r3 = r19;
        r6 = r20;
        r2 = r21;
        r1 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0316, code lost:
        if (r0 != r15) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0339, code lost:
        if (r0 != r15) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x033c, code lost:
        r2 = r0;
        r8 = r19;
        r0 = r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x02d5, code lost:
        if (r0 != r11) goto L184;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int e0(java.lang.Object r28, byte[] r29, int r30, int r31, int r32, com.google.crypto.tink.shaded.protobuf.e.a r33) {
        /*
            Method dump skipped, instructions count: 1046
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.r0.e0(java.lang.Object, byte[], int, int, int, com.google.crypto.tink.shaded.protobuf.e$a):int");
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public int f(Object obj) {
        int i10;
        int f10;
        int length = this.f8585a.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int v02 = v0(i12);
            int V = V(i12);
            long W = W(v02);
            int i13 = 37;
            switch (u0(v02)) {
                case 0:
                    i10 = i11 * 53;
                    f10 = z.f(Double.doubleToLongBits(n1.x(obj, W)));
                    i11 = i10 + f10;
                    break;
                case 1:
                    i10 = i11 * 53;
                    f10 = Float.floatToIntBits(n1.y(obj, W));
                    i11 = i10 + f10;
                    break;
                case 2:
                    i10 = i11 * 53;
                    f10 = z.f(n1.A(obj, W));
                    i11 = i10 + f10;
                    break;
                case 3:
                    i10 = i11 * 53;
                    f10 = z.f(n1.A(obj, W));
                    i11 = i10 + f10;
                    break;
                case 4:
                    i10 = i11 * 53;
                    f10 = n1.z(obj, W);
                    i11 = i10 + f10;
                    break;
                case 5:
                    i10 = i11 * 53;
                    f10 = z.f(n1.A(obj, W));
                    i11 = i10 + f10;
                    break;
                case 6:
                    i10 = i11 * 53;
                    f10 = n1.z(obj, W);
                    i11 = i10 + f10;
                    break;
                case 7:
                    i10 = i11 * 53;
                    f10 = z.c(n1.r(obj, W));
                    i11 = i10 + f10;
                    break;
                case 8:
                    i10 = i11 * 53;
                    f10 = ((String) n1.C(obj, W)).hashCode();
                    i11 = i10 + f10;
                    break;
                case 9:
                    Object C = n1.C(obj, W);
                    if (C != null) {
                        i13 = C.hashCode();
                    }
                    i11 = (i11 * 53) + i13;
                    break;
                case 10:
                    i10 = i11 * 53;
                    f10 = n1.C(obj, W).hashCode();
                    i11 = i10 + f10;
                    break;
                case 11:
                    i10 = i11 * 53;
                    f10 = n1.z(obj, W);
                    i11 = i10 + f10;
                    break;
                case 12:
                    i10 = i11 * 53;
                    f10 = n1.z(obj, W);
                    i11 = i10 + f10;
                    break;
                case 13:
                    i10 = i11 * 53;
                    f10 = n1.z(obj, W);
                    i11 = i10 + f10;
                    break;
                case 14:
                    i10 = i11 * 53;
                    f10 = z.f(n1.A(obj, W));
                    i11 = i10 + f10;
                    break;
                case 15:
                    i10 = i11 * 53;
                    f10 = n1.z(obj, W);
                    i11 = i10 + f10;
                    break;
                case 16:
                    i10 = i11 * 53;
                    f10 = z.f(n1.A(obj, W));
                    i11 = i10 + f10;
                    break;
                case 17:
                    Object C2 = n1.C(obj, W);
                    if (C2 != null) {
                        i13 = C2.hashCode();
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
                    f10 = n1.C(obj, W).hashCode();
                    i11 = i10 + f10;
                    break;
                case 50:
                    i10 = i11 * 53;
                    f10 = n1.C(obj, W).hashCode();
                    i11 = i10 + f10;
                    break;
                case 51:
                    if (H(obj, V, i12)) {
                        i10 = i11 * 53;
                        f10 = z.f(Double.doubleToLongBits(Y(obj, W)));
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (H(obj, V, i12)) {
                        i10 = i11 * 53;
                        f10 = Float.floatToIntBits(Z(obj, W));
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (H(obj, V, i12)) {
                        i10 = i11 * 53;
                        f10 = z.f(b0(obj, W));
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (H(obj, V, i12)) {
                        i10 = i11 * 53;
                        f10 = z.f(b0(obj, W));
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (H(obj, V, i12)) {
                        i10 = i11 * 53;
                        f10 = a0(obj, W);
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (H(obj, V, i12)) {
                        i10 = i11 * 53;
                        f10 = z.f(b0(obj, W));
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (H(obj, V, i12)) {
                        i10 = i11 * 53;
                        f10 = a0(obj, W);
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (H(obj, V, i12)) {
                        i10 = i11 * 53;
                        f10 = z.c(X(obj, W));
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (H(obj, V, i12)) {
                        i10 = i11 * 53;
                        f10 = ((String) n1.C(obj, W)).hashCode();
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                    if (H(obj, V, i12)) {
                        i10 = i11 * 53;
                        f10 = n1.C(obj, W).hashCode();
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (H(obj, V, i12)) {
                        i10 = i11 * 53;
                        f10 = n1.C(obj, W).hashCode();
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (H(obj, V, i12)) {
                        i10 = i11 * 53;
                        f10 = a0(obj, W);
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (H(obj, V, i12)) {
                        i10 = i11 * 53;
                        f10 = a0(obj, W);
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (H(obj, V, i12)) {
                        i10 = i11 * 53;
                        f10 = a0(obj, W);
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (H(obj, V, i12)) {
                        i10 = i11 * 53;
                        f10 = z.f(b0(obj, W));
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (H(obj, V, i12)) {
                        i10 = i11 * 53;
                        f10 = a0(obj, W);
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (H(obj, V, i12)) {
                        i10 = i11 * 53;
                        f10 = z.f(b0(obj, W));
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (H(obj, V, i12)) {
                        i10 = i11 * 53;
                        f10 = n1.C(obj, W).hashCode();
                        i11 = i10 + f10;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i11 * 53) + this.f8599o.g(obj).hashCode();
        if (this.f8590f) {
            return (hashCode * 53) + this.f8600p.c(obj).hashCode();
        }
        return hashCode;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public void g(Object obj, byte[] bArr, int i10, int i11, e.a aVar) {
        if (this.f8592h) {
            f0(obj, bArr, i10, i11, aVar);
        } else {
            e0(obj, bArr, i10, i11, 0, aVar);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public void h(Object obj, q1 q1Var) {
        if (q1Var.i() == q1.a.DESCENDING) {
            y0(obj, q1Var);
        } else if (this.f8592h) {
            x0(obj, q1Var);
        } else {
            w0(obj, q1Var);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public void i(Object obj, c1 c1Var, p pVar) {
        pVar.getClass();
        l(obj);
        L(this.f8599o, this.f8600p, obj, c1Var, pVar);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public Object newInstance() {
        return this.f8597m.a(this.f8589e);
    }
}
