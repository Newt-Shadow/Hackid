package com.google.android.gms.internal.measurement;

import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.KotlinVersion;
import org.apache.tika.pipes.PipesConfigBase;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class lc implements tc {

    /* renamed from: l  reason: collision with root package name */
    private static final int[] f6490l = new int[0];

    /* renamed from: m  reason: collision with root package name */
    private static final Unsafe f6491m = ld.v();

    /* renamed from: a  reason: collision with root package name */
    private final int[] f6492a;

    /* renamed from: b  reason: collision with root package name */
    private final Object[] f6493b;

    /* renamed from: c  reason: collision with root package name */
    private final int f6494c;

    /* renamed from: d  reason: collision with root package name */
    private final int f6495d;

    /* renamed from: e  reason: collision with root package name */
    private final ic f6496e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f6497f = false;

    /* renamed from: g  reason: collision with root package name */
    private final int[] f6498g;

    /* renamed from: h  reason: collision with root package name */
    private final int f6499h;

    /* renamed from: i  reason: collision with root package name */
    private final int f6500i;

    /* renamed from: j  reason: collision with root package name */
    private final ed f6501j;

    /* renamed from: k  reason: collision with root package name */
    private final va f6502k;

    private lc(int[] iArr, Object[] objArr, int i10, int i11, ic icVar, boolean z10, int[] iArr2, int i12, int i13, nc ncVar, tb tbVar, ed edVar, va vaVar, dc dcVar) {
        this.f6492a = iArr;
        this.f6493b = objArr;
        this.f6494c = i10;
        this.f6495d = i11;
        this.f6498g = iArr2;
        this.f6499h = i12;
        this.f6500i = i13;
        this.f6501j = edVar;
        this.f6502k = vaVar;
        this.f6496e = icVar;
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
    public static com.google.android.gms.internal.measurement.lc A(java.lang.Class r34, com.google.android.gms.internal.measurement.fc r35, com.google.android.gms.internal.measurement.nc r36, com.google.android.gms.internal.measurement.tb r37, com.google.android.gms.internal.measurement.ed r38, com.google.android.gms.internal.measurement.va r39, com.google.android.gms.internal.measurement.dc r40) {
        /*
            Method dump skipped, instructions count: 1045
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.lc.A(java.lang.Class, com.google.android.gms.internal.measurement.fc, com.google.android.gms.internal.measurement.nc, com.google.android.gms.internal.measurement.tb, com.google.android.gms.internal.measurement.ed, com.google.android.gms.internal.measurement.va, com.google.android.gms.internal.measurement.dc):com.google.android.gms.internal.measurement.lc");
    }

    private static Field B(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e10) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 11 + name.length() + 29 + String.valueOf(arrays).length());
            sb2.append("Field ");
            sb2.append(str);
            sb2.append(" for ");
            sb2.append(name);
            sb2.append(" not found. Known fields are ");
            sb2.append(arrays);
            throw new RuntimeException(sb2.toString(), e10);
        }
    }

    private final void C(Object obj, Object obj2, int i10) {
        if (!r(obj2, i10)) {
            return;
        }
        Unsafe unsafe = f6491m;
        long M = M(i10) & 1048575;
        Object object = unsafe.getObject(obj2, M);
        if (object != null) {
            tc E = E(i10);
            if (!r(obj, i10)) {
                if (!i(object)) {
                    unsafe.putObject(obj, M, object);
                } else {
                    Object zza = E.zza();
                    E.c(zza, object);
                    unsafe.putObject(obj, M, zza);
                }
                s(obj, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, M);
            if (!i(object2)) {
                Object zza2 = E.zza();
                E.c(zza2, object2);
                unsafe.putObject(obj, M, zza2);
                object2 = zza2;
            }
            E.c(object2, object);
            return;
        }
        int i11 = this.f6492a[i10];
        String obj3 = obj2.toString();
        StringBuilder sb2 = new StringBuilder(String.valueOf(i11).length() + 38 + obj3.length());
        sb2.append("Source subfield ");
        sb2.append(i11);
        sb2.append(" is present but null: ");
        sb2.append(obj3);
        throw new IllegalStateException(sb2.toString());
    }

    private final void D(Object obj, Object obj2, int i10) {
        int[] iArr = this.f6492a;
        int i11 = iArr[i10];
        if (!t(obj2, i11, i10)) {
            return;
        }
        Unsafe unsafe = f6491m;
        long M = M(i10) & 1048575;
        Object object = unsafe.getObject(obj2, M);
        if (object != null) {
            tc E = E(i10);
            if (!t(obj, i11, i10)) {
                if (!i(object)) {
                    unsafe.putObject(obj, M, object);
                } else {
                    Object zza = E.zza();
                    E.c(zza, object);
                    unsafe.putObject(obj, M, zza);
                }
                u(obj, i11, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, M);
            if (!i(object2)) {
                Object zza2 = E.zza();
                E.c(zza2, object2);
                unsafe.putObject(obj, M, zza2);
                object2 = zza2;
            }
            E.c(object2, object);
            return;
        }
        int i12 = iArr[i10];
        String obj3 = obj2.toString();
        StringBuilder sb2 = new StringBuilder(String.valueOf(i12).length() + 38 + obj3.length());
        sb2.append("Source subfield ");
        sb2.append(i12);
        sb2.append(" is present but null: ");
        sb2.append(obj3);
        throw new IllegalStateException(sb2.toString());
    }

    private final tc E(int i10) {
        Object[] objArr = this.f6493b;
        int i11 = i10 / 3;
        int i12 = i11 + i11;
        tc tcVar = (tc) objArr[i12];
        if (tcVar != null) {
            return tcVar;
        }
        tc b10 = qc.a().b((Class) objArr[i12 + 1]);
        objArr[i12] = b10;
        return b10;
    }

    private final Object F(int i10) {
        int i11 = i10 / 3;
        return this.f6493b[i11 + i11];
    }

    private final kb G(int i10) {
        int i11 = i10 / 3;
        return (kb) this.f6493b[i11 + i11 + 1];
    }

    private final Object H(Object obj, int i10) {
        tc E = E(i10);
        int M = M(i10) & 1048575;
        if (!r(obj, i10)) {
            return E.zza();
        }
        Object object = f6491m.getObject(obj, M);
        if (i(object)) {
            return object;
        }
        Object zza = E.zza();
        if (object != null) {
            E.c(zza, object);
        }
        return zza;
    }

    private final void I(Object obj, int i10, Object obj2) {
        f6491m.putObject(obj, M(i10) & 1048575, obj2);
        s(obj, i10);
    }

    private final Object J(Object obj, int i10, int i11) {
        tc E = E(i11);
        if (!t(obj, i10, i11)) {
            return E.zza();
        }
        Object object = f6491m.getObject(obj, M(i11) & 1048575);
        if (i(object)) {
            return object;
        }
        Object zza = E.zza();
        if (object != null) {
            E.c(zza, object);
        }
        return zza;
    }

    private final void K(Object obj, int i10, int i11, Object obj2) {
        f6491m.putObject(obj, M(i11) & 1048575, obj2);
        u(obj, i10, i11);
    }

    private static boolean L(Object obj, int i10, tc tcVar) {
        return tcVar.b(ld.s(obj, i10 & 1048575));
    }

    private final int M(int i10) {
        return this.f6492a[i10 + 1];
    }

    private final int N(int i10) {
        return this.f6492a[i10 + 2];
    }

    private static int O(int i10) {
        return (i10 >>> 20) & KotlinVersion.MAX_COMPONENT_VALUE;
    }

    private static boolean i(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof hb) {
            return ((hb) obj).j();
        }
        return true;
    }

    private static void j(Object obj) {
        if (i(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
    }

    private static double k(Object obj, long j10) {
        return ((Double) ld.s(obj, j10)).doubleValue();
    }

    private static float l(Object obj, long j10) {
        return ((Float) ld.s(obj, j10)).floatValue();
    }

    private static int m(Object obj, long j10) {
        return ((Integer) ld.s(obj, j10)).intValue();
    }

    private static long n(Object obj, long j10) {
        return ((Long) ld.s(obj, j10)).longValue();
    }

    private static boolean o(Object obj, long j10) {
        return ((Boolean) ld.s(obj, j10)).booleanValue();
    }

    private final boolean p(Object obj, Object obj2, int i10) {
        if (r(obj, i10) == r(obj2, i10)) {
            return true;
        }
        return false;
    }

    private final boolean q(Object obj, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return r(obj, i10);
        }
        if ((i12 & i13) != 0) {
            return true;
        }
        return false;
    }

    private final boolean r(Object obj, int i10) {
        int N = N(i10);
        long j10 = N & 1048575;
        if (j10 == 1048575) {
            int M = M(i10);
            long j11 = M & 1048575;
            switch (O(M)) {
                case 0:
                    if (Double.doubleToRawLongBits(ld.q(obj, j11)) == 0) {
                        return false;
                    }
                    return true;
                case 1:
                    if (Float.floatToRawIntBits(ld.o(obj, j11)) == 0) {
                        return false;
                    }
                    return true;
                case 2:
                    if (ld.k(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (ld.k(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (ld.i(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (ld.k(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (ld.i(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return ld.m(obj, j11);
                case 8:
                    Object s10 = ld.s(obj, j11);
                    if (s10 instanceof String) {
                        if (((String) s10).isEmpty()) {
                            return false;
                        }
                        return true;
                    } else if (s10 instanceof ka) {
                        if (ka.f6472b.equals(s10)) {
                            return false;
                        }
                        return true;
                    } else {
                        throw new IllegalArgumentException();
                    }
                case 9:
                    if (ld.s(obj, j11) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    if (ka.f6472b.equals(ld.s(obj, j11))) {
                        return false;
                    }
                    return true;
                case 11:
                    if (ld.i(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (ld.i(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (ld.i(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (ld.k(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (ld.i(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (ld.k(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (ld.s(obj, j11) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((ld.i(obj, j10) & (1 << (N >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    private final void s(Object obj, int i10) {
        int N = N(i10);
        long j10 = 1048575 & N;
        if (j10 == 1048575) {
            return;
        }
        ld.j(obj, j10, (1 << (N >>> 20)) | ld.i(obj, j10));
    }

    private final boolean t(Object obj, int i10, int i11) {
        if (ld.i(obj, N(i11) & 1048575) == i10) {
            return true;
        }
        return false;
    }

    private final void u(Object obj, int i10, int i11) {
        ld.j(obj, N(i11) & 1048575, i10);
    }

    private final int v(int i10, int i11) {
        int[] iArr = this.f6492a;
        int length = (iArr.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int i14 = iArr[i13];
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

    private static final int w(byte[] bArr, int i10, int i11, pd pdVar, Class cls, y9 y9Var) {
        int i12;
        boolean z10;
        pd pdVar2 = pd.f6670c;
        switch (pdVar.ordinal()) {
            case 0:
                i12 = i10 + 8;
                y9Var.f6896c = Double.valueOf(Double.longBitsToDouble(z9.e(bArr, i10)));
                break;
            case 1:
                i12 = i10 + 4;
                y9Var.f6896c = Float.valueOf(Float.intBitsToFloat(z9.d(bArr, i10)));
                break;
            case 2:
            case 3:
                int c10 = z9.c(bArr, i10, y9Var);
                y9Var.f6896c = Long.valueOf(y9Var.f6895b);
                return c10;
            case 4:
            case 12:
            case 13:
                int a10 = z9.a(bArr, i10, y9Var);
                y9Var.f6896c = Integer.valueOf(y9Var.f6894a);
                return a10;
            case 5:
            case 15:
                i12 = i10 + 8;
                y9Var.f6896c = Long.valueOf(z9.e(bArr, i10));
                break;
            case 6:
            case 14:
                i12 = i10 + 4;
                y9Var.f6896c = Integer.valueOf(z9.d(bArr, i10));
                break;
            case 7:
                int c11 = z9.c(bArr, i10, y9Var);
                if (y9Var.f6895b != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                y9Var.f6896c = Boolean.valueOf(z10);
                return c11;
            case 8:
                return z9.f(bArr, i10, y9Var);
            case 9:
            default:
                throw new RuntimeException("unsupported field type.");
            case 10:
                return z9.h(qc.a().b(cls), bArr, i10, i11, y9Var);
            case 11:
                return z9.g(bArr, i10, y9Var);
            case 16:
                int a11 = z9.a(bArr, i10, y9Var);
                y9Var.f6896c = Integer.valueOf(ma.a(y9Var.f6894a));
                return a11;
            case 17:
                int c12 = z9.c(bArr, i10, y9Var);
                y9Var.f6896c = Long.valueOf(ma.b(y9Var.f6895b));
                return c12;
        }
        return i12;
    }

    private static final void x(int i10, Object obj, rd rdVar) {
        if (obj instanceof String) {
            rdVar.z(i10, (String) obj);
        } else {
            rdVar.k(i10, (ka) obj);
        }
    }

    static fd y(Object obj) {
        hb hbVar = (hb) obj;
        fd fdVar = hbVar.zzc;
        if (fdVar == fd.a()) {
            fd b10 = fd.b();
            hbVar.zzc = b10;
            return b10;
        }
        return fdVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.tc
    public final int a(Object obj) {
        int i10;
        int i11;
        int i12;
        int E;
        int E2;
        int E3;
        int a10;
        int E4;
        int E5;
        int i13;
        int E6;
        int E7;
        int t10;
        int size;
        int E8;
        int E9;
        int E10;
        int C;
        int E11;
        int E12;
        int i14;
        Unsafe unsafe = f6491m;
        boolean z10 = 0;
        int i15 = 1048575;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 1048575;
        while (true) {
            int[] iArr = this.f6492a;
            if (i17 < iArr.length) {
                int M = M(i17);
                int O = O(M);
                int i20 = iArr[i17];
                int i21 = iArr[i17 + 2];
                int i22 = i21 & i15;
                if (O <= 17) {
                    if (i22 != i19) {
                        i16 = i22 == i15 ? z10 : unsafe.getInt(obj, i22);
                        i19 = i22;
                    }
                    i10 = i19;
                    i11 = i16;
                    i12 = 1 << (i21 >>> 20);
                } else {
                    i10 = i19;
                    i11 = i16;
                    i12 = z10;
                }
                int i23 = M & i15;
                if (O >= ab.K.zza()) {
                    ab.X.zza();
                }
                long j10 = i23;
                switch (O) {
                    case 0:
                        if (q(obj, i17, i10, i11, i12)) {
                            E = pa.E(i20 << 3);
                            E7 = E + 8;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (q(obj, i17, i10, i11, i12)) {
                            E2 = pa.E(i20 << 3);
                            E7 = E2 + 4;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (q(obj, i17, i10, i11, i12)) {
                            long j11 = unsafe.getLong(obj, j10);
                            E3 = pa.E(i20 << 3);
                            a10 = pa.a(j11);
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (q(obj, i17, i10, i11, i12)) {
                            long j12 = unsafe.getLong(obj, j10);
                            E3 = pa.E(i20 << 3);
                            a10 = pa.a(j12);
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (q(obj, i17, i10, i11, i12)) {
                            E3 = pa.E(i20 << 3);
                            a10 = pa.a(unsafe.getInt(obj, j10));
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (q(obj, i17, i10, i11, i12)) {
                            E = pa.E(i20 << 3);
                            E7 = E + 8;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (q(obj, i17, i10, i11, i12)) {
                            E2 = pa.E(i20 << 3);
                            E7 = E2 + 4;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (q(obj, i17, i10, i11, i12)) {
                            E4 = pa.E(i20 << 3);
                            E7 = E4 + 1;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (!q(obj, i17, i10, i11, i12)) {
                            break;
                        } else {
                            int i24 = i20 << 3;
                            Object object = unsafe.getObject(obj, j10);
                            if (object instanceof ka) {
                                E5 = pa.E(i24);
                                i13 = ((ka) object).i();
                                E6 = pa.E(i13);
                                E7 = E5 + E6 + i13;
                                i18 += E7;
                                break;
                            } else {
                                E3 = pa.E(i24);
                                a10 = pa.b((String) object);
                                E7 = E3 + a10;
                                i18 += E7;
                            }
                        }
                    case 9:
                        if (q(obj, i17, i10, i11, i12)) {
                            E7 = vc.E(i20, unsafe.getObject(obj, j10), E(i17));
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (q(obj, i17, i10, i11, i12)) {
                            E5 = pa.E(i20 << 3);
                            i13 = ((ka) unsafe.getObject(obj, j10)).i();
                            E6 = pa.E(i13);
                            E7 = E5 + E6 + i13;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (q(obj, i17, i10, i11, i12)) {
                            int i25 = unsafe.getInt(obj, j10);
                            E3 = pa.E(i20 << 3);
                            a10 = pa.E(i25);
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (q(obj, i17, i10, i11, i12)) {
                            E3 = pa.E(i20 << 3);
                            a10 = pa.a(unsafe.getInt(obj, j10));
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (q(obj, i17, i10, i11, i12)) {
                            E2 = pa.E(i20 << 3);
                            E7 = E2 + 4;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (q(obj, i17, i10, i11, i12)) {
                            E = pa.E(i20 << 3);
                            E7 = E + 8;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (q(obj, i17, i10, i11, i12)) {
                            int i26 = unsafe.getInt(obj, j10);
                            E3 = pa.E(i20 << 3);
                            a10 = pa.E((i26 >> 31) ^ (i26 + i26));
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (q(obj, i17, i10, i11, i12)) {
                            long j13 = unsafe.getLong(obj, j10);
                            E3 = pa.E(i20 << 3);
                            a10 = pa.a((j13 >> 63) ^ (j13 + j13));
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (q(obj, i17, i10, i11, i12)) {
                            E7 = pa.g(i20, (ic) unsafe.getObject(obj, j10), E(i17));
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        E7 = vc.D(i20, (List) unsafe.getObject(obj, j10), z10);
                        i18 += E7;
                        break;
                    case C1415p9.C /* 19 */:
                        E7 = vc.B(i20, (List) unsafe.getObject(obj, j10), z10);
                        i18 += E7;
                        break;
                    case 20:
                        List list = (List) unsafe.getObject(obj, j10);
                        int i27 = vc.f6852b;
                        if (list.size() != 0) {
                            t10 = vc.t(list) + (list.size() * pa.E(i20 << 3));
                            i18 += t10;
                            break;
                        }
                        t10 = z10;
                        i18 += t10;
                    case 21:
                        List list2 = (List) unsafe.getObject(obj, j10);
                        int i28 = vc.f6852b;
                        size = list2.size();
                        if (size != 0) {
                            E3 = vc.u(list2);
                            E8 = pa.E(i20 << 3);
                            a10 = size * E8;
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        }
                        E7 = z10;
                        i18 += E7;
                    case Build.API_LEVELS.API_22 /* 22 */:
                        List list3 = (List) unsafe.getObject(obj, j10);
                        int i29 = vc.f6852b;
                        size = list3.size();
                        if (size != 0) {
                            E3 = vc.x(list3);
                            E8 = pa.E(i20 << 3);
                            a10 = size * E8;
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        }
                        E7 = z10;
                        i18 += E7;
                    case Build.API_LEVELS.API_23 /* 23 */:
                        E7 = vc.D(i20, (List) unsafe.getObject(obj, j10), z10);
                        i18 += E7;
                        break;
                    case Build.API_LEVELS.API_24 /* 24 */:
                        E7 = vc.B(i20, (List) unsafe.getObject(obj, j10), z10);
                        i18 += E7;
                        break;
                    case 25:
                        int i30 = vc.f6852b;
                        int size2 = ((List) unsafe.getObject(obj, j10)).size();
                        if (size2 != 0) {
                            E7 = size2 * (pa.E(i20 << 3) + 1);
                            i18 += E7;
                            break;
                        }
                        E7 = z10;
                        i18 += E7;
                    case 26:
                        List list4 = (List) unsafe.getObject(obj, j10);
                        int i31 = vc.f6852b;
                        int size3 = list4.size();
                        if (size3 != 0) {
                            t10 = pa.E(i20 << 3) * size3;
                            if (list4 instanceof sb) {
                                sb sbVar = (sb) list4;
                                for (int i32 = z10; i32 < size3; i32++) {
                                    Object f10 = sbVar.f();
                                    if (f10 instanceof ka) {
                                        int i33 = ((ka) f10).i();
                                        t10 += pa.E(i33) + i33;
                                    } else {
                                        t10 += pa.b((String) f10);
                                    }
                                }
                            } else {
                                for (int i34 = z10; i34 < size3; i34++) {
                                    Object obj2 = list4.get(i34);
                                    if (obj2 instanceof ka) {
                                        int i35 = ((ka) obj2).i();
                                        t10 += pa.E(i35) + i35;
                                    } else {
                                        t10 += pa.b((String) obj2);
                                    }
                                }
                            }
                            i18 += t10;
                            break;
                        }
                        t10 = z10;
                        i18 += t10;
                    case 27:
                        List list5 = (List) unsafe.getObject(obj, j10);
                        tc E13 = E(i17);
                        int i36 = vc.f6852b;
                        int size4 = list5.size();
                        if (size4 == 0) {
                            E9 = z10;
                        } else {
                            E9 = pa.E(i20 << 3) * size4;
                            for (int i37 = z10; i37 < size4; i37++) {
                                E9 += pa.d((ic) list5.get(i37), E13);
                            }
                        }
                        i18 += E9;
                        break;
                    case Build.API_LEVELS.API_28 /* 28 */:
                        List list6 = (List) unsafe.getObject(obj, j10);
                        int i38 = vc.f6852b;
                        int size5 = list6.size();
                        if (size5 == 0) {
                            E10 = z10;
                        } else {
                            E10 = size5 * pa.E(i20 << 3);
                            for (int i39 = z10; i39 < list6.size(); i39++) {
                                int i40 = ((ka) list6.get(i39)).i();
                                E10 += pa.E(i40) + i40;
                            }
                        }
                        i18 += E10;
                        break;
                    case 29:
                        List list7 = (List) unsafe.getObject(obj, j10);
                        int i41 = vc.f6852b;
                        size = list7.size();
                        if (size != 0) {
                            E3 = vc.y(list7);
                            E8 = pa.E(i20 << 3);
                            a10 = size * E8;
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        }
                        E7 = z10;
                        i18 += E7;
                    case Build.API_LEVELS.API_30 /* 30 */:
                        List list8 = (List) unsafe.getObject(obj, j10);
                        int i42 = vc.f6852b;
                        size = list8.size();
                        if (size != 0) {
                            E3 = vc.w(list8);
                            E8 = pa.E(i20 << 3);
                            a10 = size * E8;
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        }
                        E7 = z10;
                        i18 += E7;
                    case Build.API_LEVELS.API_31 /* 31 */:
                        E7 = vc.B(i20, (List) unsafe.getObject(obj, j10), z10);
                        i18 += E7;
                        break;
                    case Build.API_LEVELS.API_32 /* 32 */:
                        E7 = vc.D(i20, (List) unsafe.getObject(obj, j10), z10);
                        i18 += E7;
                        break;
                    case Build.API_LEVELS.API_33 /* 33 */:
                        List list9 = (List) unsafe.getObject(obj, j10);
                        int i43 = vc.f6852b;
                        size = list9.size();
                        if (size != 0) {
                            E3 = vc.z(list9);
                            E8 = pa.E(i20 << 3);
                            a10 = size * E8;
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        }
                        E7 = z10;
                        i18 += E7;
                    case Build.API_LEVELS.API_34 /* 34 */:
                        List list10 = (List) unsafe.getObject(obj, j10);
                        int i44 = vc.f6852b;
                        size = list10.size();
                        if (size != 0) {
                            E3 = vc.v(list10);
                            E8 = pa.E(i20 << 3);
                            a10 = size * E8;
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        }
                        E7 = z10;
                        i18 += E7;
                    case 35:
                        C = vc.C((List) unsafe.getObject(obj, j10));
                        if (C > 0) {
                            E11 = pa.E(i20 << 3);
                            E12 = pa.E(C);
                            E10 = E11 + E12 + C;
                            i18 += E10;
                            break;
                        } else {
                            break;
                        }
                    case Build.API_LEVELS.API_36 /* 36 */:
                        C = vc.A((List) unsafe.getObject(obj, j10));
                        if (C > 0) {
                            E11 = pa.E(i20 << 3);
                            E12 = pa.E(C);
                            E10 = E11 + E12 + C;
                            i18 += E10;
                            break;
                        } else {
                            break;
                        }
                    case 37:
                        C = vc.t((List) unsafe.getObject(obj, j10));
                        if (C > 0) {
                            E11 = pa.E(i20 << 3);
                            E12 = pa.E(C);
                            E10 = E11 + E12 + C;
                            i18 += E10;
                            break;
                        } else {
                            break;
                        }
                    case C1415p9.K /* 38 */:
                        C = vc.u((List) unsafe.getObject(obj, j10));
                        if (C > 0) {
                            E11 = pa.E(i20 << 3);
                            E12 = pa.E(C);
                            E10 = E11 + E12 + C;
                            i18 += E10;
                            break;
                        } else {
                            break;
                        }
                    case 39:
                        C = vc.x((List) unsafe.getObject(obj, j10));
                        if (C > 0) {
                            E11 = pa.E(i20 << 3);
                            E12 = pa.E(C);
                            E10 = E11 + E12 + C;
                            i18 += E10;
                            break;
                        } else {
                            break;
                        }
                    case C1415p9.L /* 40 */:
                        C = vc.C((List) unsafe.getObject(obj, j10));
                        if (C > 0) {
                            E11 = pa.E(i20 << 3);
                            E12 = pa.E(C);
                            E10 = E11 + E12 + C;
                            i18 += E10;
                            break;
                        } else {
                            break;
                        }
                    case 41:
                        C = vc.A((List) unsafe.getObject(obj, j10));
                        if (C > 0) {
                            E11 = pa.E(i20 << 3);
                            E12 = pa.E(C);
                            E10 = E11 + E12 + C;
                            i18 += E10;
                            break;
                        } else {
                            break;
                        }
                    case C1415p9.M /* 42 */:
                        int i45 = vc.f6852b;
                        C = ((List) unsafe.getObject(obj, j10)).size();
                        if (C > 0) {
                            E11 = pa.E(i20 << 3);
                            E12 = pa.E(C);
                            E10 = E11 + E12 + C;
                            i18 += E10;
                            break;
                        } else {
                            break;
                        }
                    case 43:
                        C = vc.y((List) unsafe.getObject(obj, j10));
                        if (C > 0) {
                            E11 = pa.E(i20 << 3);
                            E12 = pa.E(C);
                            E10 = E11 + E12 + C;
                            i18 += E10;
                            break;
                        } else {
                            break;
                        }
                    case 44:
                        C = vc.w((List) unsafe.getObject(obj, j10));
                        if (C > 0) {
                            E11 = pa.E(i20 << 3);
                            E12 = pa.E(C);
                            E10 = E11 + E12 + C;
                            i18 += E10;
                            break;
                        } else {
                            break;
                        }
                    case 45:
                        C = vc.A((List) unsafe.getObject(obj, j10));
                        if (C > 0) {
                            E11 = pa.E(i20 << 3);
                            E12 = pa.E(C);
                            E10 = E11 + E12 + C;
                            i18 += E10;
                            break;
                        } else {
                            break;
                        }
                    case 46:
                        C = vc.C((List) unsafe.getObject(obj, j10));
                        if (C > 0) {
                            E11 = pa.E(i20 << 3);
                            E12 = pa.E(C);
                            E10 = E11 + E12 + C;
                            i18 += E10;
                            break;
                        } else {
                            break;
                        }
                    case 47:
                        C = vc.z((List) unsafe.getObject(obj, j10));
                        if (C > 0) {
                            E11 = pa.E(i20 << 3);
                            E12 = pa.E(C);
                            E10 = E11 + E12 + C;
                            i18 += E10;
                            break;
                        } else {
                            break;
                        }
                    case 48:
                        C = vc.v((List) unsafe.getObject(obj, j10));
                        if (C > 0) {
                            E11 = pa.E(i20 << 3);
                            E12 = pa.E(C);
                            E10 = E11 + E12 + C;
                            i18 += E10;
                            break;
                        } else {
                            break;
                        }
                    case 49:
                        List list11 = (List) unsafe.getObject(obj, j10);
                        tc E14 = E(i17);
                        int i46 = vc.f6852b;
                        int size6 = list11.size();
                        if (size6 == 0) {
                            i14 = z10;
                        } else {
                            int i47 = z10;
                            i14 = i47;
                            while (i47 < size6) {
                                i14 += pa.g(i20, (ic) list11.get(i47), E14);
                                i47++;
                            }
                        }
                        i18 += i14;
                        break;
                    case 50:
                        cc ccVar = (cc) unsafe.getObject(obj, j10);
                        bc bcVar = (bc) F(i17);
                        if (!ccVar.isEmpty()) {
                            t10 = z10;
                            for (Map.Entry entry : ccVar.entrySet()) {
                                t10 += bcVar.d(i20, entry.getKey(), entry.getValue());
                            }
                            i18 += t10;
                            break;
                        }
                        t10 = z10;
                        i18 += t10;
                    case 51:
                        if (t(obj, i20, i17)) {
                            E = pa.E(i20 << 3);
                            E7 = E + 8;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (t(obj, i20, i17)) {
                            E2 = pa.E(i20 << 3);
                            E7 = E2 + 4;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (t(obj, i20, i17)) {
                            long n10 = n(obj, j10);
                            E3 = pa.E(i20 << 3);
                            a10 = pa.a(n10);
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (t(obj, i20, i17)) {
                            long n11 = n(obj, j10);
                            E3 = pa.E(i20 << 3);
                            a10 = pa.a(n11);
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (t(obj, i20, i17)) {
                            E3 = pa.E(i20 << 3);
                            a10 = pa.a(m(obj, j10));
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (t(obj, i20, i17)) {
                            E = pa.E(i20 << 3);
                            E7 = E + 8;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (t(obj, i20, i17)) {
                            E2 = pa.E(i20 << 3);
                            E7 = E2 + 4;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (t(obj, i20, i17)) {
                            E4 = pa.E(i20 << 3);
                            E7 = E4 + 1;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (!t(obj, i20, i17)) {
                            break;
                        } else {
                            int i48 = i20 << 3;
                            Object object2 = unsafe.getObject(obj, j10);
                            if (object2 instanceof ka) {
                                E5 = pa.E(i48);
                                i13 = ((ka) object2).i();
                                E6 = pa.E(i13);
                                E7 = E5 + E6 + i13;
                                i18 += E7;
                                break;
                            } else {
                                E3 = pa.E(i48);
                                a10 = pa.b((String) object2);
                                E7 = E3 + a10;
                                i18 += E7;
                            }
                        }
                    case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                        if (t(obj, i20, i17)) {
                            E7 = vc.E(i20, unsafe.getObject(obj, j10), E(i17));
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (t(obj, i20, i17)) {
                            E5 = pa.E(i20 << 3);
                            i13 = ((ka) unsafe.getObject(obj, j10)).i();
                            E6 = pa.E(i13);
                            E7 = E5 + E6 + i13;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (t(obj, i20, i17)) {
                            int m10 = m(obj, j10);
                            E3 = pa.E(i20 << 3);
                            a10 = pa.E(m10);
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (t(obj, i20, i17)) {
                            E3 = pa.E(i20 << 3);
                            a10 = pa.a(m(obj, j10));
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (t(obj, i20, i17)) {
                            E2 = pa.E(i20 << 3);
                            E7 = E2 + 4;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (t(obj, i20, i17)) {
                            E = pa.E(i20 << 3);
                            E7 = E + 8;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (t(obj, i20, i17)) {
                            int m11 = m(obj, j10);
                            E3 = pa.E(i20 << 3);
                            a10 = pa.E((m11 >> 31) ^ (m11 + m11));
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (t(obj, i20, i17)) {
                            long n12 = n(obj, j10);
                            E3 = pa.E(i20 << 3);
                            a10 = pa.a((n12 >> 63) ^ (n12 + n12));
                            E7 = E3 + a10;
                            i18 += E7;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (t(obj, i20, i17)) {
                            E7 = pa.g(i20, (ic) unsafe.getObject(obj, j10), E(i17));
                            i18 += E7;
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
            } else {
                int h10 = i18 + ((hb) obj).zzc.h();
                if (this.f6497f) {
                    android.support.v4.media.session.b.a(obj);
                    throw null;
                }
                return h10;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.tc
    public final boolean b(Object obj) {
        int i10;
        int i11;
        int i12 = 0;
        int i13 = 0;
        int i14 = 1048575;
        while (true) {
            tc tcVar = null;
            if (i13 < this.f6499h) {
                int[] iArr = this.f6498g;
                int[] iArr2 = this.f6492a;
                int i15 = iArr[i13];
                int i16 = iArr2[i15];
                int M = M(i15);
                int i17 = iArr2[i15 + 2];
                int i18 = i17 & 1048575;
                int i19 = 1 << (i17 >>> 20);
                if (i18 != i14) {
                    if (i18 != 1048575) {
                        i12 = f6491m.getInt(obj, i18);
                    }
                    i11 = i12;
                    i10 = i18;
                } else {
                    i10 = i14;
                    i11 = i12;
                }
                if ((268435456 & M) != 0 && !q(obj, i15, i10, i11, i19)) {
                    return false;
                }
                int O = O(M);
                if (O != 9 && O != 17) {
                    if (O != 27) {
                        if (O != 60 && O != 68) {
                            if (O != 49) {
                                if (O != 50) {
                                    continue;
                                } else {
                                    cc ccVar = (cc) ld.s(obj, M & 1048575);
                                    if (!ccVar.isEmpty() && ((bc) F(i15)).e().f6257c.a() == qd.MESSAGE) {
                                        for (Object obj2 : ccVar.values()) {
                                            if (tcVar == null) {
                                                tcVar = qc.a().b(obj2.getClass());
                                            }
                                            if (!tcVar.b(obj2)) {
                                                return false;
                                            }
                                        }
                                        continue;
                                    }
                                }
                            }
                        } else if (t(obj, i16, i15) && !L(obj, M, E(i15))) {
                            return false;
                        }
                    }
                    List list = (List) ld.s(obj, M & 1048575);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        tc E = E(i15);
                        for (int i20 = 0; i20 < list.size(); i20++) {
                            if (!E.b(list.get(i20))) {
                                return false;
                            }
                        }
                        continue;
                    }
                } else if (q(obj, i15, i10, i11, i19) && !L(obj, M, E(i15))) {
                    return false;
                }
                i13++;
                i14 = i10;
                i12 = i11;
            } else if (!this.f6497f) {
                return true;
            } else {
                android.support.v4.media.session.b.a(obj);
                throw null;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.tc
    public final void c(Object obj, Object obj2) {
        j(obj);
        obj2.getClass();
        int i10 = 0;
        while (true) {
            int[] iArr = this.f6492a;
            if (i10 < iArr.length) {
                int M = M(i10);
                int i11 = 1048575 & M;
                int O = O(M);
                int i12 = iArr[i10];
                long j10 = i11;
                switch (O) {
                    case 0:
                        if (!r(obj2, i10)) {
                            break;
                        } else {
                            ld.r(obj, j10, ld.q(obj2, j10));
                            s(obj, i10);
                            break;
                        }
                    case 1:
                        if (!r(obj2, i10)) {
                            break;
                        } else {
                            ld.p(obj, j10, ld.o(obj2, j10));
                            s(obj, i10);
                            break;
                        }
                    case 2:
                        if (!r(obj2, i10)) {
                            break;
                        } else {
                            ld.l(obj, j10, ld.k(obj2, j10));
                            s(obj, i10);
                            break;
                        }
                    case 3:
                        if (!r(obj2, i10)) {
                            break;
                        } else {
                            ld.l(obj, j10, ld.k(obj2, j10));
                            s(obj, i10);
                            break;
                        }
                    case 4:
                        if (!r(obj2, i10)) {
                            break;
                        } else {
                            ld.j(obj, j10, ld.i(obj2, j10));
                            s(obj, i10);
                            break;
                        }
                    case 5:
                        if (!r(obj2, i10)) {
                            break;
                        } else {
                            ld.l(obj, j10, ld.k(obj2, j10));
                            s(obj, i10);
                            break;
                        }
                    case 6:
                        if (!r(obj2, i10)) {
                            break;
                        } else {
                            ld.j(obj, j10, ld.i(obj2, j10));
                            s(obj, i10);
                            break;
                        }
                    case 7:
                        if (!r(obj2, i10)) {
                            break;
                        } else {
                            ld.n(obj, j10, ld.m(obj2, j10));
                            s(obj, i10);
                            break;
                        }
                    case 8:
                        if (!r(obj2, i10)) {
                            break;
                        } else {
                            ld.t(obj, j10, ld.s(obj2, j10));
                            s(obj, i10);
                            break;
                        }
                    case 9:
                        C(obj, obj2, i10);
                        break;
                    case 10:
                        if (!r(obj2, i10)) {
                            break;
                        } else {
                            ld.t(obj, j10, ld.s(obj2, j10));
                            s(obj, i10);
                            break;
                        }
                    case 11:
                        if (!r(obj2, i10)) {
                            break;
                        } else {
                            ld.j(obj, j10, ld.i(obj2, j10));
                            s(obj, i10);
                            break;
                        }
                    case 12:
                        if (!r(obj2, i10)) {
                            break;
                        } else {
                            ld.j(obj, j10, ld.i(obj2, j10));
                            s(obj, i10);
                            break;
                        }
                    case 13:
                        if (!r(obj2, i10)) {
                            break;
                        } else {
                            ld.j(obj, j10, ld.i(obj2, j10));
                            s(obj, i10);
                            break;
                        }
                    case 14:
                        if (!r(obj2, i10)) {
                            break;
                        } else {
                            ld.l(obj, j10, ld.k(obj2, j10));
                            s(obj, i10);
                            break;
                        }
                    case 15:
                        if (!r(obj2, i10)) {
                            break;
                        } else {
                            ld.j(obj, j10, ld.i(obj2, j10));
                            s(obj, i10);
                            break;
                        }
                    case 16:
                        if (!r(obj2, i10)) {
                            break;
                        } else {
                            ld.l(obj, j10, ld.k(obj2, j10));
                            s(obj, i10);
                            break;
                        }
                    case 17:
                        C(obj, obj2, i10);
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
                        nb nbVar = (nb) ld.s(obj, j10);
                        nb nbVar2 = (nb) ld.s(obj2, j10);
                        int size = nbVar.size();
                        int size2 = nbVar2.size();
                        if (size > 0 && size2 > 0) {
                            if (!nbVar.zza()) {
                                nbVar = nbVar.u(size2 + size);
                            }
                            nbVar.addAll(nbVar2);
                        }
                        if (size > 0) {
                            nbVar2 = nbVar;
                        }
                        ld.t(obj, j10, nbVar2);
                        break;
                    case 50:
                        int i13 = vc.f6852b;
                        ld.t(obj, j10, dc.a(ld.s(obj, j10), ld.s(obj2, j10)));
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
                        if (!t(obj2, i12, i10)) {
                            break;
                        } else {
                            ld.t(obj, j10, ld.s(obj2, j10));
                            u(obj, i12, i10);
                            break;
                        }
                    case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                        D(obj, obj2, i10);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (!t(obj2, i12, i10)) {
                            break;
                        } else {
                            ld.t(obj, j10, ld.s(obj2, j10));
                            u(obj, i12, i10);
                            break;
                        }
                    case 68:
                        D(obj, obj2, i10);
                        break;
                }
                i10 += 3;
            } else {
                vc.d(this.f6501j, obj, obj2);
                if (this.f6497f) {
                    vc.c(this.f6502k, obj, obj2);
                    return;
                }
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.tc
    public final int d(Object obj) {
        int i10;
        long doubleToLongBits;
        int floatToIntBits;
        int i11;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int[] iArr = this.f6492a;
            if (i12 < iArr.length) {
                int M = M(i12);
                int i14 = 1048575 & M;
                int O = O(M);
                int i15 = iArr[i12];
                long j10 = i14;
                int i16 = 37;
                switch (O) {
                    case 0:
                        i10 = i13 * 53;
                        doubleToLongBits = Double.doubleToLongBits(ld.q(obj, j10));
                        byte[] bArr = ob.f6616b;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 1:
                        i10 = i13 * 53;
                        floatToIntBits = Float.floatToIntBits(ld.o(obj, j10));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 2:
                        i10 = i13 * 53;
                        doubleToLongBits = ld.k(obj, j10);
                        byte[] bArr2 = ob.f6616b;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 3:
                        i10 = i13 * 53;
                        doubleToLongBits = ld.k(obj, j10);
                        byte[] bArr3 = ob.f6616b;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 4:
                        i10 = i13 * 53;
                        floatToIntBits = ld.i(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 5:
                        i10 = i13 * 53;
                        doubleToLongBits = ld.k(obj, j10);
                        byte[] bArr4 = ob.f6616b;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 6:
                        i10 = i13 * 53;
                        floatToIntBits = ld.i(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 7:
                        i10 = i13 * 53;
                        floatToIntBits = ob.b(ld.m(obj, j10));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 8:
                        i10 = i13 * 53;
                        floatToIntBits = ((String) ld.s(obj, j10)).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    case 9:
                        i11 = i13 * 53;
                        Object s10 = ld.s(obj, j10);
                        if (s10 != null) {
                            i16 = s10.hashCode();
                        }
                        i13 = i11 + i16;
                        break;
                    case 10:
                        i10 = i13 * 53;
                        floatToIntBits = ld.s(obj, j10).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    case 11:
                        i10 = i13 * 53;
                        floatToIntBits = ld.i(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 12:
                        i10 = i13 * 53;
                        floatToIntBits = ld.i(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 13:
                        i10 = i13 * 53;
                        floatToIntBits = ld.i(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 14:
                        i10 = i13 * 53;
                        doubleToLongBits = ld.k(obj, j10);
                        byte[] bArr5 = ob.f6616b;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 15:
                        i10 = i13 * 53;
                        floatToIntBits = ld.i(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 16:
                        i10 = i13 * 53;
                        doubleToLongBits = ld.k(obj, j10);
                        byte[] bArr6 = ob.f6616b;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 17:
                        i11 = i13 * 53;
                        Object s11 = ld.s(obj, j10);
                        if (s11 != null) {
                            i16 = s11.hashCode();
                        }
                        i13 = i11 + i16;
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
                        i10 = i13 * 53;
                        floatToIntBits = ld.s(obj, j10).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    case 50:
                        i10 = i13 * 53;
                        floatToIntBits = ld.s(obj, j10).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    case 51:
                        if (!t(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = Double.doubleToLongBits(k(obj, j10));
                            byte[] bArr7 = ob.f6616b;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 52:
                        if (!t(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = Float.floatToIntBits(l(obj, j10));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 53:
                        if (!t(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = n(obj, j10);
                            byte[] bArr8 = ob.f6616b;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 54:
                        if (!t(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = n(obj, j10);
                            byte[] bArr9 = ob.f6616b;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 55:
                        if (!t(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = m(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 56:
                        if (!t(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = n(obj, j10);
                            byte[] bArr10 = ob.f6616b;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 57:
                        if (!t(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = m(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 58:
                        if (!t(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = ob.b(o(obj, j10));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 59:
                        if (!t(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = ((String) ld.s(obj, j10)).hashCode();
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                        if (!t(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = ld.s(obj, j10).hashCode();
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 61:
                        if (!t(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = ld.s(obj, j10).hashCode();
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 62:
                        if (!t(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = m(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 63:
                        if (!t(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = m(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 64:
                        if (!t(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = m(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 65:
                        if (!t(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = n(obj, j10);
                            byte[] bArr11 = ob.f6616b;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 66:
                        if (!t(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = m(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 67:
                        if (!t(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = n(obj, j10);
                            byte[] bArr12 = ob.f6616b;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 68:
                        if (!t(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = ld.s(obj, j10).hashCode();
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                }
                i12 += 3;
            } else {
                int hashCode = (i13 * 53) + ((hb) obj).zzc.hashCode();
                if (!this.f6497f) {
                    return hashCode;
                }
                android.support.v4.media.session.b.a(obj);
                throw null;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.tc
    public final void e(Object obj) {
        if (i(obj)) {
            if (obj instanceof hb) {
                hb hbVar = (hb) obj;
                hbVar.q(Integer.MAX_VALUE);
                hbVar.zza = 0;
                hbVar.k();
            }
            int[] iArr = this.f6492a;
            for (int i10 = 0; i10 < iArr.length; i10 += 3) {
                int M = M(i10);
                int i11 = 1048575 & M;
                int O = O(M);
                long j10 = i11;
                if (O != 9) {
                    if (O != 60 && O != 68) {
                        switch (O) {
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
                                ((nb) ld.s(obj, j10)).e();
                                break;
                            case 50:
                                Unsafe unsafe = f6491m;
                                Object object = unsafe.getObject(obj, j10);
                                if (object != null) {
                                    ((cc) object).e();
                                    unsafe.putObject(obj, j10, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (t(obj, iArr[i10], i10)) {
                        E(i10).e(f6491m.getObject(obj, j10));
                    }
                }
                if (r(obj, i10)) {
                    E(i10).e(f6491m.getObject(obj, j10));
                }
            }
            this.f6501j.b(obj);
            if (this.f6497f) {
                this.f6502k.a(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.tc
    public final void f(Object obj, byte[] bArr, int i10, int i11, y9 y9Var) {
        z(obj, bArr, i10, i11, 0, y9Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.tc
    public final void g(Object obj, rd rdVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        if (!this.f6497f) {
            int[] iArr = this.f6492a;
            Unsafe unsafe = f6491m;
            int i14 = 1048575;
            boolean z10 = 0;
            int i15 = 1048575;
            int i16 = 0;
            int i17 = 0;
            while (i17 < iArr.length) {
                int M = M(i17);
                int O = O(M);
                int i18 = iArr[i17];
                if (O <= 17) {
                    int i19 = iArr[i17 + 2];
                    int i20 = i19 & i14;
                    if (i20 != i15) {
                        if (i20 == i14) {
                            i13 = z10;
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
                    i12 = z10;
                }
                long j10 = M & i14;
                switch (O) {
                    case 0:
                        if (q(obj, i17, i10, i11, i12)) {
                            rdVar.f(i18, ld.q(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (q(obj, i17, i10, i11, i12)) {
                            rdVar.K(i18, ld.o(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (q(obj, i17, i10, i11, i12)) {
                            rdVar.q(i18, unsafe.getLong(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (q(obj, i17, i10, i11, i12)) {
                            rdVar.s(i18, unsafe.getLong(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (q(obj, i17, i10, i11, i12)) {
                            rdVar.d(i18, unsafe.getInt(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (q(obj, i17, i10, i11, i12)) {
                            rdVar.l(i18, unsafe.getLong(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (q(obj, i17, i10, i11, i12)) {
                            rdVar.b(i18, unsafe.getInt(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (q(obj, i17, i10, i11, i12)) {
                            rdVar.H(i18, ld.m(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (q(obj, i17, i10, i11, i12)) {
                            x(i18, unsafe.getObject(obj, j10), rdVar);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (q(obj, i17, i10, i11, i12)) {
                            rdVar.p(i18, unsafe.getObject(obj, j10), E(i17));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (q(obj, i17, i10, i11, i12)) {
                            rdVar.k(i18, (ka) unsafe.getObject(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (q(obj, i17, i10, i11, i12)) {
                            rdVar.B(i18, unsafe.getInt(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (q(obj, i17, i10, i11, i12)) {
                            rdVar.D(i18, unsafe.getInt(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (q(obj, i17, i10, i11, i12)) {
                            rdVar.m(i18, unsafe.getInt(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (q(obj, i17, i10, i11, i12)) {
                            rdVar.I(i18, unsafe.getLong(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (q(obj, i17, i10, i11, i12)) {
                            rdVar.E(i18, unsafe.getInt(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (q(obj, i17, i10, i11, i12)) {
                            rdVar.t(i18, unsafe.getLong(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (q(obj, i17, i10, i11, i12)) {
                            rdVar.G(i18, unsafe.getObject(obj, j10), E(i17));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        vc.f(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, z10);
                        break;
                    case C1415p9.C /* 19 */:
                        vc.g(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, z10);
                        break;
                    case 20:
                        vc.h(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, z10);
                        break;
                    case 21:
                        vc.i(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, z10);
                        break;
                    case Build.API_LEVELS.API_22 /* 22 */:
                        vc.m(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, z10);
                        break;
                    case Build.API_LEVELS.API_23 /* 23 */:
                        vc.k(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, z10);
                        break;
                    case Build.API_LEVELS.API_24 /* 24 */:
                        vc.p(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, z10);
                        break;
                    case 25:
                        vc.s(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, z10);
                        break;
                    case 26:
                        int i21 = iArr[i17];
                        List list = (List) unsafe.getObject(obj, j10);
                        int i22 = vc.f6852b;
                        if (list != null && !list.isEmpty()) {
                            rdVar.C(i21, list);
                            break;
                        }
                        break;
                    case 27:
                        int i23 = iArr[i17];
                        List list2 = (List) unsafe.getObject(obj, j10);
                        tc E = E(i17);
                        int i24 = vc.f6852b;
                        if (list2 != null && !list2.isEmpty()) {
                            for (int i25 = z10; i25 < list2.size(); i25++) {
                                ((qa) rdVar).p(i23, list2.get(i25), E);
                            }
                            break;
                        }
                        break;
                    case Build.API_LEVELS.API_28 /* 28 */:
                        int i26 = iArr[i17];
                        List list3 = (List) unsafe.getObject(obj, j10);
                        int i27 = vc.f6852b;
                        if (list3 != null && !list3.isEmpty()) {
                            rdVar.e(i26, list3);
                            break;
                        }
                        break;
                    case 29:
                        vc.n(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, z10);
                        break;
                    case Build.API_LEVELS.API_30 /* 30 */:
                        vc.r(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, z10);
                        break;
                    case Build.API_LEVELS.API_31 /* 31 */:
                        vc.q(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, z10);
                        break;
                    case Build.API_LEVELS.API_32 /* 32 */:
                        vc.l(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, z10);
                        break;
                    case Build.API_LEVELS.API_33 /* 33 */:
                        vc.o(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, z10);
                        break;
                    case Build.API_LEVELS.API_34 /* 34 */:
                        vc.j(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, z10);
                        break;
                    case 35:
                        vc.f(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, true);
                        break;
                    case Build.API_LEVELS.API_36 /* 36 */:
                        vc.g(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, true);
                        break;
                    case 37:
                        vc.h(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, true);
                        break;
                    case C1415p9.K /* 38 */:
                        vc.i(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, true);
                        break;
                    case 39:
                        vc.m(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, true);
                        break;
                    case C1415p9.L /* 40 */:
                        vc.k(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, true);
                        break;
                    case 41:
                        vc.p(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, true);
                        break;
                    case C1415p9.M /* 42 */:
                        vc.s(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, true);
                        break;
                    case 43:
                        vc.n(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, true);
                        break;
                    case 44:
                        vc.r(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, true);
                        break;
                    case 45:
                        vc.q(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, true);
                        break;
                    case 46:
                        vc.l(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, true);
                        break;
                    case 47:
                        vc.o(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, true);
                        break;
                    case 48:
                        vc.j(iArr[i17], (List) unsafe.getObject(obj, j10), rdVar, true);
                        break;
                    case 49:
                        int i28 = iArr[i17];
                        List list4 = (List) unsafe.getObject(obj, j10);
                        tc E2 = E(i17);
                        int i29 = vc.f6852b;
                        if (list4 != null && !list4.isEmpty()) {
                            for (int i30 = z10; i30 < list4.size(); i30++) {
                                ((qa) rdVar).G(i28, list4.get(i30), E2);
                            }
                            break;
                        }
                        break;
                    case 50:
                        Object object = unsafe.getObject(obj, j10);
                        if (object != null) {
                            rdVar.o(i18, ((bc) F(i17)).e(), (cc) object);
                            break;
                        } else {
                            break;
                        }
                    case 51:
                        if (t(obj, i18, i17)) {
                            rdVar.f(i18, k(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (t(obj, i18, i17)) {
                            rdVar.K(i18, l(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (t(obj, i18, i17)) {
                            rdVar.q(i18, n(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (t(obj, i18, i17)) {
                            rdVar.s(i18, n(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (t(obj, i18, i17)) {
                            rdVar.d(i18, m(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (t(obj, i18, i17)) {
                            rdVar.l(i18, n(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (t(obj, i18, i17)) {
                            rdVar.b(i18, m(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (t(obj, i18, i17)) {
                            rdVar.H(i18, o(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (t(obj, i18, i17)) {
                            x(i18, unsafe.getObject(obj, j10), rdVar);
                            break;
                        } else {
                            break;
                        }
                    case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                        if (t(obj, i18, i17)) {
                            rdVar.p(i18, unsafe.getObject(obj, j10), E(i17));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (t(obj, i18, i17)) {
                            rdVar.k(i18, (ka) unsafe.getObject(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (t(obj, i18, i17)) {
                            rdVar.B(i18, m(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (t(obj, i18, i17)) {
                            rdVar.D(i18, m(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (t(obj, i18, i17)) {
                            rdVar.m(i18, m(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (t(obj, i18, i17)) {
                            rdVar.I(i18, n(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (t(obj, i18, i17)) {
                            rdVar.E(i18, m(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (t(obj, i18, i17)) {
                            rdVar.t(i18, n(obj, j10));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (t(obj, i18, i17)) {
                            rdVar.G(i18, unsafe.getObject(obj, j10), E(i17));
                            break;
                        } else {
                            break;
                        }
                }
                i17 += 3;
                i15 = i10;
                i16 = i11;
                i14 = 1048575;
                z10 = 0;
            }
            ((hb) obj).zzc.f(rdVar);
            return;
        }
        android.support.v4.media.session.b.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.tc
    public final boolean h(Object obj, Object obj2) {
        boolean b10;
        for (int i10 = 0; i10 < this.f6492a.length; i10 += 3) {
            int M = M(i10);
            long j10 = M & 1048575;
            switch (O(M)) {
                case 0:
                    if (p(obj, obj2, i10) && Double.doubleToLongBits(ld.q(obj, j10)) == Double.doubleToLongBits(ld.q(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (p(obj, obj2, i10) && Float.floatToIntBits(ld.o(obj, j10)) == Float.floatToIntBits(ld.o(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (p(obj, obj2, i10) && ld.k(obj, j10) == ld.k(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (p(obj, obj2, i10) && ld.k(obj, j10) == ld.k(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (p(obj, obj2, i10) && ld.i(obj, j10) == ld.i(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (p(obj, obj2, i10) && ld.k(obj, j10) == ld.k(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (p(obj, obj2, i10) && ld.i(obj, j10) == ld.i(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (p(obj, obj2, i10) && ld.m(obj, j10) == ld.m(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (p(obj, obj2, i10) && vc.b(ld.s(obj, j10), ld.s(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (p(obj, obj2, i10) && vc.b(ld.s(obj, j10), ld.s(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (p(obj, obj2, i10) && vc.b(ld.s(obj, j10), ld.s(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (p(obj, obj2, i10) && ld.i(obj, j10) == ld.i(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (p(obj, obj2, i10) && ld.i(obj, j10) == ld.i(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (p(obj, obj2, i10) && ld.i(obj, j10) == ld.i(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (p(obj, obj2, i10) && ld.k(obj, j10) == ld.k(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (p(obj, obj2, i10) && ld.i(obj, j10) == ld.i(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (p(obj, obj2, i10) && ld.k(obj, j10) == ld.k(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (p(obj, obj2, i10) && vc.b(ld.s(obj, j10), ld.s(obj2, j10))) {
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
                    b10 = vc.b(ld.s(obj, j10), ld.s(obj2, j10));
                    break;
                case 50:
                    b10 = vc.b(ld.s(obj, j10), ld.s(obj2, j10));
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
                    long N = N(i10) & 1048575;
                    if (ld.i(obj, N) == ld.i(obj2, N) && vc.b(ld.s(obj, j10), ld.s(obj2, j10))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!b10) {
                return false;
            }
        }
        if (!((hb) obj).zzc.equals(((hb) obj2).zzc)) {
            return false;
        }
        if (!this.f6497f) {
            return true;
        }
        android.support.v4.media.session.b.a(obj);
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:435:0x0a14, code lost:
        throw new com.google.android.gms.internal.measurement.qb("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:526:0x0ce4, code lost:
        if (r7 == 1048575) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:527:0x0ce6, code lost:
        r0.putInt(r10, r7, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:528:0x0cea, code lost:
        r0 = r1.f6499h;
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:530:0x0cf0, code lost:
        if (r0 >= r1.f6500i) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:531:0x0cf2, code lost:
        r4 = r1.f6498g;
        r6 = r1.f6501j;
        r7 = r1.f6492a;
        r4 = r4[r0];
        r7 = r7[r4];
        r8 = com.google.android.gms.internal.measurement.ld.s(r10, r1.M(r4) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:532:0x0d09, code lost:
        if (r8 == null) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:533:0x0d0b, code lost:
        r12 = r1.G(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:534:0x0d0f, code lost:
        if (r12 == null) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:535:0x0d11, code lost:
        r4 = ((com.google.android.gms.internal.measurement.bc) r1.F(r4)).e();
        r8 = ((com.google.android.gms.internal.measurement.cc) r8).entrySet().iterator();
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:537:0x0d29, code lost:
        if (r8.hasNext() == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:538:0x0d2b, code lost:
        r13 = (java.util.Map.Entry) r8.next();
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:539:0x0d3f, code lost:
        if (r12.a(((java.lang.Integer) r13.getValue()).intValue()) != false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:540:0x0d41, code lost:
        if (r3 != null) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:541:0x0d43, code lost:
        r3 = r6.a(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:542:0x0d47, code lost:
        r14 = com.google.android.gms.internal.measurement.bc.c(r4, r13.getKey(), r13.getValue());
        r15 = com.google.android.gms.internal.measurement.ka.f6472b;
        r15 = new byte[r14];
        r16 = com.google.android.gms.internal.measurement.pa.f6668d;
        r9 = new com.google.android.gms.internal.measurement.na(r15, 0, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:543:0x0d5f, code lost:
        com.google.android.gms.internal.measurement.bc.b(r9, r4, r13.getKey(), r13.getValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:544:0x0d6a, code lost:
        r3.j((r7 << 3) | 2, com.google.android.gms.internal.measurement.ha.a(r9, r15));
        r8.remove();
     */
    /* JADX WARN: Code restructure failed: missing block: B:545:0x0d82, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:547:0x0d88, code lost:
        throw new java.lang.RuntimeException(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:548:0x0d89, code lost:
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:549:0x0d8c, code lost:
        r0 = r0 + 1;
        r1 = r31;
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:550:0x0d98, code lost:
        if (r3 == null) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:551:0x0d9a, code lost:
        ((com.google.android.gms.internal.measurement.hb) r10).zzc = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:552:0x0d9f, code lost:
        if (r11 != 0) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:554:0x0da3, code lost:
        if (r2 != r35) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:557:0x0dad, code lost:
        throw new com.google.android.gms.internal.measurement.qb(r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:558:0x0dae, code lost:
        r1 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:559:0x0db2, code lost:
        if (r2 > r35) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:560:0x0db4, code lost:
        if (r5 != r11) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:561:0x0db6, code lost:
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:563:0x0dbc, code lost:
        throw new com.google.android.gms.internal.measurement.qb(r1);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0598  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x063b  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0690  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:518:0x0c9e  */
    /* JADX WARN: Removed duplicated region for block: B:627:0x005b A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v102, types: [int] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:211:0x0595 -> B:212:0x0596). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:246:0x0638 -> B:247:0x0639). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:266:0x068c -> B:267:0x068e). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int z(java.lang.Object r32, byte[] r33, int r34, int r35, int r36, com.google.android.gms.internal.measurement.y9 r37) {
        /*
            Method dump skipped, instructions count: 3662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.lc.z(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.y9):int");
    }

    @Override // com.google.android.gms.internal.measurement.tc
    public final Object zza() {
        return ((hb) this.f6496e).l();
    }
}
