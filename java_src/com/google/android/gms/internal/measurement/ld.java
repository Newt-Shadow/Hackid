package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.KotlinVersion;
import sun.misc.Unsafe;
/* loaded from: classes.dex */
abstract class ld {

    /* renamed from: a  reason: collision with root package name */
    private static final Unsafe f6503a;

    /* renamed from: b  reason: collision with root package name */
    private static final Class f6504b;

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f6505c;

    /* renamed from: d  reason: collision with root package name */
    private static final kd f6506d;

    /* renamed from: e  reason: collision with root package name */
    private static final boolean f6507e;

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f6508f;

    /* renamed from: g  reason: collision with root package name */
    static final long f6509g;

    /* renamed from: h  reason: collision with root package name */
    static final boolean f6510h;

    /* JADX WARN: Removed duplicated region for block: B:22:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0130  */
    static {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.ld.<clinit>():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean A(Object obj, long j10) {
        if (((byte) ((f6506d.f6475a.getInt(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & KotlinVersion.MAX_COMPONENT_VALUE)) != 0) {
            return true;
        }
        return false;
    }

    static /* synthetic */ void D(Throwable th) {
        Logger.getLogger(ld.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    private static int E(Class cls) {
        if (f6508f) {
            return f6506d.f6475a.arrayBaseOffset(cls);
        }
        return -1;
    }

    private static int a(Class cls) {
        if (f6508f) {
            return f6506d.f6475a.arrayIndexScale(cls);
        }
        return -1;
    }

    private static Field b() {
        int i10 = x9.f6884a;
        Field c10 = c(Buffer.class, "effectiveDirectAddress");
        if (c10 == null) {
            Field c11 = c(Buffer.class, "address");
            if (c11 != null && c11.getType() == Long.TYPE) {
                return c11;
            }
            return null;
        }
        return c10;
    }

    private static Field c(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Object obj, long j10, byte b10) {
        Unsafe unsafe = f6506d.f6475a;
        long j11 = (-4) & j10;
        int i10 = unsafe.getInt(obj, j11);
        int i11 = ((~((int) j10)) & 3) << 3;
        unsafe.putInt(obj, j11, ((255 & b10) << i11) | (i10 & (~(KotlinVersion.MAX_COMPONENT_VALUE << i11))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Object obj, long j10, byte b10) {
        Unsafe unsafe = f6506d.f6475a;
        long j11 = (-4) & j10;
        int i10 = (((int) j10) & 3) << 3;
        unsafe.putInt(obj, j11, ((255 & b10) << i10) | (unsafe.getInt(obj, j11) & (~(KotlinVersion.MAX_COMPONENT_VALUE << i10))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean f() {
        return f6508f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean g() {
        return f6507e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object h(Class cls) {
        try {
            return f6503a.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(Object obj, long j10) {
        return f6506d.f6475a.getInt(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void j(Object obj, long j10, int i10) {
        f6506d.f6475a.putInt(obj, j10, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long k(Object obj, long j10) {
        return f6506d.f6475a.getLong(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void l(Object obj, long j10, long j11) {
        f6506d.f6475a.putLong(obj, j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean m(Object obj, long j10) {
        return f6506d.b(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void n(Object obj, long j10, boolean z10) {
        f6506d.c(obj, j10, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float o(Object obj, long j10) {
        return f6506d.d(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void p(Object obj, long j10, float f10) {
        f6506d.e(obj, j10, f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double q(Object obj, long j10) {
        return f6506d.f(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void r(Object obj, long j10, double d10) {
        f6506d.g(obj, j10, d10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object s(Object obj, long j10) {
        return f6506d.f6475a.getObject(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void t(Object obj, long j10, Object obj2) {
        f6506d.f6475a.putObject(obj, j10, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void u(byte[] bArr, long j10, byte b10) {
        f6506d.a(bArr, f6509g + j10, b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Unsafe v() {
        try {
            return (Unsafe) AccessController.doPrivileged(new hd());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static boolean w(Class cls) {
        int i10 = x9.f6884a;
        try {
            Class cls2 = f6504b;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean z(Object obj, long j10) {
        if (((byte) ((f6506d.f6475a.getInt(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & KotlinVersion.MAX_COMPONENT_VALUE)) != 0) {
            return true;
        }
        return false;
    }
}
