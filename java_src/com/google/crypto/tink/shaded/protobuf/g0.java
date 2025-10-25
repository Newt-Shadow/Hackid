package com.google.crypto.tink.shaded.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g0 implements e1 {

    /* renamed from: b  reason: collision with root package name */
    private static final n0 f8441b = new a();

    /* renamed from: a  reason: collision with root package name */
    private final n0 f8442a;

    /* loaded from: classes.dex */
    class a implements n0 {
        a() {
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n0
        public m0 a(Class cls) {
            throw new IllegalStateException("This should never be called.");
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n0
        public boolean b(Class cls) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b implements n0 {

        /* renamed from: a  reason: collision with root package name */
        private n0[] f8443a;

        b(n0... n0VarArr) {
            this.f8443a = n0VarArr;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n0
        public m0 a(Class cls) {
            n0[] n0VarArr;
            for (n0 n0Var : this.f8443a) {
                if (n0Var.b(cls)) {
                    return n0Var.a(cls);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: " + cls.getName());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n0
        public boolean b(Class cls) {
            for (n0 n0Var : this.f8443a) {
                if (n0Var.b(cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    public g0() {
        this(b());
    }

    private static n0 b() {
        return new b(w.c(), c());
    }

    private static n0 c() {
        try {
            return (n0) Class.forName("com.google.crypto.tink.shaded.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return f8441b;
        }
    }

    private static boolean d(m0 m0Var) {
        if (m0Var.c() == y0.PROTO2) {
            return true;
        }
        return false;
    }

    private static d1 e(Class cls, m0 m0Var) {
        if (x.class.isAssignableFrom(cls)) {
            if (d(m0Var)) {
                return r0.S(cls, m0Var, v0.b(), e0.b(), f1.L(), s.b(), l0.b());
            }
            return r0.S(cls, m0Var, v0.b(), e0.b(), f1.L(), null, l0.b());
        } else if (d(m0Var)) {
            return r0.S(cls, m0Var, v0.a(), e0.a(), f1.G(), s.a(), l0.a());
        } else {
            return r0.S(cls, m0Var, v0.a(), e0.a(), f1.H(), null, l0.a());
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.e1
    public d1 a(Class cls) {
        f1.I(cls);
        m0 a10 = this.f8442a.a(cls);
        if (a10.a()) {
            if (x.class.isAssignableFrom(cls)) {
                return s0.l(f1.L(), s.b(), a10.b());
            }
            return s0.l(f1.G(), s.a(), a10.b());
        }
        return e(cls, a10);
    }

    private g0(n0 n0Var) {
        this.f8442a = (n0) z.b(n0Var, "messageInfoFactory");
    }
}
