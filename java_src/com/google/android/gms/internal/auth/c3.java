package com.google.android.gms.internal.auth;

import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import kotlin.KotlinVersion;
import org.apache.tika.pipes.PipesConfigBase;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c3 implements k3 {

    /* renamed from: n  reason: collision with root package name */
    private static final int[] f5980n = new int[0];

    /* renamed from: o  reason: collision with root package name */
    private static final Unsafe f5981o = a4.g();

    /* renamed from: a  reason: collision with root package name */
    private final int[] f5982a;

    /* renamed from: b  reason: collision with root package name */
    private final Object[] f5983b;

    /* renamed from: c  reason: collision with root package name */
    private final int f5984c;

    /* renamed from: d  reason: collision with root package name */
    private final int f5985d;

    /* renamed from: e  reason: collision with root package name */
    private final y2 f5986e;

    /* renamed from: f  reason: collision with root package name */
    private final int[] f5987f;

    /* renamed from: g  reason: collision with root package name */
    private final int f5988g;

    /* renamed from: h  reason: collision with root package name */
    private final int f5989h;

    /* renamed from: i  reason: collision with root package name */
    private final o2 f5990i;

    /* renamed from: j  reason: collision with root package name */
    private final p3 f5991j;

    /* renamed from: k  reason: collision with root package name */
    private final v1 f5992k;

    /* renamed from: l  reason: collision with root package name */
    private final e3 f5993l;

    /* renamed from: m  reason: collision with root package name */
    private final t2 f5994m;

    private c3(int[] iArr, Object[] objArr, int i10, int i11, y2 y2Var, int i12, boolean z10, int[] iArr2, int i13, int i14, e3 e3Var, o2 o2Var, p3 p3Var, v1 v1Var, t2 t2Var) {
        this.f5982a = iArr;
        this.f5983b = objArr;
        this.f5984c = i10;
        this.f5985d = i11;
        this.f5987f = iArr2;
        this.f5988g = i13;
        this.f5989h = i14;
        this.f5993l = e3Var;
        this.f5990i = o2Var;
        this.f5991j = p3Var;
        this.f5992k = v1Var;
        this.f5986e = y2Var;
        this.f5994m = t2Var;
    }

    private final k3 A(int i10) {
        int i11 = i10 / 3;
        int i12 = i11 + i11;
        k3 k3Var = (k3) this.f5983b[i12];
        if (k3Var != null) {
            return k3Var;
        }
        k3 b10 = h3.a().b((Class) this.f5983b[i12 + 1]);
        this.f5983b[i12] = b10;
        return b10;
    }

    private final Object B(int i10) {
        int i11 = i10 / 3;
        return this.f5983b[i11 + i11];
    }

    private final Object C(Object obj, int i10) {
        k3 A = A(i10);
        int x10 = x(i10) & 1048575;
        if (!l(obj, i10)) {
            return A.g();
        }
        Object object = f5981o.getObject(obj, x10);
        if (o(object)) {
            return object;
        }
        Object g10 = A.g();
        if (object != null) {
            A.e(g10, object);
        }
        return g10;
    }

    private final Object D(Object obj, int i10, int i11) {
        k3 A = A(i11);
        if (!p(obj, i10, i11)) {
            return A.g();
        }
        Object object = f5981o.getObject(obj, x(i11) & 1048575);
        if (o(object)) {
            return object;
        }
        Object g10 = A.g();
        if (object != null) {
            A.e(g10, object);
        }
        return g10;
    }

    private static Field E(Class cls, String str) {
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

    private static void F(Object obj) {
        if (o(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
    }

    private final void G(Object obj, Object obj2, int i10) {
        if (!l(obj2, i10)) {
            return;
        }
        Unsafe unsafe = f5981o;
        long x10 = x(i10) & 1048575;
        Object object = unsafe.getObject(obj2, x10);
        if (object != null) {
            k3 A = A(i10);
            if (!l(obj, i10)) {
                if (!o(object)) {
                    unsafe.putObject(obj, x10, object);
                } else {
                    Object g10 = A.g();
                    A.e(g10, object);
                    unsafe.putObject(obj, x10, g10);
                }
                I(obj, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, x10);
            if (!o(object2)) {
                Object g11 = A.g();
                A.e(g11, object2);
                unsafe.putObject(obj, x10, g11);
                object2 = g11;
            }
            A.e(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + this.f5982a[i10] + " is present but null: " + obj2.toString());
    }

    private final void H(Object obj, Object obj2, int i10) {
        int i11 = this.f5982a[i10];
        if (!p(obj2, i11, i10)) {
            return;
        }
        Unsafe unsafe = f5981o;
        long x10 = x(i10) & 1048575;
        Object object = unsafe.getObject(obj2, x10);
        if (object != null) {
            k3 A = A(i10);
            if (!p(obj, i11, i10)) {
                if (!o(object)) {
                    unsafe.putObject(obj, x10, object);
                } else {
                    Object g10 = A.g();
                    A.e(g10, object);
                    unsafe.putObject(obj, x10, g10);
                }
                b(obj, i11, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, x10);
            if (!o(object2)) {
                Object g11 = A.g();
                A.e(g11, object2);
                unsafe.putObject(obj, x10, g11);
                object2 = g11;
            }
            A.e(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + this.f5982a[i10] + " is present but null: " + obj2.toString());
    }

    private final void I(Object obj, int i10) {
        int u10 = u(i10);
        long j10 = 1048575 & u10;
        if (j10 == 1048575) {
            return;
        }
        a4.n(obj, j10, (1 << (u10 >>> 20)) | a4.c(obj, j10));
    }

    private final void b(Object obj, int i10, int i11) {
        a4.n(obj, u(i11) & 1048575, i10);
    }

    private final void i(Object obj, int i10, Object obj2) {
        f5981o.putObject(obj, x(i10) & 1048575, obj2);
        I(obj, i10);
    }

    private final void j(Object obj, int i10, int i11, Object obj2) {
        f5981o.putObject(obj, x(i11) & 1048575, obj2);
        b(obj, i10, i11);
    }

    private final boolean k(Object obj, Object obj2, int i10) {
        if (l(obj, i10) == l(obj2, i10)) {
            return true;
        }
        return false;
    }

    private final boolean l(Object obj, int i10) {
        int u10 = u(i10);
        long j10 = u10 & 1048575;
        if (j10 == 1048575) {
            int x10 = x(i10);
            long j11 = x10 & 1048575;
            switch (w(x10)) {
                case 0:
                    if (Double.doubleToRawLongBits(a4.a(obj, j11)) == 0) {
                        return false;
                    }
                    return true;
                case 1:
                    if (Float.floatToRawIntBits(a4.b(obj, j11)) == 0) {
                        return false;
                    }
                    return true;
                case 2:
                    if (a4.d(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (a4.d(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (a4.c(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (a4.d(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (a4.c(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return a4.t(obj, j11);
                case 8:
                    Object f10 = a4.f(obj, j11);
                    if (f10 instanceof String) {
                        if (((String) f10).isEmpty()) {
                            return false;
                        }
                        return true;
                    } else if (f10 instanceof p1) {
                        if (p1.f6140b.equals(f10)) {
                            return false;
                        }
                        return true;
                    } else {
                        throw new IllegalArgumentException();
                    }
                case 9:
                    if (a4.f(obj, j11) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    if (p1.f6140b.equals(a4.f(obj, j11))) {
                        return false;
                    }
                    return true;
                case 11:
                    if (a4.c(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (a4.c(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (a4.c(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (a4.d(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (a4.c(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (a4.d(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (a4.f(obj, j11) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((a4.c(obj, j10) & (1 << (u10 >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    private final boolean m(Object obj, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return l(obj, i10);
        }
        if ((i12 & i13) != 0) {
            return true;
        }
        return false;
    }

    private static boolean n(Object obj, int i10, k3 k3Var) {
        return k3Var.f(a4.f(obj, i10 & 1048575));
    }

    private static boolean o(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof b2) {
            return ((b2) obj).n();
        }
        return true;
    }

    private final boolean p(Object obj, int i10, int i11) {
        if (a4.c(obj, u(i11) & 1048575) == i10) {
            return true;
        }
        return false;
    }

    static r3 r(Object obj) {
        b2 b2Var = (b2) obj;
        r3 r3Var = b2Var.zzc;
        if (r3Var == r3.a()) {
            r3 d10 = r3.d();
            b2Var.zzc = d10;
            return d10;
        }
        return r3Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:123:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x026d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.auth.c3 s(java.lang.Class r30, com.google.android.gms.internal.auth.v2 r31, com.google.android.gms.internal.auth.e3 r32, com.google.android.gms.internal.auth.o2 r33, com.google.android.gms.internal.auth.p3 r34, com.google.android.gms.internal.auth.v1 r35, com.google.android.gms.internal.auth.t2 r36) {
        /*
            Method dump skipped, instructions count: 1006
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.c3.s(java.lang.Class, com.google.android.gms.internal.auth.v2, com.google.android.gms.internal.auth.e3, com.google.android.gms.internal.auth.o2, com.google.android.gms.internal.auth.p3, com.google.android.gms.internal.auth.v1, com.google.android.gms.internal.auth.t2):com.google.android.gms.internal.auth.c3");
    }

    private static int t(Object obj, long j10) {
        return ((Integer) a4.f(obj, j10)).intValue();
    }

    private final int u(int i10) {
        return this.f5982a[i10 + 2];
    }

    private final int v(int i10, int i11) {
        int length = (this.f5982a.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int i14 = this.f5982a[i13];
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

    private static int w(int i10) {
        return (i10 >>> 20) & KotlinVersion.MAX_COMPONENT_VALUE;
    }

    private final int x(int i10) {
        return this.f5982a[i10 + 1];
    }

    private static long y(Object obj, long j10) {
        return ((Long) a4.f(obj, j10)).longValue();
    }

    private final c2 z(int i10) {
        int i11 = i10 / 3;
        android.support.v4.media.session.b.a(this.f5983b[i11 + i11 + 1]);
        return null;
    }

    @Override // com.google.android.gms.internal.auth.k3
    public final void a(Object obj) {
        if (!o(obj)) {
            return;
        }
        if (obj instanceof b2) {
            b2 b2Var = (b2) obj;
            b2Var.m(Integer.MAX_VALUE);
            b2Var.zza = 0;
            b2Var.k();
        }
        int length = this.f5982a.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int x10 = x(i10);
            int i11 = 1048575 & x10;
            int w10 = w(x10);
            long j10 = i11;
            if (w10 != 9) {
                if (w10 != 60 && w10 != 68) {
                    switch (w10) {
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
                            this.f5990i.a(obj, j10);
                            break;
                        case 50:
                            Unsafe unsafe = f5981o;
                            Object object = unsafe.getObject(obj, j10);
                            if (object != null) {
                                ((s2) object).c();
                                unsafe.putObject(obj, j10, object);
                                break;
                            } else {
                                break;
                            }
                    }
                } else if (p(obj, this.f5982a[i10], i10)) {
                    A(i10).a(f5981o.getObject(obj, j10));
                }
            }
            if (l(obj, i10)) {
                A(i10).a(f5981o.getObject(obj, j10));
            }
        }
        this.f5991j.c(obj);
    }

    @Override // com.google.android.gms.internal.auth.k3
    public final int c(Object obj) {
        int i10;
        long doubleToLongBits;
        int floatToIntBits;
        int length = this.f5982a.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int x10 = x(i12);
            int i13 = this.f5982a[i12];
            long j10 = 1048575 & x10;
            int i14 = 37;
            switch (w(x10)) {
                case 0:
                    i10 = i11 * 53;
                    doubleToLongBits = Double.doubleToLongBits(a4.a(obj, j10));
                    byte[] bArr = f2.f6011d;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i11 = i10 + floatToIntBits;
                    break;
                case 1:
                    i10 = i11 * 53;
                    floatToIntBits = Float.floatToIntBits(a4.b(obj, j10));
                    i11 = i10 + floatToIntBits;
                    break;
                case 2:
                    i10 = i11 * 53;
                    doubleToLongBits = a4.d(obj, j10);
                    byte[] bArr2 = f2.f6011d;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i11 = i10 + floatToIntBits;
                    break;
                case 3:
                    i10 = i11 * 53;
                    doubleToLongBits = a4.d(obj, j10);
                    byte[] bArr3 = f2.f6011d;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i11 = i10 + floatToIntBits;
                    break;
                case 4:
                    i10 = i11 * 53;
                    floatToIntBits = a4.c(obj, j10);
                    i11 = i10 + floatToIntBits;
                    break;
                case 5:
                    i10 = i11 * 53;
                    doubleToLongBits = a4.d(obj, j10);
                    byte[] bArr4 = f2.f6011d;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i11 = i10 + floatToIntBits;
                    break;
                case 6:
                    i10 = i11 * 53;
                    floatToIntBits = a4.c(obj, j10);
                    i11 = i10 + floatToIntBits;
                    break;
                case 7:
                    i10 = i11 * 53;
                    floatToIntBits = f2.a(a4.t(obj, j10));
                    i11 = i10 + floatToIntBits;
                    break;
                case 8:
                    i10 = i11 * 53;
                    floatToIntBits = ((String) a4.f(obj, j10)).hashCode();
                    i11 = i10 + floatToIntBits;
                    break;
                case 9:
                    Object f10 = a4.f(obj, j10);
                    if (f10 != null) {
                        i14 = f10.hashCode();
                    }
                    i11 = (i11 * 53) + i14;
                    break;
                case 10:
                    i10 = i11 * 53;
                    floatToIntBits = a4.f(obj, j10).hashCode();
                    i11 = i10 + floatToIntBits;
                    break;
                case 11:
                    i10 = i11 * 53;
                    floatToIntBits = a4.c(obj, j10);
                    i11 = i10 + floatToIntBits;
                    break;
                case 12:
                    i10 = i11 * 53;
                    floatToIntBits = a4.c(obj, j10);
                    i11 = i10 + floatToIntBits;
                    break;
                case 13:
                    i10 = i11 * 53;
                    floatToIntBits = a4.c(obj, j10);
                    i11 = i10 + floatToIntBits;
                    break;
                case 14:
                    i10 = i11 * 53;
                    doubleToLongBits = a4.d(obj, j10);
                    byte[] bArr5 = f2.f6011d;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i11 = i10 + floatToIntBits;
                    break;
                case 15:
                    i10 = i11 * 53;
                    floatToIntBits = a4.c(obj, j10);
                    i11 = i10 + floatToIntBits;
                    break;
                case 16:
                    i10 = i11 * 53;
                    doubleToLongBits = a4.d(obj, j10);
                    byte[] bArr6 = f2.f6011d;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i11 = i10 + floatToIntBits;
                    break;
                case 17:
                    Object f11 = a4.f(obj, j10);
                    if (f11 != null) {
                        i14 = f11.hashCode();
                    }
                    i11 = (i11 * 53) + i14;
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
                    floatToIntBits = a4.f(obj, j10).hashCode();
                    i11 = i10 + floatToIntBits;
                    break;
                case 50:
                    i10 = i11 * 53;
                    floatToIntBits = a4.f(obj, j10).hashCode();
                    i11 = i10 + floatToIntBits;
                    break;
                case 51:
                    if (p(obj, i13, i12)) {
                        i10 = i11 * 53;
                        doubleToLongBits = Double.doubleToLongBits(((Double) a4.f(obj, j10)).doubleValue());
                        byte[] bArr7 = f2.f6011d;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (p(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = Float.floatToIntBits(((Float) a4.f(obj, j10)).floatValue());
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (p(obj, i13, i12)) {
                        i10 = i11 * 53;
                        doubleToLongBits = y(obj, j10);
                        byte[] bArr8 = f2.f6011d;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (p(obj, i13, i12)) {
                        i10 = i11 * 53;
                        doubleToLongBits = y(obj, j10);
                        byte[] bArr9 = f2.f6011d;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (p(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = t(obj, j10);
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (p(obj, i13, i12)) {
                        i10 = i11 * 53;
                        doubleToLongBits = y(obj, j10);
                        byte[] bArr10 = f2.f6011d;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (p(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = t(obj, j10);
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (p(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = f2.a(((Boolean) a4.f(obj, j10)).booleanValue());
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (p(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = ((String) a4.f(obj, j10)).hashCode();
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                    if (p(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = a4.f(obj, j10).hashCode();
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (p(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = a4.f(obj, j10).hashCode();
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (p(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = t(obj, j10);
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (p(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = t(obj, j10);
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (p(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = t(obj, j10);
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (p(obj, i13, i12)) {
                        i10 = i11 * 53;
                        doubleToLongBits = y(obj, j10);
                        byte[] bArr11 = f2.f6011d;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (p(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = t(obj, j10);
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (p(obj, i13, i12)) {
                        i10 = i11 * 53;
                        doubleToLongBits = y(obj, j10);
                        byte[] bArr12 = f2.f6011d;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (p(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = a4.f(obj, j10).hashCode();
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
            }
        }
        return (i11 * 53) + this.f5991j.a(obj).hashCode();
    }

    @Override // com.google.android.gms.internal.auth.k3
    public final void d(Object obj, byte[] bArr, int i10, int i11, d1 d1Var) {
        q(obj, bArr, i10, i11, 0, d1Var);
    }

    @Override // com.google.android.gms.internal.auth.k3
    public final void e(Object obj, Object obj2) {
        F(obj);
        obj2.getClass();
        for (int i10 = 0; i10 < this.f5982a.length; i10 += 3) {
            int x10 = x(i10);
            int i11 = this.f5982a[i10];
            long j10 = 1048575 & x10;
            switch (w(x10)) {
                case 0:
                    if (l(obj2, i10)) {
                        a4.l(obj, j10, a4.a(obj2, j10));
                        I(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (l(obj2, i10)) {
                        a4.m(obj, j10, a4.b(obj2, j10));
                        I(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (l(obj2, i10)) {
                        a4.o(obj, j10, a4.d(obj2, j10));
                        I(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (l(obj2, i10)) {
                        a4.o(obj, j10, a4.d(obj2, j10));
                        I(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (l(obj2, i10)) {
                        a4.n(obj, j10, a4.c(obj2, j10));
                        I(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (l(obj2, i10)) {
                        a4.o(obj, j10, a4.d(obj2, j10));
                        I(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (l(obj2, i10)) {
                        a4.n(obj, j10, a4.c(obj2, j10));
                        I(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (l(obj2, i10)) {
                        a4.k(obj, j10, a4.t(obj2, j10));
                        I(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (l(obj2, i10)) {
                        a4.p(obj, j10, a4.f(obj2, j10));
                        I(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    G(obj, obj2, i10);
                    break;
                case 10:
                    if (l(obj2, i10)) {
                        a4.p(obj, j10, a4.f(obj2, j10));
                        I(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (l(obj2, i10)) {
                        a4.n(obj, j10, a4.c(obj2, j10));
                        I(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (l(obj2, i10)) {
                        a4.n(obj, j10, a4.c(obj2, j10));
                        I(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (l(obj2, i10)) {
                        a4.n(obj, j10, a4.c(obj2, j10));
                        I(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (l(obj2, i10)) {
                        a4.o(obj, j10, a4.d(obj2, j10));
                        I(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (l(obj2, i10)) {
                        a4.n(obj, j10, a4.c(obj2, j10));
                        I(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (l(obj2, i10)) {
                        a4.o(obj, j10, a4.d(obj2, j10));
                        I(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    G(obj, obj2, i10);
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
                    this.f5990i.b(obj, obj2, j10);
                    break;
                case 50:
                    int i12 = m3.f6117d;
                    a4.p(obj, j10, t2.a(a4.f(obj, j10), a4.f(obj2, j10)));
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
                    if (p(obj2, i11, i10)) {
                        a4.p(obj, j10, a4.f(obj2, j10));
                        b(obj, i11, i10);
                        break;
                    } else {
                        break;
                    }
                case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                    H(obj, obj2, i10);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (p(obj2, i11, i10)) {
                        a4.p(obj, j10, a4.f(obj2, j10));
                        b(obj, i11, i10);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    H(obj, obj2, i10);
                    break;
            }
        }
        m3.c(this.f5991j, obj, obj2);
    }

    @Override // com.google.android.gms.internal.auth.k3
    public final boolean f(Object obj) {
        int i10;
        int i11;
        int i12 = 0;
        int i13 = 0;
        int i14 = 1048575;
        while (i13 < this.f5988g) {
            int i15 = this.f5987f[i13];
            int i16 = this.f5982a[i15];
            int x10 = x(i15);
            int i17 = this.f5982a[i15 + 2];
            int i18 = i17 & 1048575;
            int i19 = 1 << (i17 >>> 20);
            if (i18 != i14) {
                if (i18 != 1048575) {
                    i12 = f5981o.getInt(obj, i18);
                }
                i11 = i12;
                i10 = i18;
            } else {
                i10 = i14;
                i11 = i12;
            }
            if ((268435456 & x10) != 0 && !m(obj, i15, i10, i11, i19)) {
                return false;
            }
            int w10 = w(x10);
            if (w10 != 9 && w10 != 17) {
                if (w10 != 27) {
                    if (w10 != 60 && w10 != 68) {
                        if (w10 != 49) {
                            if (w10 == 50 && !((s2) a4.f(obj, x10 & 1048575)).isEmpty()) {
                                android.support.v4.media.session.b.a(B(i15));
                                throw null;
                            }
                        }
                    } else if (p(obj, i16, i15) && !n(obj, x10, A(i15))) {
                        return false;
                    }
                }
                List list = (List) a4.f(obj, x10 & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    k3 A = A(i15);
                    for (int i20 = 0; i20 < list.size(); i20++) {
                        if (!A.f(list.get(i20))) {
                            return false;
                        }
                    }
                    continue;
                }
            } else if (m(obj, i15, i10, i11, i19) && !n(obj, x10, A(i15))) {
                return false;
            }
            i13++;
            i14 = i10;
            i12 = i11;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.auth.k3
    public final Object g() {
        return ((b2) this.f5986e).c();
    }

    @Override // com.google.android.gms.internal.auth.k3
    public final boolean h(Object obj, Object obj2) {
        boolean e10;
        int length = this.f5982a.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int x10 = x(i10);
            long j10 = x10 & 1048575;
            switch (w(x10)) {
                case 0:
                    if (k(obj, obj2, i10) && Double.doubleToLongBits(a4.a(obj, j10)) == Double.doubleToLongBits(a4.a(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (k(obj, obj2, i10) && Float.floatToIntBits(a4.b(obj, j10)) == Float.floatToIntBits(a4.b(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (k(obj, obj2, i10) && a4.d(obj, j10) == a4.d(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (k(obj, obj2, i10) && a4.d(obj, j10) == a4.d(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (k(obj, obj2, i10) && a4.c(obj, j10) == a4.c(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (k(obj, obj2, i10) && a4.d(obj, j10) == a4.d(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (k(obj, obj2, i10) && a4.c(obj, j10) == a4.c(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (k(obj, obj2, i10) && a4.t(obj, j10) == a4.t(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (k(obj, obj2, i10) && m3.e(a4.f(obj, j10), a4.f(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (k(obj, obj2, i10) && m3.e(a4.f(obj, j10), a4.f(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (k(obj, obj2, i10) && m3.e(a4.f(obj, j10), a4.f(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (k(obj, obj2, i10) && a4.c(obj, j10) == a4.c(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (k(obj, obj2, i10) && a4.c(obj, j10) == a4.c(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (k(obj, obj2, i10) && a4.c(obj, j10) == a4.c(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (k(obj, obj2, i10) && a4.d(obj, j10) == a4.d(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (k(obj, obj2, i10) && a4.c(obj, j10) == a4.c(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (k(obj, obj2, i10) && a4.d(obj, j10) == a4.d(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (k(obj, obj2, i10) && m3.e(a4.f(obj, j10), a4.f(obj2, j10))) {
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
                    e10 = m3.e(a4.f(obj, j10), a4.f(obj2, j10));
                    break;
                case 50:
                    e10 = m3.e(a4.f(obj, j10), a4.f(obj2, j10));
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
                    long u10 = u(i10) & 1048575;
                    if (a4.c(obj, u10) == a4.c(obj2, u10) && m3.e(a4.f(obj, j10), a4.f(obj2, j10))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!e10) {
                return false;
            }
        }
        if (!this.f5991j.a(obj).equals(this.f5991j.a(obj2))) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0520, code lost:
        r9 = r5;
        r7 = r14;
        r8 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:491:0x0aa6, code lost:
        if (r6 == 1048575) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:492:0x0aa8, code lost:
        r36.putInt(r7, r6, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:493:0x0aae, code lost:
        r2 = r38.f5988g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:495:0x0ab2, code lost:
        if (r2 >= r38.f5989h) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:496:0x0ab4, code lost:
        r3 = r38.f5987f[r2];
        r5 = r38.f5982a[r3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:497:0x0ac9, code lost:
        if (com.google.android.gms.internal.auth.a4.f(r7, x(r3) & 1048575) != null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:499:0x0acc, code lost:
        z(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:500:0x0acf, code lost:
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:501:0x0ad2, code lost:
        if (r9 != 0) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:502:0x0ad4, code lost:
        if (r1 != r12) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:505:0x0adb, code lost:
        throw com.google.android.gms.internal.auth.g2.d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:506:0x0adc, code lost:
        if (r1 > r12) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:507:0x0ade, code lost:
        if (r4 != r9) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:508:0x0ae0, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:510:0x0ae5, code lost:
        throw com.google.android.gms.internal.auth.g2.d();
     */
    /* JADX WARN: Removed duplicated region for block: B:258:0x059c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x05ea  */
    /* JADX WARN: Removed duplicated region for block: B:567:0x0057 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01ba  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:256:0x0599 -> B:257:0x059a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:276:0x05e7 -> B:277:0x05e8). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int q(java.lang.Object r39, byte[] r40, int r41, int r42, int r43, com.google.android.gms.internal.auth.d1 r44) {
        /*
            Method dump skipped, instructions count: 2934
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.c3.q(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.auth.d1):int");
    }
}
