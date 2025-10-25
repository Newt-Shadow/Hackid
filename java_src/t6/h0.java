package t6;

import com.google.crypto.tink.internal.d;
import e7.l0;
import e7.y;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import s6.l;
/* loaded from: classes.dex */
public class h0 extends com.google.crypto.tink.internal.d {

    /* loaded from: classes.dex */
    class a extends com.google.crypto.tink.internal.m {
        a(Class cls) {
            super(cls);
        }

        @Override // com.google.crypto.tink.internal.m
        /* renamed from: c */
        public s6.a a(e7.k0 k0Var) {
            return new f7.s(k0Var.X().F());
        }
    }

    /* loaded from: classes.dex */
    class b extends d.a {
        b(Class cls) {
            super(cls);
        }

        @Override // com.google.crypto.tink.internal.d.a
        public Map c() {
            HashMap hashMap = new HashMap();
            hashMap.put("XCHACHA20_POLY1305", new d.a.C0102a(l0.V(), l.b.TINK));
            hashMap.put("XCHACHA20_POLY1305_RAW", new d.a.C0102a(l0.V(), l.b.RAW));
            return Collections.unmodifiableMap(hashMap);
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: f */
        public e7.k0 a(l0 l0Var) {
            return (e7.k0) e7.k0.Z().u(h0.this.k()).t(com.google.crypto.tink.shaded.protobuf.h.m(f7.p.c(32))).j();
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: g */
        public l0 d(com.google.crypto.tink.shaded.protobuf.h hVar) {
            return l0.W(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: h */
        public void e(l0 l0Var) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0() {
        super(e7.k0.class, new a(s6.a.class));
    }

    public static void m(boolean z10) {
        s6.x.l(new h0(), z10);
        k0.c();
    }

    @Override // com.google.crypto.tink.internal.d
    public String d() {
        return "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key";
    }

    @Override // com.google.crypto.tink.internal.d
    public d.a f() {
        return new b(l0.class);
    }

    @Override // com.google.crypto.tink.internal.d
    public y.c g() {
        return y.c.SYMMETRIC;
    }

    public int k() {
        return 0;
    }

    @Override // com.google.crypto.tink.internal.d
    /* renamed from: l */
    public e7.k0 h(com.google.crypto.tink.shaded.protobuf.h hVar) {
        return e7.k0.a0(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
    }

    @Override // com.google.crypto.tink.internal.d
    /* renamed from: n */
    public void j(e7.k0 k0Var) {
        f7.r.c(k0Var.Y(), k());
        if (k0Var.X().size() == 32) {
            return;
        }
        throw new GeneralSecurityException("invalid XChaCha20Poly1305Key: incorrect key length");
    }
}
