package androidx.datastore.preferences.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h0 implements f1 {

    /* renamed from: b  reason: collision with root package name */
    private static final o0 f2172b = new a();

    /* renamed from: a  reason: collision with root package name */
    private final o0 f2173a;

    /* loaded from: classes.dex */
    class a implements o0 {
        a() {
        }

        @Override // androidx.datastore.preferences.protobuf.o0
        public n0 a(Class cls) {
            throw new IllegalStateException("This should never be called.");
        }

        @Override // androidx.datastore.preferences.protobuf.o0
        public boolean b(Class cls) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2174a;

        static {
            int[] iArr = new int[z0.values().length];
            f2174a = iArr;
            try {
                iArr[z0.PROTO3.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c implements o0 {

        /* renamed from: a  reason: collision with root package name */
        private o0[] f2175a;

        c(o0... o0VarArr) {
            this.f2175a = o0VarArr;
        }

        @Override // androidx.datastore.preferences.protobuf.o0
        public n0 a(Class cls) {
            o0[] o0VarArr;
            for (o0 o0Var : this.f2175a) {
                if (o0Var.b(cls)) {
                    return o0Var.a(cls);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: " + cls.getName());
        }

        @Override // androidx.datastore.preferences.protobuf.o0
        public boolean b(Class cls) {
            for (o0 o0Var : this.f2175a) {
                if (o0Var.b(cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    public h0() {
        this(c());
    }

    private static boolean b(n0 n0Var) {
        if (b.f2174a[n0Var.c().ordinal()] != 1) {
            return true;
        }
        return false;
    }

    private static o0 c() {
        return new c(v.c(), d());
    }

    private static o0 d() {
        if (a1.f2118d) {
            return f2172b;
        }
        try {
            return (o0) Class.forName("androidx.datastore.preferences.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return f2172b;
        }
    }

    private static e1 e(Class cls, n0 n0Var) {
        p pVar = null;
        if (f(cls)) {
            u0 b10 = w0.b();
            d0 b11 = f0.b();
            l1 K = g1.K();
            if (b(n0Var)) {
                pVar = r.b();
            }
            return s0.M(cls, n0Var, b10, b11, K, pVar, m0.b());
        }
        u0 a10 = w0.a();
        d0 a11 = f0.a();
        l1 J = g1.J();
        if (b(n0Var)) {
            pVar = r.a();
        }
        return s0.M(cls, n0Var, a10, a11, J, pVar, m0.a());
    }

    private static boolean f(Class cls) {
        if (!a1.f2118d && !w.class.isAssignableFrom(cls)) {
            return false;
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public e1 a(Class cls) {
        g1.G(cls);
        n0 a10 = this.f2173a.a(cls);
        if (a10.a()) {
            if (f(cls)) {
                return t0.k(g1.K(), r.b(), a10.b());
            }
            return t0.k(g1.J(), r.a(), a10.b());
        }
        return e(cls, a10);
    }

    private h0(o0 o0Var) {
        this.f2173a = (o0) y.b(o0Var, "messageInfoFactory");
    }
}
