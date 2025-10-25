package com.google.android.gms.internal.play_billing;

import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.KotlinVersion;
import org.apache.tika.pipes.PipesConfigBase;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class i3 implements q3 {

    /* renamed from: o  reason: collision with root package name */
    private static final int[] f6999o = new int[0];

    /* renamed from: p  reason: collision with root package name */
    private static final Unsafe f7000p = f4.l();

    /* renamed from: a  reason: collision with root package name */
    private final int[] f7001a;

    /* renamed from: b  reason: collision with root package name */
    private final Object[] f7002b;

    /* renamed from: c  reason: collision with root package name */
    private final int f7003c;

    /* renamed from: d  reason: collision with root package name */
    private final int f7004d;

    /* renamed from: e  reason: collision with root package name */
    private final f3 f7005e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f7006f;

    /* renamed from: g  reason: collision with root package name */
    private final int[] f7007g;

    /* renamed from: h  reason: collision with root package name */
    private final int f7008h;

    /* renamed from: i  reason: collision with root package name */
    private final int f7009i;

    /* renamed from: j  reason: collision with root package name */
    private final u2 f7010j;

    /* renamed from: k  reason: collision with root package name */
    private final v3 f7011k;

    /* renamed from: l  reason: collision with root package name */
    private final r1 f7012l;

    /* renamed from: m  reason: collision with root package name */
    private final k3 f7013m;

    /* renamed from: n  reason: collision with root package name */
    private final a3 f7014n;

    private i3(int[] iArr, Object[] objArr, int i10, int i11, f3 f3Var, int i12, boolean z10, int[] iArr2, int i13, int i14, k3 k3Var, u2 u2Var, v3 v3Var, r1 r1Var, a3 a3Var) {
        this.f7001a = iArr;
        this.f7002b = objArr;
        this.f7003c = i10;
        this.f7004d = i11;
        boolean z11 = false;
        if (r1Var != null && r1Var.c(f3Var)) {
            z11 = true;
        }
        this.f7006f = z11;
        this.f7007g = iArr2;
        this.f7008h = i13;
        this.f7009i = i14;
        this.f7013m = k3Var;
        this.f7010j = u2Var;
        this.f7011k = v3Var;
        this.f7012l = r1Var;
        this.f7005e = f3Var;
        this.f7014n = a3Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0282  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.play_billing.i3 A(java.lang.Class r33, com.google.android.gms.internal.play_billing.c3 r34, com.google.android.gms.internal.play_billing.k3 r35, com.google.android.gms.internal.play_billing.u2 r36, com.google.android.gms.internal.play_billing.v3 r37, com.google.android.gms.internal.play_billing.r1 r38, com.google.android.gms.internal.play_billing.a3 r39) {
        /*
            Method dump skipped, instructions count: 1031
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.i3.A(java.lang.Class, com.google.android.gms.internal.play_billing.c3, com.google.android.gms.internal.play_billing.k3, com.google.android.gms.internal.play_billing.u2, com.google.android.gms.internal.play_billing.v3, com.google.android.gms.internal.play_billing.r1, com.google.android.gms.internal.play_billing.a3):com.google.android.gms.internal.play_billing.i3");
    }

    private static double B(Object obj, long j10) {
        return ((Double) f4.k(obj, j10)).doubleValue();
    }

    private static float C(Object obj, long j10) {
        return ((Float) f4.k(obj, j10)).floatValue();
    }

    private static int D(Object obj, long j10) {
        return ((Integer) f4.k(obj, j10)).intValue();
    }

    private final int E(int i10) {
        return this.f7001a[i10 + 2];
    }

    private final int F(int i10, int i11) {
        int length = (this.f7001a.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int i14 = this.f7001a[i13];
            if (i10 == i14) {
                return i13;
            }
            if (i10 < i14) {
                length = i12 - 1;
            } else {
                i11 = i12 + 1;
            }
        }
        return -1;
    }

    private static int G(int i10) {
        return (i10 >>> 20) & KotlinVersion.MAX_COMPONENT_VALUE;
    }

    private final int H(int i10) {
        return this.f7001a[i10 + 1];
    }

    private static long I(Object obj, long j10) {
        return ((Long) f4.k(obj, j10)).longValue();
    }

    private final f2 J(int i10) {
        int i11 = i10 / 3;
        return (f2) this.f7002b[i11 + i11 + 1];
    }

    private final q3 K(int i10) {
        Object[] objArr = this.f7002b;
        int i11 = i10 / 3;
        int i12 = i11 + i11;
        q3 q3Var = (q3) objArr[i12];
        if (q3Var != null) {
            return q3Var;
        }
        q3 b10 = n3.a().b((Class) objArr[i12 + 1]);
        this.f7002b[i12] = b10;
        return b10;
    }

    private final Object L(int i10) {
        int i11 = i10 / 3;
        return this.f7002b[i11 + i11];
    }

    private final Object M(Object obj, int i10) {
        q3 K = K(i10);
        int H = H(i10) & 1048575;
        if (!r(obj, i10)) {
            return K.h();
        }
        Object object = f7000p.getObject(obj, H);
        if (u(object)) {
            return object;
        }
        Object h10 = K.h();
        if (object != null) {
            K.f(h10, object);
        }
        return h10;
    }

    private final Object N(Object obj, int i10, int i11) {
        q3 K = K(i11);
        if (!v(obj, i10, i11)) {
            return K.h();
        }
        Object object = f7000p.getObject(obj, H(i11) & 1048575);
        if (u(object)) {
            return object;
        }
        Object h10 = K.h();
        if (object != null) {
            K.f(h10, object);
        }
        return h10;
    }

    private static Field O(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private static void j(Object obj) {
        if (u(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
    }

    private final void k(Object obj, Object obj2, int i10) {
        if (!r(obj2, i10)) {
            return;
        }
        Unsafe unsafe = f7000p;
        long H = H(i10) & 1048575;
        Object object = unsafe.getObject(obj2, H);
        if (object != null) {
            q3 K = K(i10);
            if (!r(obj, i10)) {
                if (!u(object)) {
                    unsafe.putObject(obj, H, object);
                } else {
                    Object h10 = K.h();
                    K.f(h10, object);
                    unsafe.putObject(obj, H, h10);
                }
                m(obj, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, H);
            if (!u(object2)) {
                Object h11 = K.h();
                K.f(h11, object2);
                unsafe.putObject(obj, H, h11);
                object2 = h11;
            }
            K.f(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + this.f7001a[i10] + " is present but null: " + obj2.toString());
    }

    private final void l(Object obj, Object obj2, int i10) {
        int i11 = this.f7001a[i10];
        if (!v(obj2, i11, i10)) {
            return;
        }
        Unsafe unsafe = f7000p;
        long H = H(i10) & 1048575;
        Object object = unsafe.getObject(obj2, H);
        if (object != null) {
            q3 K = K(i10);
            if (!v(obj, i11, i10)) {
                if (!u(object)) {
                    unsafe.putObject(obj, H, object);
                } else {
                    Object h10 = K.h();
                    K.f(h10, object);
                    unsafe.putObject(obj, H, h10);
                }
                n(obj, i11, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, H);
            if (!u(object2)) {
                Object h11 = K.h();
                K.f(h11, object2);
                unsafe.putObject(obj, H, h11);
                object2 = h11;
            }
            K.f(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + this.f7001a[i10] + " is present but null: " + obj2.toString());
    }

    private final void m(Object obj, int i10) {
        int E = E(i10);
        long j10 = 1048575 & E;
        if (j10 == 1048575) {
            return;
        }
        f4.v(obj, j10, (1 << (E >>> 20)) | f4.h(obj, j10));
    }

    private final void n(Object obj, int i10, int i11) {
        f4.v(obj, E(i11) & 1048575, i10);
    }

    private final void o(Object obj, int i10, Object obj2) {
        f7000p.putObject(obj, H(i10) & 1048575, obj2);
        m(obj, i10);
    }

    private final void p(Object obj, int i10, int i11, Object obj2) {
        f7000p.putObject(obj, H(i11) & 1048575, obj2);
        n(obj, i10, i11);
    }

    private final boolean q(Object obj, Object obj2, int i10) {
        if (r(obj, i10) == r(obj2, i10)) {
            return true;
        }
        return false;
    }

    private final boolean r(Object obj, int i10) {
        int E = E(i10);
        long j10 = E & 1048575;
        if (j10 == 1048575) {
            int H = H(i10);
            long j11 = H & 1048575;
            switch (G(H)) {
                case 0:
                    if (Double.doubleToRawLongBits(f4.f(obj, j11)) == 0) {
                        return false;
                    }
                    return true;
                case 1:
                    if (Float.floatToRawIntBits(f4.g(obj, j11)) == 0) {
                        return false;
                    }
                    return true;
                case 2:
                    if (f4.i(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (f4.i(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (f4.h(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (f4.i(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (f4.h(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return f4.B(obj, j11);
                case 8:
                    Object k10 = f4.k(obj, j11);
                    if (k10 instanceof String) {
                        if (((String) k10).isEmpty()) {
                            return false;
                        }
                        return true;
                    } else if (k10 instanceof e1) {
                        if (e1.f6973b.equals(k10)) {
                            return false;
                        }
                        return true;
                    } else {
                        throw new IllegalArgumentException();
                    }
                case 9:
                    if (f4.k(obj, j11) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    if (e1.f6973b.equals(f4.k(obj, j11))) {
                        return false;
                    }
                    return true;
                case 11:
                    if (f4.h(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (f4.h(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (f4.h(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (f4.i(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (f4.h(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (f4.i(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (f4.k(obj, j11) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((f4.h(obj, j10) & (1 << (E >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    private final boolean s(Object obj, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return r(obj, i10);
        }
        if ((i12 & i13) != 0) {
            return true;
        }
        return false;
    }

    private static boolean t(Object obj, int i10, q3 q3Var) {
        return q3Var.b(f4.k(obj, i10 & 1048575));
    }

    private static boolean u(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof b2) {
            return ((b2) obj).y();
        }
        return true;
    }

    private final boolean v(Object obj, int i10, int i11) {
        if (f4.h(obj, E(i11) & 1048575) == i10) {
            return true;
        }
        return false;
    }

    private static boolean w(Object obj, long j10) {
        return ((Boolean) f4.k(obj, j10)).booleanValue();
    }

    private static final void x(int i10, Object obj, m4 m4Var) {
        if (obj instanceof String) {
            m4Var.p(i10, (String) obj);
        } else {
            m4Var.n(i10, (e1) obj);
        }
    }

    static w3 z(Object obj) {
        b2 b2Var = (b2) obj;
        w3 w3Var = b2Var.zzc;
        if (w3Var == w3.c()) {
            w3 f10 = w3.f();
            b2Var.zzc = f10;
            return f10;
        }
        return w3Var;
    }

    @Override // com.google.android.gms.internal.play_billing.q3
    public final void a(Object obj) {
        if (u(obj)) {
            if (obj instanceof b2) {
                b2 b2Var = (b2) obj;
                b2Var.w(Integer.MAX_VALUE);
                b2Var.zza = 0;
                b2Var.u();
            }
            int[] iArr = this.f7001a;
            for (int i10 = 0; i10 < iArr.length; i10 += 3) {
                int H = H(i10);
                int i11 = 1048575 & H;
                int G = G(H);
                long j10 = i11;
                if (G != 9) {
                    if (G != 60 && G != 68) {
                        switch (G) {
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
                                this.f7010j.a(obj, j10);
                                break;
                            case 50:
                                Unsafe unsafe = f7000p;
                                Object object = unsafe.getObject(obj, j10);
                                if (object != null) {
                                    ((z2) object).c();
                                    unsafe.putObject(obj, j10, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (v(obj, this.f7001a[i10], i10)) {
                        K(i10).a(f7000p.getObject(obj, j10));
                    }
                }
                if (r(obj, i10)) {
                    K(i10).a(f7000p.getObject(obj, j10));
                }
            }
            this.f7011k.g(obj);
            if (this.f7006f) {
                this.f7012l.b(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.q3
    public final boolean b(Object obj) {
        int i10;
        int i11;
        int i12 = 0;
        int i13 = 0;
        int i14 = 1048575;
        while (i13 < this.f7008h) {
            int[] iArr = this.f7007g;
            int[] iArr2 = this.f7001a;
            int i15 = iArr[i13];
            int i16 = iArr2[i15];
            int H = H(i15);
            int i17 = this.f7001a[i15 + 2];
            int i18 = i17 & 1048575;
            int i19 = 1 << (i17 >>> 20);
            if (i18 != i14) {
                if (i18 != 1048575) {
                    i12 = f7000p.getInt(obj, i18);
                }
                i11 = i12;
                i10 = i18;
            } else {
                i10 = i14;
                i11 = i12;
            }
            if ((268435456 & H) != 0 && !s(obj, i15, i10, i11, i19)) {
                return false;
            }
            int G = G(H);
            if (G != 9 && G != 17) {
                if (G != 27) {
                    if (G != 60 && G != 68) {
                        if (G != 49) {
                            if (G == 50 && !((z2) f4.k(obj, H & 1048575)).isEmpty()) {
                                android.support.v4.media.session.b.a(L(i15));
                                throw null;
                            }
                        }
                    } else if (v(obj, i16, i15) && !t(obj, H, K(i15))) {
                        return false;
                    }
                }
                List list = (List) f4.k(obj, H & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    q3 K = K(i15);
                    for (int i20 = 0; i20 < list.size(); i20++) {
                        if (!K.b(list.get(i20))) {
                            return false;
                        }
                    }
                    continue;
                }
            } else if (s(obj, i15, i10, i11, i19) && !t(obj, H, K(i15))) {
                return false;
            }
            i13++;
            i14 = i10;
            i12 = i11;
        }
        if (!this.f7006f) {
            return true;
        }
        this.f7012l.a(obj);
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.play_billing.q3
    public final int c(Object obj) {
        int i10;
        int i11;
        int i12;
        int w10;
        int w11;
        int w12;
        int x10;
        int w13;
        int w14;
        int i13;
        int w15;
        int n10;
        int m10;
        int size;
        int w16;
        int w17;
        int w18;
        int k10;
        int w19;
        int w20;
        int i14;
        Unsafe unsafe = f7000p;
        boolean z10 = 0;
        int i15 = 1048575;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 1048575;
        while (i17 < this.f7001a.length) {
            int H = H(i17);
            int G = G(H);
            int[] iArr = this.f7001a;
            int i20 = iArr[i17];
            int i21 = iArr[i17 + 2];
            int i22 = i21 & i15;
            if (G <= 17) {
                if (i22 != i19) {
                    i16 = i22 == i15 ? z10 : unsafe.getInt(obj, i22);
                    i19 = i22;
                }
                i12 = 1 << (i21 >>> 20);
                i10 = i19;
                i11 = i16;
            } else {
                i10 = i19;
                i11 = i16;
                i12 = z10;
            }
            int i23 = H & i15;
            if (G >= v1.M.zza()) {
                v1.Z.zza();
            }
            long j10 = i23;
            switch (G) {
                case 0:
                    if (s(obj, i17, i10, i11, i12)) {
                        w10 = m1.w(i20 << 3);
                        n10 = w10 + 8;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (s(obj, i17, i10, i11, i12)) {
                        w11 = m1.w(i20 << 3);
                        n10 = w11 + 4;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (s(obj, i17, i10, i11, i12)) {
                        long j11 = unsafe.getLong(obj, j10);
                        w12 = m1.w(i20 << 3);
                        x10 = m1.x(j11);
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (s(obj, i17, i10, i11, i12)) {
                        long j12 = unsafe.getLong(obj, j10);
                        w12 = m1.w(i20 << 3);
                        x10 = m1.x(j12);
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (s(obj, i17, i10, i11, i12)) {
                        w12 = m1.w(i20 << 3);
                        x10 = m1.x(unsafe.getInt(obj, j10));
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (s(obj, i17, i10, i11, i12)) {
                        w10 = m1.w(i20 << 3);
                        n10 = w10 + 8;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (s(obj, i17, i10, i11, i12)) {
                        w11 = m1.w(i20 << 3);
                        n10 = w11 + 4;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (s(obj, i17, i10, i11, i12)) {
                        w13 = m1.w(i20 << 3);
                        n10 = w13 + 1;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!s(obj, i17, i10, i11, i12)) {
                        break;
                    } else {
                        int i24 = i20 << 3;
                        Object object = unsafe.getObject(obj, j10);
                        if (object instanceof e1) {
                            w14 = m1.w(i24);
                            i13 = ((e1) object).i();
                            w15 = m1.w(i13);
                            n10 = w14 + w15 + i13;
                            i18 += n10;
                            break;
                        } else {
                            w12 = m1.w(i24);
                            x10 = m1.v((String) object);
                            n10 = w12 + x10;
                            i18 += n10;
                        }
                    }
                case 9:
                    if (s(obj, i17, i10, i11, i12)) {
                        n10 = s3.n(i20, unsafe.getObject(obj, j10), K(i17));
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (s(obj, i17, i10, i11, i12)) {
                        w14 = m1.w(i20 << 3);
                        i13 = ((e1) unsafe.getObject(obj, j10)).i();
                        w15 = m1.w(i13);
                        n10 = w14 + w15 + i13;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (s(obj, i17, i10, i11, i12)) {
                        int i25 = unsafe.getInt(obj, j10);
                        w12 = m1.w(i20 << 3);
                        x10 = m1.w(i25);
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (s(obj, i17, i10, i11, i12)) {
                        w12 = m1.w(i20 << 3);
                        x10 = m1.x(unsafe.getInt(obj, j10));
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (s(obj, i17, i10, i11, i12)) {
                        w11 = m1.w(i20 << 3);
                        n10 = w11 + 4;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (s(obj, i17, i10, i11, i12)) {
                        w10 = m1.w(i20 << 3);
                        n10 = w10 + 8;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (s(obj, i17, i10, i11, i12)) {
                        int i26 = unsafe.getInt(obj, j10);
                        w12 = m1.w(i20 << 3);
                        x10 = m1.w((i26 >> 31) ^ (i26 + i26));
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (s(obj, i17, i10, i11, i12)) {
                        long j13 = unsafe.getLong(obj, j10);
                        w12 = m1.w(i20 << 3);
                        x10 = m1.x((j13 >> 63) ^ (j13 + j13));
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (s(obj, i17, i10, i11, i12)) {
                        n10 = m1.t(i20, (f3) unsafe.getObject(obj, j10), K(i17));
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    n10 = s3.j(i20, (List) unsafe.getObject(obj, j10), z10);
                    i18 += n10;
                    break;
                case C1415p9.C /* 19 */:
                    n10 = s3.h(i20, (List) unsafe.getObject(obj, j10), z10);
                    i18 += n10;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j10);
                    int i27 = s3.f7112d;
                    if (list.size() != 0) {
                        m10 = s3.m(list) + (list.size() * m1.w(i20 << 3));
                        i18 += m10;
                        break;
                    }
                    m10 = z10;
                    i18 += m10;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j10);
                    int i28 = s3.f7112d;
                    size = list2.size();
                    if (size != 0) {
                        w12 = s3.r(list2);
                        w16 = m1.w(i20 << 3);
                        x10 = size * w16;
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    }
                    n10 = z10;
                    i18 += n10;
                case Build.API_LEVELS.API_22 /* 22 */:
                    List list3 = (List) unsafe.getObject(obj, j10);
                    int i29 = s3.f7112d;
                    size = list3.size();
                    if (size != 0) {
                        w12 = s3.l(list3);
                        w16 = m1.w(i20 << 3);
                        x10 = size * w16;
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    }
                    n10 = z10;
                    i18 += n10;
                case Build.API_LEVELS.API_23 /* 23 */:
                    n10 = s3.j(i20, (List) unsafe.getObject(obj, j10), z10);
                    i18 += n10;
                    break;
                case Build.API_LEVELS.API_24 /* 24 */:
                    n10 = s3.h(i20, (List) unsafe.getObject(obj, j10), z10);
                    i18 += n10;
                    break;
                case 25:
                    int i30 = s3.f7112d;
                    int size2 = ((List) unsafe.getObject(obj, j10)).size();
                    if (size2 != 0) {
                        n10 = size2 * (m1.w(i20 << 3) + 1);
                        i18 += n10;
                        break;
                    }
                    n10 = z10;
                    i18 += n10;
                case 26:
                    List list4 = (List) unsafe.getObject(obj, j10);
                    int i31 = s3.f7112d;
                    int size3 = list4.size();
                    if (size3 != 0) {
                        m10 = m1.w(i20 << 3) * size3;
                        if (list4 instanceof o2) {
                            o2 o2Var = (o2) list4;
                            for (int i32 = z10; i32 < size3; i32++) {
                                Object P = o2Var.P(i32);
                                if (P instanceof e1) {
                                    int i33 = ((e1) P).i();
                                    m10 += m1.w(i33) + i33;
                                } else {
                                    m10 += m1.v((String) P);
                                }
                            }
                        } else {
                            for (int i34 = z10; i34 < size3; i34++) {
                                Object obj2 = list4.get(i34);
                                if (obj2 instanceof e1) {
                                    int i35 = ((e1) obj2).i();
                                    m10 += m1.w(i35) + i35;
                                } else {
                                    m10 += m1.v((String) obj2);
                                }
                            }
                        }
                        i18 += m10;
                        break;
                    }
                    m10 = z10;
                    i18 += m10;
                case 27:
                    List list5 = (List) unsafe.getObject(obj, j10);
                    q3 K = K(i17);
                    int i36 = s3.f7112d;
                    int size4 = list5.size();
                    if (size4 == 0) {
                        w17 = z10;
                    } else {
                        w17 = m1.w(i20 << 3) * size4;
                        for (int i37 = z10; i37 < size4; i37++) {
                            w17 += m1.u((f3) list5.get(i37), K);
                        }
                    }
                    i18 += w17;
                    break;
                case Build.API_LEVELS.API_28 /* 28 */:
                    List list6 = (List) unsafe.getObject(obj, j10);
                    int i38 = s3.f7112d;
                    int size5 = list6.size();
                    if (size5 == 0) {
                        w18 = z10;
                    } else {
                        w18 = size5 * m1.w(i20 << 3);
                        for (int i39 = z10; i39 < list6.size(); i39++) {
                            int i40 = ((e1) list6.get(i39)).i();
                            w18 += m1.w(i40) + i40;
                        }
                    }
                    i18 += w18;
                    break;
                case 29:
                    List list7 = (List) unsafe.getObject(obj, j10);
                    int i41 = s3.f7112d;
                    size = list7.size();
                    if (size != 0) {
                        w12 = s3.q(list7);
                        w16 = m1.w(i20 << 3);
                        x10 = size * w16;
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    }
                    n10 = z10;
                    i18 += n10;
                case Build.API_LEVELS.API_30 /* 30 */:
                    List list8 = (List) unsafe.getObject(obj, j10);
                    int i42 = s3.f7112d;
                    size = list8.size();
                    if (size != 0) {
                        w12 = s3.g(list8);
                        w16 = m1.w(i20 << 3);
                        x10 = size * w16;
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    }
                    n10 = z10;
                    i18 += n10;
                case Build.API_LEVELS.API_31 /* 31 */:
                    n10 = s3.h(i20, (List) unsafe.getObject(obj, j10), z10);
                    i18 += n10;
                    break;
                case Build.API_LEVELS.API_32 /* 32 */:
                    n10 = s3.j(i20, (List) unsafe.getObject(obj, j10), z10);
                    i18 += n10;
                    break;
                case Build.API_LEVELS.API_33 /* 33 */:
                    List list9 = (List) unsafe.getObject(obj, j10);
                    int i43 = s3.f7112d;
                    size = list9.size();
                    if (size != 0) {
                        w12 = s3.o(list9);
                        w16 = m1.w(i20 << 3);
                        x10 = size * w16;
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    }
                    n10 = z10;
                    i18 += n10;
                case Build.API_LEVELS.API_34 /* 34 */:
                    List list10 = (List) unsafe.getObject(obj, j10);
                    int i44 = s3.f7112d;
                    size = list10.size();
                    if (size != 0) {
                        w12 = s3.p(list10);
                        w16 = m1.w(i20 << 3);
                        x10 = size * w16;
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    }
                    n10 = z10;
                    i18 += n10;
                case 35:
                    k10 = s3.k((List) unsafe.getObject(obj, j10));
                    if (k10 > 0) {
                        w19 = m1.w(i20 << 3);
                        w20 = m1.w(k10);
                        w18 = w19 + w20 + k10;
                        i18 += w18;
                        break;
                    } else {
                        break;
                    }
                case Build.API_LEVELS.API_36 /* 36 */:
                    k10 = s3.i((List) unsafe.getObject(obj, j10));
                    if (k10 > 0) {
                        w19 = m1.w(i20 << 3);
                        w20 = m1.w(k10);
                        w18 = w19 + w20 + k10;
                        i18 += w18;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    k10 = s3.m((List) unsafe.getObject(obj, j10));
                    if (k10 > 0) {
                        w19 = m1.w(i20 << 3);
                        w20 = m1.w(k10);
                        w18 = w19 + w20 + k10;
                        i18 += w18;
                        break;
                    } else {
                        break;
                    }
                case C1415p9.K /* 38 */:
                    k10 = s3.r((List) unsafe.getObject(obj, j10));
                    if (k10 > 0) {
                        w19 = m1.w(i20 << 3);
                        w20 = m1.w(k10);
                        w18 = w19 + w20 + k10;
                        i18 += w18;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    k10 = s3.l((List) unsafe.getObject(obj, j10));
                    if (k10 > 0) {
                        w19 = m1.w(i20 << 3);
                        w20 = m1.w(k10);
                        w18 = w19 + w20 + k10;
                        i18 += w18;
                        break;
                    } else {
                        break;
                    }
                case C1415p9.L /* 40 */:
                    k10 = s3.k((List) unsafe.getObject(obj, j10));
                    if (k10 > 0) {
                        w19 = m1.w(i20 << 3);
                        w20 = m1.w(k10);
                        w18 = w19 + w20 + k10;
                        i18 += w18;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    k10 = s3.i((List) unsafe.getObject(obj, j10));
                    if (k10 > 0) {
                        w19 = m1.w(i20 << 3);
                        w20 = m1.w(k10);
                        w18 = w19 + w20 + k10;
                        i18 += w18;
                        break;
                    } else {
                        break;
                    }
                case C1415p9.M /* 42 */:
                    int i45 = s3.f7112d;
                    k10 = ((List) unsafe.getObject(obj, j10)).size();
                    if (k10 > 0) {
                        w19 = m1.w(i20 << 3);
                        w20 = m1.w(k10);
                        w18 = w19 + w20 + k10;
                        i18 += w18;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    k10 = s3.q((List) unsafe.getObject(obj, j10));
                    if (k10 > 0) {
                        w19 = m1.w(i20 << 3);
                        w20 = m1.w(k10);
                        w18 = w19 + w20 + k10;
                        i18 += w18;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    k10 = s3.g((List) unsafe.getObject(obj, j10));
                    if (k10 > 0) {
                        w19 = m1.w(i20 << 3);
                        w20 = m1.w(k10);
                        w18 = w19 + w20 + k10;
                        i18 += w18;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    k10 = s3.i((List) unsafe.getObject(obj, j10));
                    if (k10 > 0) {
                        w19 = m1.w(i20 << 3);
                        w20 = m1.w(k10);
                        w18 = w19 + w20 + k10;
                        i18 += w18;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    k10 = s3.k((List) unsafe.getObject(obj, j10));
                    if (k10 > 0) {
                        w19 = m1.w(i20 << 3);
                        w20 = m1.w(k10);
                        w18 = w19 + w20 + k10;
                        i18 += w18;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    k10 = s3.o((List) unsafe.getObject(obj, j10));
                    if (k10 > 0) {
                        w19 = m1.w(i20 << 3);
                        w20 = m1.w(k10);
                        w18 = w19 + w20 + k10;
                        i18 += w18;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    k10 = s3.p((List) unsafe.getObject(obj, j10));
                    if (k10 > 0) {
                        w19 = m1.w(i20 << 3);
                        w20 = m1.w(k10);
                        w18 = w19 + w20 + k10;
                        i18 += w18;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    List list11 = (List) unsafe.getObject(obj, j10);
                    q3 K2 = K(i17);
                    int i46 = s3.f7112d;
                    int size6 = list11.size();
                    if (size6 == 0) {
                        i14 = z10;
                    } else {
                        int i47 = z10;
                        i14 = i47;
                        while (i47 < size6) {
                            i14 += m1.t(i20, (f3) list11.get(i47), K2);
                            i47++;
                        }
                    }
                    i18 += i14;
                    break;
                case 50:
                    z2 z2Var = (z2) unsafe.getObject(obj, j10);
                    android.support.v4.media.session.b.a(L(i17));
                    if (z2Var.isEmpty()) {
                        continue;
                    } else {
                        Iterator it = z2Var.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                        break;
                    }
                case 51:
                    if (v(obj, i20, i17)) {
                        w10 = m1.w(i20 << 3);
                        n10 = w10 + 8;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (v(obj, i20, i17)) {
                        w11 = m1.w(i20 << 3);
                        n10 = w11 + 4;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (v(obj, i20, i17)) {
                        long I = I(obj, j10);
                        w12 = m1.w(i20 << 3);
                        x10 = m1.x(I);
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (v(obj, i20, i17)) {
                        long I2 = I(obj, j10);
                        w12 = m1.w(i20 << 3);
                        x10 = m1.x(I2);
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (v(obj, i20, i17)) {
                        w12 = m1.w(i20 << 3);
                        x10 = m1.x(D(obj, j10));
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (v(obj, i20, i17)) {
                        w10 = m1.w(i20 << 3);
                        n10 = w10 + 8;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (v(obj, i20, i17)) {
                        w11 = m1.w(i20 << 3);
                        n10 = w11 + 4;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (v(obj, i20, i17)) {
                        w13 = m1.w(i20 << 3);
                        n10 = w13 + 1;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (!v(obj, i20, i17)) {
                        break;
                    } else {
                        int i48 = i20 << 3;
                        Object object2 = unsafe.getObject(obj, j10);
                        if (object2 instanceof e1) {
                            w14 = m1.w(i48);
                            i13 = ((e1) object2).i();
                            w15 = m1.w(i13);
                            n10 = w14 + w15 + i13;
                            i18 += n10;
                            break;
                        } else {
                            w12 = m1.w(i48);
                            x10 = m1.v((String) object2);
                            n10 = w12 + x10;
                            i18 += n10;
                        }
                    }
                case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                    if (v(obj, i20, i17)) {
                        n10 = s3.n(i20, unsafe.getObject(obj, j10), K(i17));
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (v(obj, i20, i17)) {
                        w14 = m1.w(i20 << 3);
                        i13 = ((e1) unsafe.getObject(obj, j10)).i();
                        w15 = m1.w(i13);
                        n10 = w14 + w15 + i13;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (v(obj, i20, i17)) {
                        int D = D(obj, j10);
                        w12 = m1.w(i20 << 3);
                        x10 = m1.w(D);
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (v(obj, i20, i17)) {
                        w12 = m1.w(i20 << 3);
                        x10 = m1.x(D(obj, j10));
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (v(obj, i20, i17)) {
                        w11 = m1.w(i20 << 3);
                        n10 = w11 + 4;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (v(obj, i20, i17)) {
                        w10 = m1.w(i20 << 3);
                        n10 = w10 + 8;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (v(obj, i20, i17)) {
                        int D2 = D(obj, j10);
                        w12 = m1.w(i20 << 3);
                        x10 = m1.w((D2 >> 31) ^ (D2 + D2));
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (v(obj, i20, i17)) {
                        long I3 = I(obj, j10);
                        w12 = m1.w(i20 << 3);
                        x10 = m1.x((I3 >> 63) ^ (I3 + I3));
                        n10 = w12 + x10;
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (v(obj, i20, i17)) {
                        n10 = m1.t(i20, (f3) unsafe.getObject(obj, j10), K(i17));
                        i18 += n10;
                        break;
                    } else {
                        break;
                    }
            }
            i17 += 3;
            i19 = i10;
            i16 = i11;
            z10 = 0;
            i15 = 1048575;
        }
        v3 v3Var = this.f7011k;
        int a10 = i18 + v3Var.a(v3Var.d(obj));
        if (this.f7006f) {
            this.f7012l.a(obj);
            throw null;
        }
        return a10;
    }

    @Override // com.google.android.gms.internal.play_billing.q3
    public final int d(Object obj) {
        int i10;
        long doubleToLongBits;
        int floatToIntBits;
        int i11;
        int i12 = 0;
        for (int i13 = 0; i13 < this.f7001a.length; i13 += 3) {
            int H = H(i13);
            int[] iArr = this.f7001a;
            int i14 = 1048575 & H;
            int G = G(H);
            int i15 = iArr[i13];
            long j10 = i14;
            int i16 = 37;
            switch (G) {
                case 0:
                    i10 = i12 * 53;
                    doubleToLongBits = Double.doubleToLongBits(f4.f(obj, j10));
                    byte[] bArr = j2.f7023d;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i12 = i10 + floatToIntBits;
                    break;
                case 1:
                    i10 = i12 * 53;
                    floatToIntBits = Float.floatToIntBits(f4.g(obj, j10));
                    i12 = i10 + floatToIntBits;
                    break;
                case 2:
                    i10 = i12 * 53;
                    doubleToLongBits = f4.i(obj, j10);
                    byte[] bArr2 = j2.f7023d;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i12 = i10 + floatToIntBits;
                    break;
                case 3:
                    i10 = i12 * 53;
                    doubleToLongBits = f4.i(obj, j10);
                    byte[] bArr3 = j2.f7023d;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i12 = i10 + floatToIntBits;
                    break;
                case 4:
                    i10 = i12 * 53;
                    floatToIntBits = f4.h(obj, j10);
                    i12 = i10 + floatToIntBits;
                    break;
                case 5:
                    i10 = i12 * 53;
                    doubleToLongBits = f4.i(obj, j10);
                    byte[] bArr4 = j2.f7023d;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i12 = i10 + floatToIntBits;
                    break;
                case 6:
                    i10 = i12 * 53;
                    floatToIntBits = f4.h(obj, j10);
                    i12 = i10 + floatToIntBits;
                    break;
                case 7:
                    i10 = i12 * 53;
                    floatToIntBits = j2.a(f4.B(obj, j10));
                    i12 = i10 + floatToIntBits;
                    break;
                case 8:
                    i10 = i12 * 53;
                    floatToIntBits = ((String) f4.k(obj, j10)).hashCode();
                    i12 = i10 + floatToIntBits;
                    break;
                case 9:
                    i11 = i12 * 53;
                    Object k10 = f4.k(obj, j10);
                    if (k10 != null) {
                        i16 = k10.hashCode();
                    }
                    i12 = i11 + i16;
                    break;
                case 10:
                    i10 = i12 * 53;
                    floatToIntBits = f4.k(obj, j10).hashCode();
                    i12 = i10 + floatToIntBits;
                    break;
                case 11:
                    i10 = i12 * 53;
                    floatToIntBits = f4.h(obj, j10);
                    i12 = i10 + floatToIntBits;
                    break;
                case 12:
                    i10 = i12 * 53;
                    floatToIntBits = f4.h(obj, j10);
                    i12 = i10 + floatToIntBits;
                    break;
                case 13:
                    i10 = i12 * 53;
                    floatToIntBits = f4.h(obj, j10);
                    i12 = i10 + floatToIntBits;
                    break;
                case 14:
                    i10 = i12 * 53;
                    doubleToLongBits = f4.i(obj, j10);
                    byte[] bArr5 = j2.f7023d;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i12 = i10 + floatToIntBits;
                    break;
                case 15:
                    i10 = i12 * 53;
                    floatToIntBits = f4.h(obj, j10);
                    i12 = i10 + floatToIntBits;
                    break;
                case 16:
                    i10 = i12 * 53;
                    doubleToLongBits = f4.i(obj, j10);
                    byte[] bArr6 = j2.f7023d;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i12 = i10 + floatToIntBits;
                    break;
                case 17:
                    i11 = i12 * 53;
                    Object k11 = f4.k(obj, j10);
                    if (k11 != null) {
                        i16 = k11.hashCode();
                    }
                    i12 = i11 + i16;
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
                    i10 = i12 * 53;
                    floatToIntBits = f4.k(obj, j10).hashCode();
                    i12 = i10 + floatToIntBits;
                    break;
                case 50:
                    i10 = i12 * 53;
                    floatToIntBits = f4.k(obj, j10).hashCode();
                    i12 = i10 + floatToIntBits;
                    break;
                case 51:
                    if (v(obj, i15, i13)) {
                        i10 = i12 * 53;
                        doubleToLongBits = Double.doubleToLongBits(B(obj, j10));
                        byte[] bArr7 = j2.f7023d;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (v(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = Float.floatToIntBits(C(obj, j10));
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (v(obj, i15, i13)) {
                        i10 = i12 * 53;
                        doubleToLongBits = I(obj, j10);
                        byte[] bArr8 = j2.f7023d;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (v(obj, i15, i13)) {
                        i10 = i12 * 53;
                        doubleToLongBits = I(obj, j10);
                        byte[] bArr9 = j2.f7023d;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (v(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = D(obj, j10);
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (v(obj, i15, i13)) {
                        i10 = i12 * 53;
                        doubleToLongBits = I(obj, j10);
                        byte[] bArr10 = j2.f7023d;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (v(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = D(obj, j10);
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (v(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = j2.a(w(obj, j10));
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (v(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = ((String) f4.k(obj, j10)).hashCode();
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                    if (v(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = f4.k(obj, j10).hashCode();
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (v(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = f4.k(obj, j10).hashCode();
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (v(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = D(obj, j10);
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (v(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = D(obj, j10);
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (v(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = D(obj, j10);
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (v(obj, i15, i13)) {
                        i10 = i12 * 53;
                        doubleToLongBits = I(obj, j10);
                        byte[] bArr11 = j2.f7023d;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (v(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = D(obj, j10);
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (v(obj, i15, i13)) {
                        i10 = i12 * 53;
                        doubleToLongBits = I(obj, j10);
                        byte[] bArr12 = j2.f7023d;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (v(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = f4.k(obj, j10).hashCode();
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i12 * 53) + this.f7011k.d(obj).hashCode();
        if (!this.f7006f) {
            return hashCode;
        }
        this.f7012l.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.q3
    public final void e(Object obj, m4 m4Var) {
        int i10;
        int i11;
        int i12;
        int i13;
        if (!this.f7006f) {
            int[] iArr = this.f7001a;
            Unsafe unsafe = f7000p;
            int i14 = 1048575;
            int i15 = 1048575;
            int i16 = 0;
            int i17 = 0;
            while (i17 < iArr.length) {
                int H = H(i17);
                int[] iArr2 = this.f7001a;
                int G = G(H);
                int i18 = iArr2[i17];
                if (G <= 17) {
                    int i19 = iArr2[i17 + 2];
                    int i20 = i19 & i14;
                    if (i20 != i15) {
                        if (i20 == i14) {
                            i13 = 0;
                        } else {
                            i13 = unsafe.getInt(obj, i20);
                        }
                        i16 = i13;
                        i15 = i20;
                    }
                    i10 = i15;
                    i11 = i16;
                    i12 = 1 << (i19 >>> 20);
                } else {
                    i10 = i15;
                    i11 = i16;
                    i12 = 0;
                }
                long j10 = H & i14;
                switch (G) {
                    case 0:
                        if (s(obj, i17, i10, i11, i12)) {
                            m4Var.f(i18, f4.f(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (s(obj, i17, i10, i11, i12)) {
                            m4Var.B(i18, f4.g(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (s(obj, i17, i10, i11, i12)) {
                            m4Var.q(i18, unsafe.getLong(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (s(obj, i17, i10, i11, i12)) {
                            m4Var.E(i18, unsafe.getLong(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (s(obj, i17, i10, i11, i12)) {
                            m4Var.y(i18, unsafe.getInt(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (s(obj, i17, i10, i11, i12)) {
                            m4Var.H(i18, unsafe.getLong(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (s(obj, i17, i10, i11, i12)) {
                            m4Var.b(i18, unsafe.getInt(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (s(obj, i17, i10, i11, i12)) {
                            m4Var.m(i18, f4.B(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (s(obj, i17, i10, i11, i12)) {
                            x(i18, unsafe.getObject(obj, j10), m4Var);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (s(obj, i17, i10, i11, i12)) {
                            m4Var.u(i18, unsafe.getObject(obj, j10), K(i17));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (s(obj, i17, i10, i11, i12)) {
                            m4Var.n(i18, (e1) unsafe.getObject(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (s(obj, i17, i10, i11, i12)) {
                            m4Var.k(i18, unsafe.getInt(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (s(obj, i17, i10, i11, i12)) {
                            m4Var.d(i18, unsafe.getInt(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (s(obj, i17, i10, i11, i12)) {
                            m4Var.A(i18, unsafe.getInt(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (s(obj, i17, i10, i11, i12)) {
                            m4Var.s(i18, unsafe.getLong(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (s(obj, i17, i10, i11, i12)) {
                            m4Var.o(i18, unsafe.getInt(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (s(obj, i17, i10, i11, i12)) {
                            m4Var.J(i18, unsafe.getLong(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (s(obj, i17, i10, i11, i12)) {
                            m4Var.I(i18, unsafe.getObject(obj, j10), K(i17));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        s3.y(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, false);
                        break;
                    case C1415p9.C /* 19 */:
                        s3.C(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, false);
                        break;
                    case 20:
                        s3.E(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, false);
                        break;
                    case 21:
                        s3.e(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, false);
                        break;
                    case Build.API_LEVELS.API_22 /* 22 */:
                        s3.D(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, false);
                        break;
                    case Build.API_LEVELS.API_23 /* 23 */:
                        s3.B(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, false);
                        break;
                    case Build.API_LEVELS.API_24 /* 24 */:
                        s3.A(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, false);
                        break;
                    case 25:
                        s3.x(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, false);
                        break;
                    case 26:
                        int i21 = this.f7001a[i17];
                        List list = (List) unsafe.getObject(obj, j10);
                        int i22 = s3.f7112d;
                        if (list != null && !list.isEmpty()) {
                            m4Var.e(i21, list);
                            break;
                        }
                        break;
                    case 27:
                        int i23 = this.f7001a[i17];
                        List list2 = (List) unsafe.getObject(obj, j10);
                        q3 K = K(i17);
                        int i24 = s3.f7112d;
                        if (list2 != null && !list2.isEmpty()) {
                            for (int i25 = 0; i25 < list2.size(); i25++) {
                                ((n1) m4Var).u(i23, list2.get(i25), K);
                            }
                            break;
                        }
                        break;
                    case Build.API_LEVELS.API_28 /* 28 */:
                        int i26 = this.f7001a[i17];
                        List list3 = (List) unsafe.getObject(obj, j10);
                        int i27 = s3.f7112d;
                        if (list3 != null && !list3.isEmpty()) {
                            m4Var.l(i26, list3);
                            break;
                        }
                        break;
                    case 29:
                        s3.d(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, false);
                        break;
                    case Build.API_LEVELS.API_30 /* 30 */:
                        s3.z(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, false);
                        break;
                    case Build.API_LEVELS.API_31 /* 31 */:
                        s3.F(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, false);
                        break;
                    case Build.API_LEVELS.API_32 /* 32 */:
                        s3.a(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, false);
                        break;
                    case Build.API_LEVELS.API_33 /* 33 */:
                        s3.b(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, false);
                        break;
                    case Build.API_LEVELS.API_34 /* 34 */:
                        s3.c(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, false);
                        break;
                    case 35:
                        s3.y(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, true);
                        break;
                    case Build.API_LEVELS.API_36 /* 36 */:
                        s3.C(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, true);
                        break;
                    case 37:
                        s3.E(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, true);
                        break;
                    case C1415p9.K /* 38 */:
                        s3.e(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, true);
                        break;
                    case 39:
                        s3.D(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, true);
                        break;
                    case C1415p9.L /* 40 */:
                        s3.B(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, true);
                        break;
                    case 41:
                        s3.A(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, true);
                        break;
                    case C1415p9.M /* 42 */:
                        s3.x(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, true);
                        break;
                    case 43:
                        s3.d(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, true);
                        break;
                    case 44:
                        s3.z(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, true);
                        break;
                    case 45:
                        s3.F(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, true);
                        break;
                    case 46:
                        s3.a(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, true);
                        break;
                    case 47:
                        s3.b(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, true);
                        break;
                    case 48:
                        s3.c(this.f7001a[i17], (List) unsafe.getObject(obj, j10), m4Var, true);
                        break;
                    case 49:
                        int i28 = this.f7001a[i17];
                        List list4 = (List) unsafe.getObject(obj, j10);
                        q3 K2 = K(i17);
                        int i29 = s3.f7112d;
                        if (list4 != null && !list4.isEmpty()) {
                            for (int i30 = 0; i30 < list4.size(); i30++) {
                                ((n1) m4Var).I(i28, list4.get(i30), K2);
                            }
                            break;
                        }
                        break;
                    case 50:
                        if (unsafe.getObject(obj, j10) != null) {
                            android.support.v4.media.session.b.a(L(i17));
                            throw null;
                        }
                        break;
                    case 51:
                        if (v(obj, i18, i17)) {
                            m4Var.f(i18, B(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (v(obj, i18, i17)) {
                            m4Var.B(i18, C(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (v(obj, i18, i17)) {
                            m4Var.q(i18, I(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (v(obj, i18, i17)) {
                            m4Var.E(i18, I(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (v(obj, i18, i17)) {
                            m4Var.y(i18, D(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (v(obj, i18, i17)) {
                            m4Var.H(i18, I(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (v(obj, i18, i17)) {
                            m4Var.b(i18, D(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (v(obj, i18, i17)) {
                            m4Var.m(i18, w(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (v(obj, i18, i17)) {
                            x(i18, unsafe.getObject(obj, j10), m4Var);
                            break;
                        } else {
                            break;
                        }
                    case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                        if (v(obj, i18, i17)) {
                            m4Var.u(i18, unsafe.getObject(obj, j10), K(i17));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (v(obj, i18, i17)) {
                            m4Var.n(i18, (e1) unsafe.getObject(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (v(obj, i18, i17)) {
                            m4Var.k(i18, D(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (v(obj, i18, i17)) {
                            m4Var.d(i18, D(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (v(obj, i18, i17)) {
                            m4Var.A(i18, D(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (v(obj, i18, i17)) {
                            m4Var.s(i18, I(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (v(obj, i18, i17)) {
                            m4Var.o(i18, D(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (v(obj, i18, i17)) {
                            m4Var.J(i18, I(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (v(obj, i18, i17)) {
                            m4Var.I(i18, unsafe.getObject(obj, j10), K(i17));
                            break;
                        } else {
                            break;
                        }
                }
                i17 += 3;
                i15 = i10;
                i16 = i11;
                i14 = 1048575;
            }
            v3 v3Var = this.f7011k;
            v3Var.i(v3Var.d(obj), m4Var);
            return;
        }
        this.f7012l.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.q3
    public final void f(Object obj, Object obj2) {
        j(obj);
        obj2.getClass();
        for (int i10 = 0; i10 < this.f7001a.length; i10 += 3) {
            int H = H(i10);
            int i11 = 1048575 & H;
            int[] iArr = this.f7001a;
            int G = G(H);
            int i12 = iArr[i10];
            long j10 = i11;
            switch (G) {
                case 0:
                    if (r(obj2, i10)) {
                        f4.t(obj, j10, f4.f(obj2, j10));
                        m(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (r(obj2, i10)) {
                        f4.u(obj, j10, f4.g(obj2, j10));
                        m(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (r(obj2, i10)) {
                        f4.w(obj, j10, f4.i(obj2, j10));
                        m(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (r(obj2, i10)) {
                        f4.w(obj, j10, f4.i(obj2, j10));
                        m(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (r(obj2, i10)) {
                        f4.v(obj, j10, f4.h(obj2, j10));
                        m(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (r(obj2, i10)) {
                        f4.w(obj, j10, f4.i(obj2, j10));
                        m(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (r(obj2, i10)) {
                        f4.v(obj, j10, f4.h(obj2, j10));
                        m(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (r(obj2, i10)) {
                        f4.r(obj, j10, f4.B(obj2, j10));
                        m(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (r(obj2, i10)) {
                        f4.x(obj, j10, f4.k(obj2, j10));
                        m(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    k(obj, obj2, i10);
                    break;
                case 10:
                    if (r(obj2, i10)) {
                        f4.x(obj, j10, f4.k(obj2, j10));
                        m(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (r(obj2, i10)) {
                        f4.v(obj, j10, f4.h(obj2, j10));
                        m(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (r(obj2, i10)) {
                        f4.v(obj, j10, f4.h(obj2, j10));
                        m(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (r(obj2, i10)) {
                        f4.v(obj, j10, f4.h(obj2, j10));
                        m(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (r(obj2, i10)) {
                        f4.w(obj, j10, f4.i(obj2, j10));
                        m(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (r(obj2, i10)) {
                        f4.v(obj, j10, f4.h(obj2, j10));
                        m(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (r(obj2, i10)) {
                        f4.w(obj, j10, f4.i(obj2, j10));
                        m(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    k(obj, obj2, i10);
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
                    this.f7010j.b(obj, obj2, j10);
                    break;
                case 50:
                    int i13 = s3.f7112d;
                    f4.x(obj, j10, a3.a(f4.k(obj, j10), f4.k(obj2, j10)));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (v(obj2, i12, i10)) {
                        f4.x(obj, j10, f4.k(obj2, j10));
                        n(obj, i12, i10);
                        break;
                    } else {
                        break;
                    }
                case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                    l(obj, obj2, i10);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (v(obj2, i12, i10)) {
                        f4.x(obj, j10, f4.k(obj2, j10));
                        n(obj, i12, i10);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    l(obj, obj2, i10);
                    break;
            }
        }
        s3.v(this.f7011k, obj, obj2);
        if (!this.f7006f) {
            return;
        }
        this.f7012l.a(obj2);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.q3
    public final void g(Object obj, byte[] bArr, int i10, int i11, r0 r0Var) {
        y(obj, bArr, i10, i11, 0, r0Var);
    }

    @Override // com.google.android.gms.internal.play_billing.q3
    public final Object h() {
        return ((b2) this.f7005e).m();
    }

    @Override // com.google.android.gms.internal.play_billing.q3
    public final boolean i(Object obj, Object obj2) {
        boolean f10;
        for (int i10 = 0; i10 < this.f7001a.length; i10 += 3) {
            int H = H(i10);
            long j10 = H & 1048575;
            switch (G(H)) {
                case 0:
                    if (q(obj, obj2, i10) && Double.doubleToLongBits(f4.f(obj, j10)) == Double.doubleToLongBits(f4.f(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (q(obj, obj2, i10) && Float.floatToIntBits(f4.g(obj, j10)) == Float.floatToIntBits(f4.g(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (q(obj, obj2, i10) && f4.i(obj, j10) == f4.i(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (q(obj, obj2, i10) && f4.i(obj, j10) == f4.i(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (q(obj, obj2, i10) && f4.h(obj, j10) == f4.h(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (q(obj, obj2, i10) && f4.i(obj, j10) == f4.i(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (q(obj, obj2, i10) && f4.h(obj, j10) == f4.h(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (q(obj, obj2, i10) && f4.B(obj, j10) == f4.B(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (q(obj, obj2, i10) && s3.f(f4.k(obj, j10), f4.k(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (q(obj, obj2, i10) && s3.f(f4.k(obj, j10), f4.k(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (q(obj, obj2, i10) && s3.f(f4.k(obj, j10), f4.k(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (q(obj, obj2, i10) && f4.h(obj, j10) == f4.h(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (q(obj, obj2, i10) && f4.h(obj, j10) == f4.h(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (q(obj, obj2, i10) && f4.h(obj, j10) == f4.h(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (q(obj, obj2, i10) && f4.i(obj, j10) == f4.i(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (q(obj, obj2, i10) && f4.h(obj, j10) == f4.h(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (q(obj, obj2, i10) && f4.i(obj, j10) == f4.i(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (q(obj, obj2, i10) && s3.f(f4.k(obj, j10), f4.k(obj2, j10))) {
                        continue;
                    }
                    return false;
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
                    f10 = s3.f(f4.k(obj, j10), f4.k(obj2, j10));
                    break;
                case 50:
                    f10 = s3.f(f4.k(obj, j10), f4.k(obj2, j10));
                    break;
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
                    long E = E(i10) & 1048575;
                    if (f4.h(obj, E) == f4.h(obj2, E) && s3.f(f4.k(obj, j10), f4.k(obj2, j10))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!f10) {
                return false;
            }
        }
        if (!this.f7011k.d(obj).equals(this.f7011k.d(obj2))) {
            return false;
        }
        if (!this.f7006f) {
            return true;
        }
        this.f7012l.a(obj);
        this.f7012l.a(obj2);
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:539:0x0c18, code lost:
        if (r6 == 1048575) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:540:0x0c1a, code lost:
        r13.putInt(r7, r6, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:541:0x0c1e, code lost:
        r3 = r0.f7008h;
     */
    /* JADX WARN: Code restructure failed: missing block: B:543:0x0c22, code lost:
        if (r3 >= r0.f7009i) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:544:0x0c24, code lost:
        r5 = r0.f7007g;
        r6 = r0.f7001a;
        r5 = r5[r3];
        r6 = r6[r5];
        r6 = com.google.android.gms.internal.play_billing.f4.k(r7, r0.H(r5) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:545:0x0c36, code lost:
        if (r6 != null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:548:0x0c3d, code lost:
        if (r0.J(r5) != null) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:549:0x0c3f, code lost:
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:550:0x0c42, code lost:
        r6 = (com.google.android.gms.internal.play_billing.z2) r6;
        android.support.v4.media.session.b.a(r0.L(r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:551:0x0c4b, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:552:0x0c4c, code lost:
        if (r8 != 0) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:554:0x0c50, code lost:
        if (r1 != r38) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:557:0x0c57, code lost:
        throw com.google.android.gms.internal.play_billing.l2.e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:559:0x0c5a, code lost:
        if (r1 > r38) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:560:0x0c5c, code lost:
        if (r4 != r8) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:561:0x0c5e, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:563:0x0c63, code lost:
        throw com.google.android.gms.internal.play_billing.l2.e();
     */
    /* JADX WARN: Removed duplicated region for block: B:261:0x060f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x06ba  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0708  */
    /* JADX WARN: Removed duplicated region for block: B:528:0x0bba A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:532:0x0bc9  */
    /* JADX WARN: Removed duplicated region for block: B:616:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0206  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:259:0x060c -> B:260:0x060d). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:292:0x06b7 -> B:293:0x06b8). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:312:0x0705 -> B:313:0x0706). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int y(java.lang.Object r35, byte[] r36, int r37, int r38, int r39, com.google.android.gms.internal.play_billing.r0 r40) {
        /*
            Method dump skipped, instructions count: 3316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.i3.y(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.play_billing.r0):int");
    }
}
