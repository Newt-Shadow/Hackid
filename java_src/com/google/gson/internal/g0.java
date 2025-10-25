package com.google.gson.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public abstract class g0 {

    /* renamed from: a  reason: collision with root package name */
    public static final g0 f9294a = c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends g0 {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Method f9295b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f9296c;

        a(Method method, Object obj) {
            this.f9295b = method;
            this.f9296c = obj;
        }

        @Override // com.google.gson.internal.g0
        public Object d(Class cls) {
            g0.b(cls);
            return this.f9295b.invoke(this.f9296c, cls);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b extends g0 {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Method f9297b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f9298c;

        b(Method method, int i10) {
            this.f9297b = method;
            this.f9298c = i10;
        }

        @Override // com.google.gson.internal.g0
        public Object d(Class cls) {
            g0.b(cls);
            return this.f9297b.invoke(null, cls, Integer.valueOf(this.f9298c));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c extends g0 {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Method f9299b;

        c(Method method) {
            this.f9299b = method;
        }

        @Override // com.google.gson.internal.g0
        public Object d(Class cls) {
            g0.b(cls);
            return this.f9299b.invoke(null, cls, Object.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d extends g0 {
        d() {
        }

        @Override // com.google.gson.internal.g0
        public Object d(Class cls) {
            throw new UnsupportedOperationException("Cannot allocate " + cls + ". Usage of JDK sun.misc.Unsafe is enabled, but it could not be used. Make sure your runtime is configured correctly.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Class cls) {
        String s10 = u.s(cls);
        if (s10 == null) {
            return;
        }
        throw new AssertionError("UnsafeAllocator is used for non-instantiable type: " + s10);
    }

    private static g0 c() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return new a(cls.getMethod("allocateInstance", Class.class), declaredField.get(null));
        } catch (Exception unused) {
            try {
                try {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod.setAccessible(true);
                    int intValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    return new b(declaredMethod2, intValue);
                } catch (Exception unused2) {
                    Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    return new c(declaredMethod3);
                }
            } catch (Exception unused3) {
                return new d();
            }
        }
    }

    public abstract Object d(Class cls);
}
