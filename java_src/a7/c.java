package a7;

import com.google.crypto.tink.internal.d;
import com.google.crypto.tink.internal.l;
import e7.y;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import s6.l;
import s6.t;
import s6.x;
/* loaded from: classes.dex */
public final class c extends com.google.crypto.tink.internal.d {

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.l f125d = com.google.crypto.tink.internal.l.b(new l.b() { // from class: a7.b
        @Override // com.google.crypto.tink.internal.l.b
        public final Object a(s6.g gVar) {
            return new b7.b((a) gVar);
        }
    }, a7.a.class, g.class);

    /* loaded from: classes.dex */
    class a extends com.google.crypto.tink.internal.m {
        a(Class cls) {
            super(cls);
        }

        @Override // com.google.crypto.tink.internal.m
        /* renamed from: c */
        public t a(e7.a aVar) {
            return new f7.o(new f7.m(aVar.Y().F()), aVar.Z().X());
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
            l.b bVar = l.b.TINK;
            hashMap.put("AES_CMAC", new d.a.C0102a((e7.b) e7.b.Z().t(32).u((e7.c) e7.c.Y().t(16).j()).j(), bVar));
            hashMap.put("AES256_CMAC", new d.a.C0102a((e7.b) e7.b.Z().t(32).u((e7.c) e7.c.Y().t(16).j()).j(), bVar));
            hashMap.put("AES256_CMAC_RAW", new d.a.C0102a((e7.b) e7.b.Z().t(32).u((e7.c) e7.c.Y().t(16).j()).j(), l.b.RAW));
            return Collections.unmodifiableMap(hashMap);
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: f */
        public e7.a a(e7.b bVar) {
            return (e7.a) e7.a.b0().v(0).t(com.google.crypto.tink.shaded.protobuf.h.m(f7.p.c(bVar.X()))).u(bVar.Y()).j();
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: g */
        public e7.b d(com.google.crypto.tink.shaded.protobuf.h hVar) {
            return e7.b.a0(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: h */
        public void e(e7.b bVar) {
            c.q(bVar.Y());
            c.r(bVar.X());
        }
    }

    c() {
        super(e7.a.class, new a(t.class));
    }

    public static void o(boolean z10) {
        x.l(new c(), z10);
        f.c();
        com.google.crypto.tink.internal.h.c().d(f125d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void q(e7.c cVar) {
        if (cVar.X() >= 10) {
            if (cVar.X() <= 16) {
                return;
            }
            throw new GeneralSecurityException("tag size too long");
        }
        throw new GeneralSecurityException("tag size too short");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void r(int i10) {
        if (i10 == 32) {
            return;
        }
        throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
    }

    @Override // com.google.crypto.tink.internal.d
    public String d() {
        return "type.googleapis.com/google.crypto.tink.AesCmacKey";
    }

    @Override // com.google.crypto.tink.internal.d
    public d.a f() {
        return new b(e7.b.class);
    }

    @Override // com.google.crypto.tink.internal.d
    public y.c g() {
        return y.c.SYMMETRIC;
    }

    public int m() {
        return 0;
    }

    @Override // com.google.crypto.tink.internal.d
    /* renamed from: n */
    public e7.a h(com.google.crypto.tink.shaded.protobuf.h hVar) {
        return e7.a.c0(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
    }

    @Override // com.google.crypto.tink.internal.d
    /* renamed from: p */
    public void j(e7.a aVar) {
        f7.r.c(aVar.a0(), m());
        r(aVar.Y().size());
        q(aVar.Z());
    }
}
