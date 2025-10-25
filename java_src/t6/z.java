package t6;

import com.google.crypto.tink.internal.d;
import e7.y;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import s6.l;
/* loaded from: classes.dex */
public class z extends com.google.crypto.tink.internal.d {

    /* loaded from: classes.dex */
    class a extends com.google.crypto.tink.internal.m {
        a(Class cls) {
            super(cls);
        }

        @Override // com.google.crypto.tink.internal.m
        /* renamed from: c */
        public s6.a a(e7.r rVar) {
            return new f7.g(rVar.X().F());
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
            hashMap.put("CHACHA20_POLY1305", new d.a.C0102a(e7.s.V(), l.b.TINK));
            hashMap.put("CHACHA20_POLY1305_RAW", new d.a.C0102a(e7.s.V(), l.b.RAW));
            return Collections.unmodifiableMap(hashMap);
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: f */
        public e7.r a(e7.s sVar) {
            return (e7.r) e7.r.Z().u(z.this.k()).t(com.google.crypto.tink.shaded.protobuf.h.m(f7.p.c(32))).j();
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: g */
        public e7.s d(com.google.crypto.tink.shaded.protobuf.h hVar) {
            return e7.s.W(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: h */
        public void e(e7.s sVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z() {
        super(e7.r.class, new a(s6.a.class));
    }

    public static void m(boolean z10) {
        s6.x.l(new z(), z10);
        c0.c();
    }

    @Override // com.google.crypto.tink.internal.d
    public String d() {
        return "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key";
    }

    @Override // com.google.crypto.tink.internal.d
    public d.a f() {
        return new b(e7.s.class);
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
    public e7.r h(com.google.crypto.tink.shaded.protobuf.h hVar) {
        return e7.r.a0(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
    }

    @Override // com.google.crypto.tink.internal.d
    /* renamed from: n */
    public void j(e7.r rVar) {
        f7.r.c(rVar.Y(), k());
        if (rVar.X().size() == 32) {
            return;
        }
        throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
    }
}
