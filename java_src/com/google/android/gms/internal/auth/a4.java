package com.google.android.gms.internal.auth;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.KotlinVersion;
import sun.misc.Unsafe;
/* loaded from: classes.dex */
abstract class a4 {

    /* renamed from: a  reason: collision with root package name */
    private static final Unsafe f5964a;

    /* renamed from: b  reason: collision with root package name */
    private static final Class f5965b;

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f5966c;

    /* renamed from: d  reason: collision with root package name */
    private static final z3 f5967d;

    /* renamed from: e  reason: collision with root package name */
    private static final boolean f5968e;

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f5969f;

    /* renamed from: g  reason: collision with root package name */
    static final boolean f5970g;

    /* JADX WARN: Removed duplicated region for block: B:22:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x012c  */
    static {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.a4.<clinit>():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double a(Object obj, long j10) {
        return f5967d.a(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float b(Object obj, long j10) {
        return f5967d.b(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(Object obj, long j10) {
        return f5967d.f6207a.getInt(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long d(Object obj, long j10) {
        return f5967d.f6207a.getLong(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object e(Class cls) {
        try {
            return f5964a.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object f(Object obj, long j10) {
        return f5967d.f6207a.getObject(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Unsafe g() {
        try {
            return (Unsafe) AccessController.doPrivileged(new w3());
        } catch (Throwable unused) {
            return null;
        }
    }

    static /* bridge */ /* synthetic */ void h(Throwable th) {
        Logger.getLogger(a4.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void i(Object obj, long j10, boolean z10) {
        z3 z3Var = f5967d;
        long j11 = (-4) & j10;
        int i10 = z3Var.f6207a.getInt(obj, j11);
        int i11 = ((~((int) j10)) & 3) << 3;
        z3Var.f6207a.putInt(obj, j11, ((z10 ? 1 : 0) << i11) | ((~(KotlinVersion.MAX_COMPONENT_VALUE << i11)) & i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void j(Object obj, long j10, boolean z10) {
        z3 z3Var = f5967d;
        long j11 = (-4) & j10;
        int i10 = z3Var.f6207a.getInt(obj, j11);
        int i11 = (((int) j10) & 3) << 3;
        z3Var.f6207a.putInt(obj, j11, ((z10 ? 1 : 0) << i11) | ((~(KotlinVersion.MAX_COMPONENT_VALUE << i11)) & i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k(Object obj, long j10, boolean z10) {
        f5967d.c(obj, j10, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void l(Object obj, long j10, double d10) {
        f5967d.d(obj, j10, d10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void m(Object obj, long j10, float f10) {
        f5967d.e(obj, j10, f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void n(Object obj, long j10, int i10) {
        f5967d.f6207a.putInt(obj, j10, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void o(Object obj, long j10, long j11) {
        f5967d.f6207a.putLong(obj, j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void p(Object obj, long j10, Object obj2) {
        f5967d.f6207a.putObject(obj, j10, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ boolean q(Object obj, long j10) {
        if (((byte) ((f5967d.f6207a.getInt(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & KotlinVersion.MAX_COMPONENT_VALUE)) != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ boolean r(Object obj, long j10) {
        if (((byte) ((f5967d.f6207a.getInt(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & KotlinVersion.MAX_COMPONENT_VALUE)) != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static boolean s(Class cls) {
        int i10 = c1.f5979a;
        try {
            Class cls2 = f5965b;
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
    public static boolean t(Object obj, long j10) {
        return f5967d.f(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean u() {
        return f5969f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean v() {
        return f5968e;
    }

    private static int w(Class cls) {
        if (f5969f) {
            return f5967d.f6207a.arrayBaseOffset(cls);
        }
        return -1;
    }

    private static int x(Class cls) {
        if (f5969f) {
            return f5967d.f6207a.arrayIndexScale(cls);
        }
        return -1;
    }

    private static Field y() {
        int i10 = c1.f5979a;
        Field z10 = z(Buffer.class, "effectiveDirectAddress");
        if (z10 == null) {
            Field z11 = z(Buffer.class, "address");
            if (z11 != null && z11.getType() == Long.TYPE) {
                return z11;
            }
            return null;
        }
        return z10;
    }

    private static Field z(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
