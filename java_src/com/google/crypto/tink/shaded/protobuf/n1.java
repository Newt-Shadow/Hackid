package com.google.crypto.tink.shaded.protobuf;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.KotlinVersion;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class n1 {

    /* renamed from: a  reason: collision with root package name */
    private static final Unsafe f8511a = D();

    /* renamed from: b  reason: collision with root package name */
    private static final Class f8512b = com.google.crypto.tink.shaded.protobuf.d.b();

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f8513c = o(Long.TYPE);

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f8514d = o(Integer.TYPE);

    /* renamed from: e  reason: collision with root package name */
    private static final e f8515e = B();

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f8516f = T();

    /* renamed from: g  reason: collision with root package name */
    private static final boolean f8517g = S();

    /* renamed from: h  reason: collision with root package name */
    static final long f8518h;

    /* renamed from: i  reason: collision with root package name */
    private static final long f8519i;

    /* renamed from: j  reason: collision with root package name */
    private static final long f8520j;

    /* renamed from: k  reason: collision with root package name */
    private static final long f8521k;

    /* renamed from: l  reason: collision with root package name */
    private static final long f8522l;

    /* renamed from: m  reason: collision with root package name */
    private static final long f8523m;

    /* renamed from: n  reason: collision with root package name */
    private static final long f8524n;

    /* renamed from: o  reason: collision with root package name */
    private static final long f8525o;

    /* renamed from: p  reason: collision with root package name */
    private static final long f8526p;

    /* renamed from: q  reason: collision with root package name */
    private static final long f8527q;

    /* renamed from: r  reason: collision with root package name */
    private static final long f8528r;

    /* renamed from: s  reason: collision with root package name */
    private static final long f8529s;

    /* renamed from: t  reason: collision with root package name */
    private static final long f8530t;

    /* renamed from: u  reason: collision with root package name */
    private static final long f8531u;

    /* renamed from: v  reason: collision with root package name */
    private static final int f8532v;

    /* renamed from: w  reason: collision with root package name */
    static final boolean f8533w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements PrivilegedExceptionAction {
        a() {
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Unsafe run() {
            Field[] declaredFields;
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b extends e {
        b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public boolean c(Object obj, long j10) {
            return n1.f8533w ? n1.s(obj, j10) : n1.t(obj, j10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public byte d(Object obj, long j10) {
            return n1.f8533w ? n1.v(obj, j10) : n1.w(obj, j10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public double e(Object obj, long j10) {
            return Double.longBitsToDouble(h(obj, j10));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public float f(Object obj, long j10) {
            return Float.intBitsToFloat(g(obj, j10));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public void k(Object obj, long j10, boolean z10) {
            if (n1.f8533w) {
                n1.I(obj, j10, z10);
            } else {
                n1.J(obj, j10, z10);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public void l(Object obj, long j10, byte b10) {
            if (n1.f8533w) {
                n1.L(obj, j10, b10);
            } else {
                n1.M(obj, j10, b10);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public void m(Object obj, long j10, double d10) {
            p(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public void n(Object obj, long j10, float f10) {
            o(obj, j10, Float.floatToIntBits(f10));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public boolean s() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c extends e {
        c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public boolean c(Object obj, long j10) {
            return n1.f8533w ? n1.s(obj, j10) : n1.t(obj, j10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public byte d(Object obj, long j10) {
            return n1.f8533w ? n1.v(obj, j10) : n1.w(obj, j10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public double e(Object obj, long j10) {
            return Double.longBitsToDouble(h(obj, j10));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public float f(Object obj, long j10) {
            return Float.intBitsToFloat(g(obj, j10));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public void k(Object obj, long j10, boolean z10) {
            if (n1.f8533w) {
                n1.I(obj, j10, z10);
            } else {
                n1.J(obj, j10, z10);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public void l(Object obj, long j10, byte b10) {
            if (n1.f8533w) {
                n1.L(obj, j10, b10);
            } else {
                n1.M(obj, j10, b10);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public void m(Object obj, long j10, double d10) {
            p(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public void n(Object obj, long j10, float f10) {
            o(obj, j10, Float.floatToIntBits(f10));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public boolean s() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d extends e {
        d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public boolean c(Object obj, long j10) {
            return this.f8534a.getBoolean(obj, j10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public byte d(Object obj, long j10) {
            return this.f8534a.getByte(obj, j10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public double e(Object obj, long j10) {
            return this.f8534a.getDouble(obj, j10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public float f(Object obj, long j10) {
            return this.f8534a.getFloat(obj, j10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public void k(Object obj, long j10, boolean z10) {
            this.f8534a.putBoolean(obj, j10, z10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public void l(Object obj, long j10, byte b10) {
            this.f8534a.putByte(obj, j10, b10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public void m(Object obj, long j10, double d10) {
            this.f8534a.putDouble(obj, j10, d10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public void n(Object obj, long j10, float f10) {
            this.f8534a.putFloat(obj, j10, f10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public boolean r() {
            if (!super.r()) {
                return false;
            }
            try {
                Class<?> cls = this.f8534a.getClass();
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getByte", Object.class, cls2);
                cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
                cls.getMethod("getBoolean", Object.class, cls2);
                cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
                cls.getMethod("getFloat", Object.class, cls2);
                cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
                cls.getMethod("getDouble", Object.class, cls2);
                cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
                return true;
            } catch (Throwable th) {
                n1.G(th);
                return false;
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public boolean s() {
            if (!super.s()) {
                return false;
            }
            try {
                Class<?> cls = this.f8534a.getClass();
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getByte", cls2);
                cls.getMethod("putByte", cls2, Byte.TYPE);
                cls.getMethod("getInt", cls2);
                cls.getMethod("putInt", cls2, Integer.TYPE);
                cls.getMethod("getLong", cls2);
                cls.getMethod("putLong", cls2, cls2);
                cls.getMethod("copyMemory", cls2, cls2, cls2);
                cls.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
                return true;
            } catch (Throwable th) {
                n1.G(th);
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class e {

        /* renamed from: a  reason: collision with root package name */
        Unsafe f8534a;

        e(Unsafe unsafe) {
            this.f8534a = unsafe;
        }

        public final int a(Class cls) {
            return this.f8534a.arrayBaseOffset(cls);
        }

        public final int b(Class cls) {
            return this.f8534a.arrayIndexScale(cls);
        }

        public abstract boolean c(Object obj, long j10);

        public abstract byte d(Object obj, long j10);

        public abstract double e(Object obj, long j10);

        public abstract float f(Object obj, long j10);

        public final int g(Object obj, long j10) {
            return this.f8534a.getInt(obj, j10);
        }

        public final long h(Object obj, long j10) {
            return this.f8534a.getLong(obj, j10);
        }

        public final Object i(Object obj, long j10) {
            return this.f8534a.getObject(obj, j10);
        }

        public final long j(Field field) {
            return this.f8534a.objectFieldOffset(field);
        }

        public abstract void k(Object obj, long j10, boolean z10);

        public abstract void l(Object obj, long j10, byte b10);

        public abstract void m(Object obj, long j10, double d10);

        public abstract void n(Object obj, long j10, float f10);

        public final void o(Object obj, long j10, int i10) {
            this.f8534a.putInt(obj, j10, i10);
        }

        public final void p(Object obj, long j10, long j11) {
            this.f8534a.putLong(obj, j10, j11);
        }

        public final void q(Object obj, long j10, Object obj2) {
            this.f8534a.putObject(obj, j10, obj2);
        }

        public boolean r() {
            Unsafe unsafe = this.f8534a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getInt", Object.class, cls2);
                cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putLong", Object.class, cls2, cls2);
                cls.getMethod("getObject", Object.class, cls2);
                cls.getMethod("putObject", Object.class, cls2, Object.class);
                return true;
            } catch (Throwable th) {
                n1.G(th);
                return false;
            }
        }

        public boolean s() {
            Unsafe unsafe = this.f8534a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                if (n1.b() == null) {
                    return false;
                }
                return true;
            } catch (Throwable th) {
                n1.G(th);
                return false;
            }
        }
    }

    static {
        boolean z10;
        long l10 = l(byte[].class);
        f8518h = l10;
        f8519i = l(boolean[].class);
        f8520j = m(boolean[].class);
        f8521k = l(int[].class);
        f8522l = m(int[].class);
        f8523m = l(long[].class);
        f8524n = m(long[].class);
        f8525o = l(float[].class);
        f8526p = m(float[].class);
        f8527q = l(double[].class);
        f8528r = m(double[].class);
        f8529s = l(Object[].class);
        f8530t = m(Object[].class);
        f8531u = q(n());
        f8532v = (int) (l10 & 7);
        if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN) {
            z10 = true;
        } else {
            z10 = false;
        }
        f8533w = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long A(Object obj, long j10) {
        return f8515e.h(obj, j10);
    }

    private static e B() {
        Unsafe unsafe = f8511a;
        if (unsafe == null) {
            return null;
        }
        if (com.google.crypto.tink.shaded.protobuf.d.c()) {
            if (f8513c) {
                return new c(unsafe);
            }
            if (!f8514d) {
                return null;
            }
            return new b(unsafe);
        }
        return new d(unsafe);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object C(Object obj, long j10) {
        return f8515e.i(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Unsafe D() {
        try {
            return (Unsafe) AccessController.doPrivileged(new a());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean E() {
        return f8517g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean F() {
        return f8516f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void G(Throwable th) {
        Logger logger = Logger.getLogger(n1.class.getName());
        Level level = Level.WARNING;
        logger.log(level, "platform method missing - proto runtime falling back to safer methods: " + th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void H(Object obj, long j10, boolean z10) {
        f8515e.k(obj, j10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void I(Object obj, long j10, boolean z10) {
        L(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void J(Object obj, long j10, boolean z10) {
        M(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void K(byte[] bArr, long j10, byte b10) {
        f8515e.l(bArr, f8518h + j10, b10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void L(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int z10 = z(obj, j11);
        int i10 = ((~((int) j10)) & 3) << 3;
        P(obj, j11, ((255 & b10) << i10) | (z10 & (~(KotlinVersion.MAX_COMPONENT_VALUE << i10))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void M(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int i10 = (((int) j10) & 3) << 3;
        P(obj, j11, ((255 & b10) << i10) | (z(obj, j11) & (~(KotlinVersion.MAX_COMPONENT_VALUE << i10))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void N(Object obj, long j10, double d10) {
        f8515e.m(obj, j10, d10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void O(Object obj, long j10, float f10) {
        f8515e.n(obj, j10, f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void P(Object obj, long j10, int i10) {
        f8515e.o(obj, j10, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void Q(Object obj, long j10, long j11) {
        f8515e.p(obj, j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void R(Object obj, long j10, Object obj2) {
        f8515e.q(obj, j10, obj2);
    }

    private static boolean S() {
        e eVar = f8515e;
        if (eVar == null) {
            return false;
        }
        return eVar.r();
    }

    private static boolean T() {
        e eVar = f8515e;
        if (eVar == null) {
            return false;
        }
        return eVar.s();
    }

    static /* synthetic */ Field b() {
        return n();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object k(Class cls) {
        try {
            return f8511a.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    private static int l(Class cls) {
        if (f8517g) {
            return f8515e.a(cls);
        }
        return -1;
    }

    private static int m(Class cls) {
        if (f8517g) {
            return f8515e.b(cls);
        }
        return -1;
    }

    private static Field n() {
        Field p10;
        if (com.google.crypto.tink.shaded.protobuf.d.c() && (p10 = p(Buffer.class, "effectiveDirectAddress")) != null) {
            return p10;
        }
        Field p11 = p(Buffer.class, "address");
        if (p11 == null || p11.getType() != Long.TYPE) {
            return null;
        }
        return p11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static boolean o(Class cls) {
        if (!com.google.crypto.tink.shaded.protobuf.d.c()) {
            return false;
        }
        try {
            Class cls2 = f8512b;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static Field p(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static long q(Field field) {
        e eVar;
        if (field != null && (eVar = f8515e) != null) {
            return eVar.j(field);
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean r(Object obj, long j10) {
        return f8515e.c(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean s(Object obj, long j10) {
        if (v(obj, j10) != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean t(Object obj, long j10) {
        if (w(obj, j10) != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte u(byte[] bArr, long j10) {
        return f8515e.d(bArr, f8518h + j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte v(Object obj, long j10) {
        return (byte) ((z(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & KotlinVersion.MAX_COMPONENT_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte w(Object obj, long j10) {
        return (byte) ((z(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & KotlinVersion.MAX_COMPONENT_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double x(Object obj, long j10) {
        return f8515e.e(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float y(Object obj, long j10) {
        return f8515e.f(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int z(Object obj, long j10) {
        return f8515e.g(obj, j10);
    }
}
