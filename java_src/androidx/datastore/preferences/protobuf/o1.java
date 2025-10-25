package androidx.datastore.preferences.protobuf;

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
public abstract class o1 {

    /* renamed from: a  reason: collision with root package name */
    private static final Unsafe f2236a = A();

    /* renamed from: b  reason: collision with root package name */
    private static final Class f2237b = androidx.datastore.preferences.protobuf.d.b();

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f2238c = m(Long.TYPE);

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f2239d = m(Integer.TYPE);

    /* renamed from: e  reason: collision with root package name */
    private static final e f2240e = y();

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f2241f = Q();

    /* renamed from: g  reason: collision with root package name */
    private static final boolean f2242g = P();

    /* renamed from: h  reason: collision with root package name */
    static final long f2243h;

    /* renamed from: i  reason: collision with root package name */
    private static final long f2244i;

    /* renamed from: j  reason: collision with root package name */
    private static final long f2245j;

    /* renamed from: k  reason: collision with root package name */
    private static final long f2246k;

    /* renamed from: l  reason: collision with root package name */
    private static final long f2247l;

    /* renamed from: m  reason: collision with root package name */
    private static final long f2248m;

    /* renamed from: n  reason: collision with root package name */
    private static final long f2249n;

    /* renamed from: o  reason: collision with root package name */
    private static final long f2250o;

    /* renamed from: p  reason: collision with root package name */
    private static final long f2251p;

    /* renamed from: q  reason: collision with root package name */
    private static final long f2252q;

    /* renamed from: r  reason: collision with root package name */
    private static final long f2253r;

    /* renamed from: s  reason: collision with root package name */
    private static final long f2254s;

    /* renamed from: t  reason: collision with root package name */
    private static final long f2255t;

    /* renamed from: u  reason: collision with root package name */
    private static final long f2256u;

    /* renamed from: v  reason: collision with root package name */
    private static final int f2257v;

    /* renamed from: w  reason: collision with root package name */
    static final boolean f2258w;

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

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public boolean c(Object obj, long j10) {
            return o1.f2258w ? o1.q(obj, j10) : o1.r(obj, j10);
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public double d(Object obj, long j10) {
            return Double.longBitsToDouble(g(obj, j10));
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public float e(Object obj, long j10) {
            return Float.intBitsToFloat(f(obj, j10));
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public void j(Object obj, long j10, boolean z10) {
            if (o1.f2258w) {
                o1.F(obj, j10, z10);
            } else {
                o1.G(obj, j10, z10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public void k(Object obj, long j10, byte b10) {
            if (o1.f2258w) {
                o1.I(obj, j10, b10);
            } else {
                o1.J(obj, j10, b10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public void l(Object obj, long j10, double d10) {
            o(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public void m(Object obj, long j10, float f10) {
            n(obj, j10, Float.floatToIntBits(f10));
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public boolean r() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c extends e {
        c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public boolean c(Object obj, long j10) {
            return o1.f2258w ? o1.q(obj, j10) : o1.r(obj, j10);
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public double d(Object obj, long j10) {
            return Double.longBitsToDouble(g(obj, j10));
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public float e(Object obj, long j10) {
            return Float.intBitsToFloat(f(obj, j10));
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public void j(Object obj, long j10, boolean z10) {
            if (o1.f2258w) {
                o1.F(obj, j10, z10);
            } else {
                o1.G(obj, j10, z10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public void k(Object obj, long j10, byte b10) {
            if (o1.f2258w) {
                o1.I(obj, j10, b10);
            } else {
                o1.J(obj, j10, b10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public void l(Object obj, long j10, double d10) {
            o(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public void m(Object obj, long j10, float f10) {
            n(obj, j10, Float.floatToIntBits(f10));
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public boolean r() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d extends e {
        d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public boolean c(Object obj, long j10) {
            return this.f2259a.getBoolean(obj, j10);
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public double d(Object obj, long j10) {
            return this.f2259a.getDouble(obj, j10);
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public float e(Object obj, long j10) {
            return this.f2259a.getFloat(obj, j10);
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public void j(Object obj, long j10, boolean z10) {
            this.f2259a.putBoolean(obj, j10, z10);
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public void k(Object obj, long j10, byte b10) {
            this.f2259a.putByte(obj, j10, b10);
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public void l(Object obj, long j10, double d10) {
            this.f2259a.putDouble(obj, j10, d10);
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public void m(Object obj, long j10, float f10) {
            this.f2259a.putFloat(obj, j10, f10);
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public boolean q() {
            if (!super.q()) {
                return false;
            }
            try {
                Class<?> cls = this.f2259a.getClass();
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
                o1.D(th);
                return false;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.o1.e
        public boolean r() {
            if (!super.r()) {
                return false;
            }
            try {
                Class<?> cls = this.f2259a.getClass();
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
                o1.D(th);
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class e {

        /* renamed from: a  reason: collision with root package name */
        Unsafe f2259a;

        e(Unsafe unsafe) {
            this.f2259a = unsafe;
        }

        public final int a(Class cls) {
            return this.f2259a.arrayBaseOffset(cls);
        }

        public final int b(Class cls) {
            return this.f2259a.arrayIndexScale(cls);
        }

        public abstract boolean c(Object obj, long j10);

        public abstract double d(Object obj, long j10);

        public abstract float e(Object obj, long j10);

        public final int f(Object obj, long j10) {
            return this.f2259a.getInt(obj, j10);
        }

        public final long g(Object obj, long j10) {
            return this.f2259a.getLong(obj, j10);
        }

        public final Object h(Object obj, long j10) {
            return this.f2259a.getObject(obj, j10);
        }

        public final long i(Field field) {
            return this.f2259a.objectFieldOffset(field);
        }

        public abstract void j(Object obj, long j10, boolean z10);

        public abstract void k(Object obj, long j10, byte b10);

        public abstract void l(Object obj, long j10, double d10);

        public abstract void m(Object obj, long j10, float f10);

        public final void n(Object obj, long j10, int i10) {
            this.f2259a.putInt(obj, j10, i10);
        }

        public final void o(Object obj, long j10, long j11) {
            this.f2259a.putLong(obj, j10, j11);
        }

        public final void p(Object obj, long j10, Object obj2) {
            this.f2259a.putObject(obj, j10, obj2);
        }

        public boolean q() {
            Unsafe unsafe = this.f2259a;
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
                o1.D(th);
                return false;
            }
        }

        public boolean r() {
            Unsafe unsafe = this.f2259a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                if (o1.b() == null) {
                    return false;
                }
                return true;
            } catch (Throwable th) {
                o1.D(th);
                return false;
            }
        }
    }

    static {
        boolean z10;
        long j10 = j(byte[].class);
        f2243h = j10;
        f2244i = j(boolean[].class);
        f2245j = k(boolean[].class);
        f2246k = j(int[].class);
        f2247l = k(int[].class);
        f2248m = j(long[].class);
        f2249n = k(long[].class);
        f2250o = j(float[].class);
        f2251p = k(float[].class);
        f2252q = j(double[].class);
        f2253r = k(double[].class);
        f2254s = j(Object[].class);
        f2255t = k(Object[].class);
        f2256u = o(l());
        f2257v = (int) (j10 & 7);
        if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN) {
            z10 = true;
        } else {
            z10 = false;
        }
        f2258w = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Unsafe A() {
        try {
            return (Unsafe) AccessController.doPrivileged(new a());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean B() {
        return f2242g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean C() {
        return f2241f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void D(Throwable th) {
        Logger logger = Logger.getLogger(o1.class.getName());
        Level level = Level.WARNING;
        logger.log(level, "platform method missing - proto runtime falling back to safer methods: " + th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void E(Object obj, long j10, boolean z10) {
        f2240e.j(obj, j10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void F(Object obj, long j10, boolean z10) {
        I(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void G(Object obj, long j10, boolean z10) {
        J(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void H(byte[] bArr, long j10, byte b10) {
        f2240e.k(bArr, f2243h + j10, b10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void I(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int w10 = w(obj, j11);
        int i10 = ((~((int) j10)) & 3) << 3;
        M(obj, j11, ((255 & b10) << i10) | (w10 & (~(KotlinVersion.MAX_COMPONENT_VALUE << i10))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void J(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int i10 = (((int) j10) & 3) << 3;
        M(obj, j11, ((255 & b10) << i10) | (w(obj, j11) & (~(KotlinVersion.MAX_COMPONENT_VALUE << i10))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void K(Object obj, long j10, double d10) {
        f2240e.l(obj, j10, d10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void L(Object obj, long j10, float f10) {
        f2240e.m(obj, j10, f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void M(Object obj, long j10, int i10) {
        f2240e.n(obj, j10, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void N(Object obj, long j10, long j11) {
        f2240e.o(obj, j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void O(Object obj, long j10, Object obj2) {
        f2240e.p(obj, j10, obj2);
    }

    private static boolean P() {
        e eVar = f2240e;
        if (eVar == null) {
            return false;
        }
        return eVar.q();
    }

    private static boolean Q() {
        e eVar = f2240e;
        if (eVar == null) {
            return false;
        }
        return eVar.r();
    }

    static /* synthetic */ Field b() {
        return l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object i(Class cls) {
        try {
            return f2236a.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    private static int j(Class cls) {
        if (f2242g) {
            return f2240e.a(cls);
        }
        return -1;
    }

    private static int k(Class cls) {
        if (f2242g) {
            return f2240e.b(cls);
        }
        return -1;
    }

    private static Field l() {
        Field n10;
        if (androidx.datastore.preferences.protobuf.d.c() && (n10 = n(Buffer.class, "effectiveDirectAddress")) != null) {
            return n10;
        }
        Field n11 = n(Buffer.class, "address");
        if (n11 == null || n11.getType() != Long.TYPE) {
            return null;
        }
        return n11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static boolean m(Class cls) {
        if (!androidx.datastore.preferences.protobuf.d.c()) {
            return false;
        }
        try {
            Class cls2 = f2237b;
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

    private static Field n(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static long o(Field field) {
        e eVar;
        if (field != null && (eVar = f2240e) != null) {
            return eVar.i(field);
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean p(Object obj, long j10) {
        return f2240e.c(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean q(Object obj, long j10) {
        if (s(obj, j10) != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean r(Object obj, long j10) {
        if (t(obj, j10) != 0) {
            return true;
        }
        return false;
    }

    private static byte s(Object obj, long j10) {
        return (byte) ((w(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & KotlinVersion.MAX_COMPONENT_VALUE);
    }

    private static byte t(Object obj, long j10) {
        return (byte) ((w(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & KotlinVersion.MAX_COMPONENT_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double u(Object obj, long j10) {
        return f2240e.d(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float v(Object obj, long j10) {
        return f2240e.e(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int w(Object obj, long j10) {
        return f2240e.f(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long x(Object obj, long j10) {
        return f2240e.g(obj, j10);
    }

    private static e y() {
        Unsafe unsafe = f2236a;
        if (unsafe == null) {
            return null;
        }
        if (androidx.datastore.preferences.protobuf.d.c()) {
            if (f2238c) {
                return new c(unsafe);
            }
            if (!f2239d) {
                return null;
            }
            return new b(unsafe);
        }
        return new d(unsafe);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object z(Object obj, long j10) {
        return f2240e.h(obj, j10);
    }
}
