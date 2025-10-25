package t6;

import com.google.crypto.tink.internal.d;
import e7.y;
import java.security.GeneralSecurityException;
/* loaded from: classes.dex */
public class f extends com.google.crypto.tink.internal.d {

    /* loaded from: classes.dex */
    class a extends com.google.crypto.tink.internal.m {
        a(Class cls) {
            super(cls);
        }

        @Override // com.google.crypto.tink.internal.m
        /* renamed from: c */
        public f7.l a(e7.f fVar) {
            return new f7.a(fVar.Z().F(), fVar.a0().X());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b extends d.a {
        b(Class cls) {
            super(cls);
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: f */
        public e7.f a(e7.g gVar) {
            return (e7.f) e7.f.c0().u(gVar.Z()).t(com.google.crypto.tink.shaded.protobuf.h.m(f7.p.c(gVar.Y()))).v(f.this.l()).j();
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: g */
        public e7.g d(com.google.crypto.tink.shaded.protobuf.h hVar) {
            return e7.g.b0(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: h */
        public void e(e7.g gVar) {
            f7.r.a(gVar.Y());
            f.this.o(gVar.Z());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f() {
        super(e7.f.class, new a(f7.l.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(e7.h hVar) {
        if (hVar.X() >= 12 && hVar.X() <= 16) {
            return;
        }
        throw new GeneralSecurityException("invalid IV size");
    }

    @Override // com.google.crypto.tink.internal.d
    public String d() {
        return "type.googleapis.com/google.crypto.tink.AesCtrKey";
    }

    @Override // com.google.crypto.tink.internal.d
    public d.a f() {
        return new b(e7.g.class);
    }

    @Override // com.google.crypto.tink.internal.d
    public y.c g() {
        return y.c.SYMMETRIC;
    }

    public int l() {
        return 0;
    }

    @Override // com.google.crypto.tink.internal.d
    /* renamed from: m */
    public e7.f h(com.google.crypto.tink.shaded.protobuf.h hVar) {
        return e7.f.d0(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
    }

    @Override // com.google.crypto.tink.internal.d
    /* renamed from: n */
    public void j(e7.f fVar) {
        f7.r.c(fVar.b0(), l());
        f7.r.a(fVar.Z().size());
        o(fVar.a0());
    }
}
