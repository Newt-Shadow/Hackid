package com.google.android.gms.internal.auth;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public abstract class b2 extends a1 {
    private static final Map zzb = new ConcurrentHashMap();
    private int zzd = -1;
    protected r3 zzc = r3.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b2 b(Class cls) {
        Map map = zzb;
        b2 b2Var = (b2) map.get(cls);
        if (b2Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                b2Var = (b2) map.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (b2Var == null) {
            b2Var = (b2) ((b2) a4.e(cls)).o(6, null, null);
            if (b2Var != null) {
                map.put(cls, b2Var);
            } else {
                throw new IllegalStateException();
            }
        }
        return b2Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
        if (r1 != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.auth.b2 d(com.google.android.gms.internal.auth.b2 r3, byte[] r4) {
        /*
            int r0 = r4.length
            com.google.android.gms.internal.auth.u1 r1 = com.google.android.gms.internal.auth.u1.f6180b
            r2 = 0
            com.google.android.gms.internal.auth.b2 r3 = p(r3, r4, r2, r0, r1)
            if (r3 == 0) goto L44
            r4 = 1
            r0 = 0
            java.lang.Object r1 = r3.o(r4, r0, r0)
            java.lang.Byte r1 = (java.lang.Byte) r1
            byte r1 = r1.byteValue()
            if (r1 != r4) goto L19
            goto L44
        L19:
            if (r1 == 0) goto L37
            java.lang.Class r1 = r3.getClass()
            com.google.android.gms.internal.auth.h3 r2 = com.google.android.gms.internal.auth.h3.a()
            com.google.android.gms.internal.auth.k3 r1 = r2.b(r1)
            boolean r1 = r1.f(r3)
            if (r4 == r1) goto L2f
            r4 = r0
            goto L30
        L2f:
            r4 = r3
        L30:
            r2 = 2
            r3.o(r2, r4, r0)
            if (r1 == 0) goto L37
            goto L44
        L37:
            com.google.android.gms.internal.auth.o3 r4 = new com.google.android.gms.internal.auth.o3
            r4.<init>(r3)
            com.google.android.gms.internal.auth.g2 r4 = r4.a()
            r4.e(r3)
            throw r4
        L44:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.b2.d(com.google.android.gms.internal.auth.b2, byte[]):com.google.android.gms.internal.auth.b2");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static d2 e() {
        return i3.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object f(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object i(y2 y2Var, String str, Object[] objArr) {
        return new j3(y2Var, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", objArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void l(Class cls, b2 b2Var) {
        b2Var.k();
        zzb.put(cls, b2Var);
    }

    private static b2 p(b2 b2Var, byte[] bArr, int i10, int i11, u1 u1Var) {
        b2 c10 = b2Var.c();
        try {
            k3 b10 = h3.a().b(c10.getClass());
            b10.d(c10, bArr, 0, i11, new d1(u1Var));
            b10.a(c10);
            return c10;
        } catch (g2 e10) {
            e10.e(c10);
            throw e10;
        } catch (o3 e11) {
            g2 a10 = e11.a();
            a10.e(c10);
            throw a10;
        } catch (IOException e12) {
            if (e12.getCause() instanceof g2) {
                throw ((g2) e12.getCause());
            }
            g2 g2Var = new g2(e12);
            g2Var.e(c10);
            throw g2Var;
        } catch (IndexOutOfBoundsException unused) {
            g2 f10 = g2.f();
            f10.e(c10);
            throw f10;
        }
    }

    final int a() {
        return h3.a().b(getClass()).c(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final b2 c() {
        return (b2) o(4, null, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return h3.a().b(getClass()).h(this, (b2) obj);
    }

    @Override // com.google.android.gms.internal.auth.z2
    public final /* synthetic */ y2 h() {
        return (b2) o(6, null, null);
    }

    public final int hashCode() {
        if (!n()) {
            int i10 = this.zza;
            if (i10 == 0) {
                int a10 = a();
                this.zza = a10;
                return a10;
            }
            return i10;
        }
        return a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void j() {
        h3.a().b(getClass()).a(this);
        k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k() {
        this.zzd &= Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m(int i10) {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean n() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object o(int i10, Object obj, Object obj2);

    public final String toString() {
        return a3.a(this, super.toString());
    }
}
