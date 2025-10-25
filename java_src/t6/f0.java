package t6;

import com.google.crypto.tink.internal.d;
import e7.y;
import java.security.GeneralSecurityException;
/* loaded from: classes.dex */
public class f0 extends com.google.crypto.tink.internal.d {

    /* loaded from: classes.dex */
    class a extends com.google.crypto.tink.internal.m {
        a(Class cls) {
            super(cls);
        }

        @Override // com.google.crypto.tink.internal.m
        /* renamed from: c */
        public s6.a a(e7.g0 g0Var) {
            String X = g0Var.X().X();
            return new e0(g0Var.X().W(), s6.s.a(X).b(X));
        }
    }

    /* loaded from: classes.dex */
    class b extends d.a {
        b(Class cls) {
            super(cls);
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: f */
        public e7.g0 a(e7.h0 h0Var) {
            return (e7.g0) e7.g0.Z().t(h0Var).u(f0.this.k()).j();
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: g */
        public e7.h0 d(com.google.crypto.tink.shaded.protobuf.h hVar) {
            return e7.h0.Z(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: h */
        public void e(e7.h0 h0Var) {
            if (!h0Var.X().isEmpty() && h0Var.Y()) {
                return;
            }
            throw new GeneralSecurityException("invalid key format: missing KEK URI or DEK template");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0() {
        super(e7.g0.class, new a(s6.a.class));
    }

    public static void m(boolean z10) {
        s6.x.l(new f0(), z10);
    }

    @Override // com.google.crypto.tink.internal.d
    public String d() {
        return "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey";
    }

    @Override // com.google.crypto.tink.internal.d
    public d.a f() {
        return new b(e7.h0.class);
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
    public e7.g0 h(com.google.crypto.tink.shaded.protobuf.h hVar) {
        return e7.g0.a0(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
    }

    @Override // com.google.crypto.tink.internal.d
    /* renamed from: n */
    public void j(e7.g0 g0Var) {
        f7.r.c(g0Var.Y(), k());
    }
}
