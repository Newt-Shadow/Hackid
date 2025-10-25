package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.a;
import androidx.datastore.preferences.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public abstract class w extends androidx.datastore.preferences.protobuf.a {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH_CODE = 0;
    static final int UNINITIALIZED_SERIALIZED_SIZE = Integer.MAX_VALUE;
    private static Map<Object, w> defaultInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize = -1;
    protected m1 unknownFields = m1.c();

    /* loaded from: classes.dex */
    public static abstract class a extends a.AbstractC0033a {

        /* renamed from: a  reason: collision with root package name */
        private final w f2374a;

        /* renamed from: b  reason: collision with root package name */
        protected w f2375b;

        /* JADX INFO: Access modifiers changed from: protected */
        public a(w wVar) {
            this.f2374a = wVar;
            if (!wVar.C()) {
                this.f2375b = q();
                return;
            }
            throw new IllegalArgumentException("Default instance must be immutable.");
        }

        private static void p(Object obj, Object obj2) {
            a1.a().d(obj).a(obj, obj2);
        }

        private w q() {
            return this.f2374a.I();
        }

        public final w j() {
            w s10 = s();
            if (s10.A()) {
                return s10;
            }
            throw a.AbstractC0033a.i(s10);
        }

        @Override // androidx.datastore.preferences.protobuf.p0.a
        /* renamed from: k */
        public w s() {
            if (!this.f2375b.C()) {
                return this.f2375b;
            }
            this.f2375b.D();
            return this.f2375b;
        }

        /* renamed from: l */
        public a clone() {
            a c10 = a().c();
            c10.f2375b = s();
            return c10;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void m() {
            if (!this.f2375b.C()) {
                n();
            }
        }

        protected void n() {
            w q10 = q();
            p(q10, this.f2375b);
            this.f2375b = q10;
        }

        @Override // androidx.datastore.preferences.protobuf.q0
        /* renamed from: o */
        public w a() {
            return this.f2374a;
        }
    }

    /* loaded from: classes.dex */
    protected static class b extends androidx.datastore.preferences.protobuf.b {

        /* renamed from: b  reason: collision with root package name */
        private final w f2376b;

        public b(w wVar) {
            this.f2376b = wVar;
        }
    }

    /* loaded from: classes.dex */
    public static class c extends m {
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

    protected static final boolean B(w wVar, boolean z10) {
        Object obj;
        byte byteValue = ((Byte) wVar.p(d.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean c10 = a1.a().d(wVar).c(wVar);
        if (z10) {
            d dVar = d.SET_MEMOIZED_IS_INITIALIZED;
            if (c10) {
                obj = wVar;
            } else {
                obj = null;
            }
            wVar.q(dVar, obj);
        }
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static y.b F(y.b bVar) {
        int i10;
        int size = bVar.size();
        if (size == 0) {
            i10 = 10;
        } else {
            i10 = size * 2;
        }
        return bVar.c(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object H(p0 p0Var, String str, Object[] objArr) {
        return new c1(p0Var, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static w J(w wVar, InputStream inputStream) {
        return j(K(wVar, h.g(inputStream), o.b()));
    }

    static w K(w wVar, h hVar, o oVar) {
        w I = wVar.I();
        try {
            e1 d10 = a1.a().d(I);
            d10.g(I, i.O(hVar), oVar);
            d10.b(I);
            return I;
        } catch (k1 e10) {
            throw e10.a().k(I);
        } catch (z e11) {
            e = e11;
            if (e.a()) {
                e = new z(e);
            }
            throw e.k(I);
        } catch (IOException e12) {
            if (e12.getCause() instanceof z) {
                throw ((z) e12.getCause());
            }
            throw new z(e12).k(I);
        } catch (RuntimeException e13) {
            if (e13.getCause() instanceof z) {
                throw ((z) e13.getCause());
            }
            throw e13;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void L(Class cls, w wVar) {
        wVar.E();
        defaultInstanceMap.put(cls, wVar);
    }

    private static w j(w wVar) {
        if (wVar != null && !wVar.A()) {
            throw wVar.g().a().k(wVar);
        }
        return wVar;
    }

    private int n(e1 e1Var) {
        if (e1Var == null) {
            return a1.a().d(this).e(this);
        }
        return e1Var.e(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static y.b t() {
        return b1.i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w u(Class cls) {
        w wVar = defaultInstanceMap.get(cls);
        if (wVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                wVar = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (wVar == null) {
            wVar = ((w) o1.i(cls)).a();
            if (wVar != null) {
                defaultInstanceMap.put(cls, wVar);
            } else {
                throw new IllegalStateException();
            }
        }
        return wVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object z(Method method, Object obj, Object... objArr) {
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

    public final boolean A() {
        return B(this, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean C() {
        if ((this.memoizedSerializedSize & MUTABLE_FLAG_MASK) != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void D() {
        a1.a().d(this).b(this);
        E();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void E() {
        this.memoizedSerializedSize &= Integer.MAX_VALUE;
    }

    @Override // androidx.datastore.preferences.protobuf.p0
    /* renamed from: G */
    public final a c() {
        return (a) p(d.NEW_BUILDER);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public w I() {
        return (w) p(d.NEW_MUTABLE_INSTANCE);
    }

    void M(int i10) {
        this.memoizedHashCode = i10;
    }

    void N(int i10) {
        if (i10 >= 0) {
            this.memoizedSerializedSize = (i10 & Integer.MAX_VALUE) | (this.memoizedSerializedSize & MUTABLE_FLAG_MASK);
            return;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + i10);
    }

    @Override // androidx.datastore.preferences.protobuf.p0
    public int b() {
        return f(null);
    }

    @Override // androidx.datastore.preferences.protobuf.p0
    public void d(j jVar) {
        a1.a().d(this).h(this, k.P(jVar));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return a1.a().d(this).d(this, (w) obj);
    }

    @Override // androidx.datastore.preferences.protobuf.a
    int f(e1 e1Var) {
        if (C()) {
            int n10 = n(e1Var);
            if (n10 >= 0) {
                return n10;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + n10);
        } else if (x() != Integer.MAX_VALUE) {
            return x();
        } else {
            int n11 = n(e1Var);
            N(n11);
            return n11;
        }
    }

    public int hashCode() {
        if (C()) {
            return m();
        }
        if (y()) {
            M(m());
        }
        return w();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object i() {
        return p(d.BUILD_MESSAGE_INFO);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        this.memoizedHashCode = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        N(Integer.MAX_VALUE);
    }

    int m() {
        return a1.a().d(this).f(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final a o() {
        return (a) p(d.NEW_BUILDER);
    }

    protected Object p(d dVar) {
        return r(dVar, null, null);
    }

    protected Object q(d dVar, Object obj) {
        return r(dVar, obj, null);
    }

    protected abstract Object r(d dVar, Object obj, Object obj2);

    public String toString() {
        return r0.f(this, super.toString());
    }

    @Override // androidx.datastore.preferences.protobuf.q0
    /* renamed from: v */
    public final w a() {
        return (w) p(d.GET_DEFAULT_INSTANCE);
    }

    int w() {
        return this.memoizedHashCode;
    }

    int x() {
        return this.memoizedSerializedSize & Integer.MAX_VALUE;
    }

    boolean y() {
        if (w() == 0) {
            return true;
        }
        return false;
    }
}
