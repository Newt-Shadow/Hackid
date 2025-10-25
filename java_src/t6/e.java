package t6;

import com.google.crypto.tink.internal.d;
import e7.y;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import s6.l;
import x6.b;
/* loaded from: classes.dex */
public final class e extends com.google.crypto.tink.internal.d {

    /* loaded from: classes.dex */
    class a extends com.google.crypto.tink.internal.m {
        a(Class cls) {
            super(cls);
        }

        @Override // com.google.crypto.tink.internal.m
        /* renamed from: c */
        public s6.a a(e7.d dVar) {
            return new f7.h((f7.l) new f().e(dVar.Y(), f7.l.class), (s6.t) new a7.k().e(dVar.Z(), s6.t.class), dVar.Z().a0().Z());
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
            e7.u uVar = e7.u.SHA256;
            l.b bVar = l.b.TINK;
            hashMap.put("AES128_CTR_HMAC_SHA256", e.l(16, 16, 32, 16, uVar, bVar));
            l.b bVar2 = l.b.RAW;
            hashMap.put("AES128_CTR_HMAC_SHA256_RAW", e.l(16, 16, 32, 16, uVar, bVar2));
            hashMap.put("AES256_CTR_HMAC_SHA256", e.l(32, 16, 32, 32, uVar, bVar));
            hashMap.put("AES256_CTR_HMAC_SHA256_RAW", e.l(32, 16, 32, 32, uVar, bVar2));
            return Collections.unmodifiableMap(hashMap);
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: f */
        public e7.d a(e7.e eVar) {
            return (e7.d) e7.d.b0().t((e7.f) new f().f().a(eVar.X())).u((e7.v) new a7.k().f().a(eVar.Y())).v(e.this.n()).j();
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: g */
        public e7.e d(com.google.crypto.tink.shaded.protobuf.h hVar) {
            return e7.e.a0(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: h */
        public void e(e7.e eVar) {
            new f().f().e(eVar.X());
            new a7.k().f().e(eVar.Y());
            f7.r.a(eVar.X().Y());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e() {
        super(e7.d.class, new a(s6.a.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static d.a.C0102a l(int i10, int i11, int i12, int i13, e7.u uVar, l.b bVar) {
        return new d.a.C0102a(m(i10, i11, i12, i13, uVar), bVar);
    }

    private static e7.e m(int i10, int i11, int i12, int i13, e7.u uVar) {
        return (e7.e) e7.e.Z().t((e7.g) e7.g.a0().u((e7.h) e7.h.Y().t(i11).j()).t(i10).j()).u((e7.w) e7.w.a0().u((e7.x) e7.x.a0().t(uVar).u(i13).j()).t(i12).j()).j();
    }

    public static void p(boolean z10) {
        s6.x.l(new e(), z10);
    }

    @Override // com.google.crypto.tink.internal.d
    public b.EnumC0366b a() {
        return b.EnumC0366b.f32506b;
    }

    @Override // com.google.crypto.tink.internal.d
    public String d() {
        return "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
    }

    @Override // com.google.crypto.tink.internal.d
    public d.a f() {
        return new b(e7.e.class);
    }

    @Override // com.google.crypto.tink.internal.d
    public y.c g() {
        return y.c.SYMMETRIC;
    }

    public int n() {
        return 0;
    }

    @Override // com.google.crypto.tink.internal.d
    /* renamed from: o */
    public e7.d h(com.google.crypto.tink.shaded.protobuf.h hVar) {
        return e7.d.c0(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
    }

    @Override // com.google.crypto.tink.internal.d
    /* renamed from: q */
    public void j(e7.d dVar) {
        f7.r.c(dVar.a0(), n());
        new f().j(dVar.Y());
        new a7.k().j(dVar.Z());
    }
}
