package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.a;
import com.google.crypto.tink.shaded.protobuf.e;
import com.google.crypto.tink.shaded.protobuf.z;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public abstract class x extends com.google.crypto.tink.shaded.protobuf.a {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH_CODE = 0;
    static final int UNINITIALIZED_SERIALIZED_SIZE = Integer.MAX_VALUE;
    private static Map<Object, x> defaultInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize = -1;
    protected k1 unknownFields = k1.c();

    /* loaded from: classes.dex */
    public static abstract class a extends a.AbstractC0103a {

        /* renamed from: a  reason: collision with root package name */
        private final x f8652a;

        /* renamed from: b  reason: collision with root package name */
        protected x f8653b;

        /* JADX INFO: Access modifiers changed from: protected */
        public a(x xVar) {
            this.f8652a = xVar;
            if (!xVar.D()) {
                this.f8653b = r();
                return;
            }
            throw new IllegalArgumentException("Default instance must be immutable.");
        }

        private static void q(Object obj, Object obj2) {
            z0.a().d(obj).a(obj, obj2);
        }

        private x r() {
            return this.f8652a.J();
        }

        public final x j() {
            x k10 = k();
            if (k10.B()) {
                return k10;
            }
            throw a.AbstractC0103a.i(k10);
        }

        public x k() {
            if (!this.f8653b.D()) {
                return this.f8653b;
            }
            this.f8653b.E();
            return this.f8653b;
        }

        public a l() {
            a H = o().H();
            H.f8653b = k();
            return H;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void m() {
            if (!this.f8653b.D()) {
                n();
            }
        }

        protected void n() {
            x r10 = r();
            q(r10, this.f8653b);
            this.f8653b = r10;
        }

        public x o() {
            return this.f8652a;
        }

        public a p(x xVar) {
            if (o().equals(xVar)) {
                return this;
            }
            m();
            q(this.f8653b, xVar);
            return this;
        }
    }

    /* loaded from: classes.dex */
    protected static class b extends com.google.crypto.tink.shaded.protobuf.b {

        /* renamed from: b  reason: collision with root package name */
        private final x f8654b;

        public b(x xVar) {
            this.f8654b = xVar;
        }
    }

    /* loaded from: classes.dex */
    public static class c extends n {
    }

    /* loaded from: classes.dex */
    public enum d {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object A(Method method, Object obj, Object... objArr) {
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

    protected static final boolean C(x xVar, boolean z10) {
        Object obj;
        byte byteValue = ((Byte) xVar.q(d.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean c10 = z0.a().d(xVar).c(xVar);
        if (z10) {
            d dVar = d.SET_MEMOIZED_IS_INITIALIZED;
            if (c10) {
                obj = xVar;
            } else {
                obj = null;
            }
            xVar.r(dVar, obj);
        }
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static z.d G(z.d dVar) {
        int i10;
        int size = dVar.size();
        if (size == 0) {
            i10 = 10;
        } else {
            i10 = size * 2;
        }
        return dVar.c(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object I(o0 o0Var, String str, Object[] objArr) {
        return new b1(o0Var, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static x K(x xVar, h hVar, p pVar) {
        return k(N(xVar, hVar, pVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static x L(x xVar, InputStream inputStream, p pVar) {
        return k(O(xVar, i.f(inputStream), pVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static x M(x xVar, byte[] bArr, p pVar) {
        return k(P(xVar, bArr, 0, bArr.length, pVar));
    }

    private static x N(x xVar, h hVar, p pVar) {
        i A = hVar.A();
        x O = O(xVar, A, pVar);
        try {
            A.a(0);
            return O;
        } catch (a0 e10) {
            throw e10.k(O);
        }
    }

    static x O(x xVar, i iVar, p pVar) {
        x J = xVar.J();
        try {
            d1 d10 = z0.a().d(J);
            d10.i(J, j.O(iVar), pVar);
            d10.b(J);
            return J;
        } catch (a0 e10) {
            e = e10;
            if (e.a()) {
                e = new a0(e);
            }
            throw e.k(J);
        } catch (i1 e11) {
            throw e11.a().k(J);
        } catch (IOException e12) {
            if (e12.getCause() instanceof a0) {
                throw ((a0) e12.getCause());
            }
            throw new a0(e12).k(J);
        } catch (RuntimeException e13) {
            if (e13.getCause() instanceof a0) {
                throw ((a0) e13.getCause());
            }
            throw e13;
        }
    }

    private static x P(x xVar, byte[] bArr, int i10, int i11, p pVar) {
        x J = xVar.J();
        try {
            d1 d10 = z0.a().d(J);
            d10.g(J, bArr, i10, i10 + i11, new e.a(pVar));
            d10.b(J);
            return J;
        } catch (a0 e10) {
            e = e10;
            if (e.a()) {
                e = new a0(e);
            }
            throw e.k(J);
        } catch (i1 e11) {
            throw e11.a().k(J);
        } catch (IOException e12) {
            if (e12.getCause() instanceof a0) {
                throw ((a0) e12.getCause());
            }
            throw new a0(e12).k(J);
        } catch (IndexOutOfBoundsException unused) {
            throw a0.m().k(J);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void Q(Class cls, x xVar) {
        xVar.F();
        defaultInstanceMap.put(cls, xVar);
    }

    private static x k(x xVar) {
        if (xVar != null && !xVar.B()) {
            throw xVar.i().a().k(xVar);
        }
        return xVar;
    }

    private int o(d1 d1Var) {
        if (d1Var == null) {
            return z0.a().d(this).e(this);
        }
        return d1Var.e(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static z.d u() {
        return a1.i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static x v(Class cls) {
        x xVar = defaultInstanceMap.get(cls);
        if (xVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                xVar = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (xVar == null) {
            xVar = ((x) n1.k(cls)).w();
            if (xVar != null) {
                defaultInstanceMap.put(cls, xVar);
            } else {
                throw new IllegalStateException();
            }
        }
        return xVar;
    }

    public final boolean B() {
        return C(this, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean D() {
        if ((this.memoizedSerializedSize & MUTABLE_FLAG_MASK) != 0) {
            return true;
        }
        return false;
    }

    protected void E() {
        z0.a().d(this).b(this);
        F();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void F() {
        this.memoizedSerializedSize &= Integer.MAX_VALUE;
    }

    public final a H() {
        return (a) q(d.NEW_BUILDER);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x J() {
        return (x) q(d.NEW_MUTABLE_INSTANCE);
    }

    void R(int i10) {
        this.memoizedHashCode = i10;
    }

    void S(int i10) {
        if (i10 >= 0) {
            this.memoizedSerializedSize = (i10 & Integer.MAX_VALUE) | (this.memoizedSerializedSize & MUTABLE_FLAG_MASK);
            return;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + i10);
    }

    public final a T() {
        return ((a) q(d.NEW_BUILDER)).p(this);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.o0
    public int b() {
        return g(null);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.o0
    public void d(k kVar) {
        z0.a().d(this).h(this, l.P(kVar));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return z0.a().d(this).d(this, (x) obj);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.a
    int g(d1 d1Var) {
        if (D()) {
            int o10 = o(d1Var);
            if (o10 >= 0) {
                return o10;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + o10);
        } else if (y() != Integer.MAX_VALUE) {
            return y();
        } else {
            int o11 = o(d1Var);
            S(o11);
            return o11;
        }
    }

    public int hashCode() {
        if (D()) {
            return n();
        }
        if (z()) {
            R(n());
        }
        return x();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object j() {
        return q(d.BUILD_MESSAGE_INFO);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        this.memoizedHashCode = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m() {
        S(Integer.MAX_VALUE);
    }

    int n() {
        return z0.a().d(this).f(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final a p() {
        return (a) q(d.NEW_BUILDER);
    }

    protected Object q(d dVar) {
        return t(dVar, null, null);
    }

    protected Object r(d dVar, Object obj) {
        return t(dVar, obj, null);
    }

    protected abstract Object t(d dVar, Object obj, Object obj2);

    public String toString() {
        return q0.f(this, super.toString());
    }

    public final x w() {
        return (x) q(d.GET_DEFAULT_INSTANCE);
    }

    int x() {
        return this.memoizedHashCode;
    }

    int y() {
        return this.memoizedSerializedSize & Integer.MAX_VALUE;
    }

    boolean z() {
        if (x() == 0) {
            return true;
        }
        return false;
    }
}
