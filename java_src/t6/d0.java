package t6;

import com.google.crypto.tink.internal.d;
import e7.y;
/* loaded from: classes.dex */
public class d0 extends com.google.crypto.tink.internal.d {

    /* loaded from: classes.dex */
    class a extends com.google.crypto.tink.internal.m {
        a(Class cls) {
            super(cls);
        }

        @Override // com.google.crypto.tink.internal.m
        /* renamed from: c */
        public s6.a a(e7.e0 e0Var) {
            String W = e0Var.X().W();
            return s6.s.a(W).b(W);
        }
    }

    /* loaded from: classes.dex */
    class b extends d.a {
        b(Class cls) {
            super(cls);
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: f */
        public e7.e0 a(e7.f0 f0Var) {
            return (e7.e0) e7.e0.Z().t(f0Var).u(d0.this.k()).j();
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: g */
        public e7.f0 d(com.google.crypto.tink.shaded.protobuf.h hVar) {
            return e7.f0.X(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: h */
        public void e(e7.f0 f0Var) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0() {
        super(e7.e0.class, new a(s6.a.class));
    }

    public static void m(boolean z10) {
        s6.x.l(new d0(), z10);
    }

    @Override // com.google.crypto.tink.internal.d
    public String d() {
        return "type.googleapis.com/google.crypto.tink.KmsAeadKey";
    }

    @Override // com.google.crypto.tink.internal.d
    public d.a f() {
        return new b(e7.f0.class);
    }

    @Override // com.google.crypto.tink.internal.d
    public y.c g() {
        return y.c.REMOTE;
    }

    public int k() {
        return 0;
    }

    @Override // com.google.crypto.tink.internal.d
    /* renamed from: l */
    public e7.e0 h(com.google.crypto.tink.shaded.protobuf.h hVar) {
        return e7.e0.a0(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
    }

    @Override // com.google.crypto.tink.internal.d
    /* renamed from: n */
    public void j(e7.e0 e0Var) {
        f7.r.c(e0Var.Y(), k());
    }
}
