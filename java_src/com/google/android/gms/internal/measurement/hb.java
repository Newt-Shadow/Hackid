package com.google.android.gms.internal.measurement;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public abstract class hb extends v9 {
    private static final Map zzd = new ConcurrentHashMap();
    private int zzb = -1;
    protected fd zzc = fd.a();

    private static final boolean A(hb hbVar, boolean z10) {
        Object obj;
        byte byteValue = ((Byte) hbVar.B(1, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean b10 = qc.a().b(hbVar.getClass()).b(hbVar);
        if (z10) {
            if (true != b10) {
                obj = null;
            } else {
                obj = hbVar;
            }
            hbVar.B(2, obj, null);
        }
        return b10;
    }

    private final int h(tc tcVar) {
        return qc.a().b(getClass()).a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static hb r(Class cls) {
        Map map = zzd;
        hb hbVar = (hb) map.get(cls);
        if (hbVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                hbVar = (hb) map.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (hbVar == null) {
            hbVar = (hb) ((hb) ld.h(cls)).B(6, null, null);
            if (hbVar != null) {
                map.put(cls, hbVar);
            } else {
                throw new IllegalStateException();
            }
        }
        return hbVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void s(Class cls, hb hbVar) {
        hbVar.k();
        zzd.put(cls, hbVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object t(ic icVar, String str, Object[] objArr) {
        return new sc(icVar, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object u(Method method, Object obj, Object... objArr) {
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
    public static lb v() {
        return ib.g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static mb w() {
        return wb.g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static mb x(mb mbVar) {
        int size = mbVar.size();
        return mbVar.j(size + size);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static nb y() {
        return rc.g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static nb z(nb nbVar) {
        int size = nbVar.size();
        return nbVar.u(size + size);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object B(int i10, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.measurement.ic
    public final int a() {
        int i10;
        if (j()) {
            i10 = h(null);
            if (i10 < 0) {
                StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 42);
                sb2.append("serialized size must be non-negative, was ");
                sb2.append(i10);
                throw new IllegalStateException(sb2.toString());
            }
        } else {
            i10 = this.zzb & Integer.MAX_VALUE;
            if (i10 == Integer.MAX_VALUE) {
                i10 = h(null);
                if (i10 >= 0) {
                    this.zzb = (this.zzb & Integer.MIN_VALUE) | i10;
                } else {
                    StringBuilder sb3 = new StringBuilder(String.valueOf(i10).length() + 42);
                    sb3.append("serialized size must be non-negative, was ");
                    sb3.append(i10);
                    throw new IllegalStateException(sb3.toString());
                }
            }
        }
        return i10;
    }

    @Override // com.google.android.gms.internal.measurement.ic
    public final /* synthetic */ hc b() {
        return (fb) B(5, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.ic
    public final void c(pa paVar) {
        qc.a().b(getClass()).g(this, qa.L(paVar));
    }

    @Override // com.google.android.gms.internal.measurement.jc
    public final /* synthetic */ ic d() {
        return (hb) B(6, null, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return qc.a().b(getClass()).h(this, (hb) obj);
    }

    @Override // com.google.android.gms.internal.measurement.v9
    final int f(tc tcVar) {
        if (j()) {
            int a10 = tcVar.a(this);
            if (a10 >= 0) {
                return a10;
            }
            StringBuilder sb2 = new StringBuilder(String.valueOf(a10).length() + 42);
            sb2.append("serialized size must be non-negative, was ");
            sb2.append(a10);
            throw new IllegalStateException(sb2.toString());
        }
        int i10 = this.zzb & Integer.MAX_VALUE;
        if (i10 == Integer.MAX_VALUE) {
            int a11 = tcVar.a(this);
            if (a11 >= 0) {
                this.zzb = (this.zzb & Integer.MIN_VALUE) | a11;
                return a11;
            }
            StringBuilder sb3 = new StringBuilder(String.valueOf(a11).length() + 42);
            sb3.append("serialized size must be non-negative, was ");
            sb3.append(a11);
            throw new IllegalStateException(sb3.toString());
        }
        return i10;
    }

    public final int hashCode() {
        if (!j()) {
            int i10 = this.zza;
            if (i10 == 0) {
                int m10 = m();
                this.zza = m10;
                return m10;
            }
            return i10;
        }
        return m();
    }

    public final boolean i() {
        return A(this, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean j() {
        return (this.zzb & Integer.MIN_VALUE) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k() {
        this.zzb &= Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final hb l() {
        return (hb) B(4, null, null);
    }

    final int m() {
        return qc.a().b(getClass()).d(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void n() {
        qc.a().b(getClass()).e(this);
        k();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final fb o() {
        return (fb) B(5, null, null);
    }

    public final fb p() {
        fb fbVar = (fb) B(5, null, null);
        fbVar.q(this);
        return fbVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void q(int i10) {
        this.zzb = (this.zzb & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    public final String toString() {
        return kc.a(this, super.toString());
    }
}
