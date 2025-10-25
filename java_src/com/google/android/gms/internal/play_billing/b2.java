package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public abstract class b2 extends o0 {
    private static final Map zzb = new ConcurrentHashMap();
    private int zzd = -1;
    protected w3 zzc = w3.c();

    private final int A(q3 q3Var) {
        return n3.a().b(getClass()).c(this);
    }

    private static b2 e(b2 b2Var, byte[] bArr, int i10, int i11, q1 q1Var) {
        b2 m10 = b2Var.m();
        try {
            q3 b10 = n3.a().b(m10.getClass());
            b10.g(m10, bArr, 0, i11, new r0(q1Var));
            b10.a(m10);
            return m10;
        } catch (l2 e10) {
            e10.f(m10);
            throw e10;
        } catch (u3 e11) {
            l2 a10 = e11.a();
            a10.f(m10);
            throw a10;
        } catch (IOException e12) {
            if (e12.getCause() instanceof l2) {
                throw ((l2) e12.getCause());
            }
            l2 l2Var = new l2(e12);
            l2Var.f(m10);
            throw l2Var;
        } catch (IndexOutOfBoundsException unused) {
            l2 g10 = l2.g();
            g10.f(m10);
            throw g10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b2 j(Class cls) {
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
            b2Var = (b2) ((b2) f4.j(cls)).z(6, null, null);
            if (b2Var != null) {
                map.put(cls, b2Var);
            } else {
                throw new IllegalStateException();
            }
        }
        return b2Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static b2 n(b2 b2Var, byte[] bArr, q1 q1Var) {
        b2 e10 = e(b2Var, bArr, 0, bArr.length, q1Var);
        if (e10 != null && !e10.x()) {
            l2 a10 = new u3(e10).a();
            a10.f(e10);
            throw a10;
        }
        return e10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static g2 o() {
        return c2.i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static i2 p() {
        return o3.g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static i2 q(i2 i2Var) {
        int i10;
        int size = i2Var.size();
        if (size == 0) {
            i10 = 10;
        } else {
            i10 = size + size;
        }
        return i2Var.j(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object r(Method method, Object obj, Object... objArr) {
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
    public static Object s(f3 f3Var, String str, Object[] objArr) {
        return new p3(f3Var, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void v(Class cls, b2 b2Var) {
        b2Var.u();
        zzb.put(cls, b2Var);
    }

    @Override // com.google.android.gms.internal.play_billing.f3
    public final void a(m1 m1Var) {
        n3.a().b(getClass()).e(this, n1.K(m1Var));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.o0
    public final int b(q3 q3Var) {
        if (y()) {
            int c10 = q3Var.c(this);
            if (c10 >= 0) {
                return c10;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + c10);
        }
        int i10 = this.zzd & Integer.MAX_VALUE;
        if (i10 == Integer.MAX_VALUE) {
            int c11 = q3Var.c(this);
            if (c11 >= 0) {
                this.zzd = (this.zzd & Integer.MIN_VALUE) | c11;
                return c11;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + c11);
        }
        return i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return n3.a().b(getClass()).i(this, (b2) obj);
    }

    final int f() {
        return n3.a().b(getClass()).d(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final y1 g() {
        return (y1) z(5, null, null);
    }

    public final int hashCode() {
        if (!y()) {
            int i10 = this.zza;
            if (i10 == 0) {
                int f10 = f();
                this.zza = f10;
                return f10;
            }
            return i10;
        }
        return f();
    }

    @Override // com.google.android.gms.internal.play_billing.g3
    public final /* synthetic */ f3 i() {
        return (b2) z(6, null, null);
    }

    @Override // com.google.android.gms.internal.play_billing.f3
    public final int k() {
        int i10;
        if (y()) {
            i10 = A(null);
            if (i10 < 0) {
                throw new IllegalStateException("serialized size must be non-negative, was " + i10);
            }
        } else {
            i10 = this.zzd & Integer.MAX_VALUE;
            if (i10 == Integer.MAX_VALUE) {
                i10 = A(null);
                if (i10 >= 0) {
                    this.zzd = (this.zzd & Integer.MIN_VALUE) | i10;
                } else {
                    throw new IllegalStateException("serialized size must be non-negative, was " + i10);
                }
            }
        }
        return i10;
    }

    @Override // com.google.android.gms.internal.play_billing.f3
    public final /* synthetic */ e3 l() {
        return (y1) z(5, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final b2 m() {
        return (b2) z(4, null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void t() {
        n3.a().b(getClass()).a(this);
        u();
    }

    public final String toString() {
        return h3.a(this, super.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void u() {
        this.zzd &= Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void w(int i10) {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    public final boolean x() {
        Object obj;
        byte byteValue = ((Byte) z(1, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean b10 = n3.a().b(getClass()).b(this);
        if (true != b10) {
            obj = null;
        } else {
            obj = this;
        }
        z(2, obj, null);
        return b10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean y() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object z(int i10, Object obj, Object obj2);
}
