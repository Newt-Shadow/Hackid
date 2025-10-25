package t6;

import com.google.crypto.tink.internal.d;
import e7.y;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import s6.l;
/* loaded from: classes.dex */
public final class h extends com.google.crypto.tink.internal.d {

    /* loaded from: classes.dex */
    class a extends com.google.crypto.tink.internal.m {
        a(Class cls) {
            super(cls);
        }

        @Override // com.google.crypto.tink.internal.m
        /* renamed from: c */
        public s6.a a(e7.i iVar) {
            return new f7.b(iVar.Y().F(), iVar.Z().X());
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
            hashMap.put("AES128_EAX", h.l(16, 16, bVar));
            l.b bVar2 = l.b.RAW;
            hashMap.put("AES128_EAX_RAW", h.l(16, 16, bVar2));
            hashMap.put("AES256_EAX", h.l(32, 16, bVar));
            hashMap.put("AES256_EAX_RAW", h.l(32, 16, bVar2));
            return Collections.unmodifiableMap(hashMap);
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: f */
        public e7.i a(e7.j jVar) {
            return (e7.i) e7.i.b0().t(com.google.crypto.tink.shaded.protobuf.h.m(f7.p.c(jVar.X()))).u(jVar.Y()).v(h.this.m()).j();
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: g */
        public e7.j d(com.google.crypto.tink.shaded.protobuf.h hVar) {
            return e7.j.a0(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: h */
        public void e(e7.j jVar) {
            f7.r.a(jVar.X());
            if (jVar.Y().X() != 12 && jVar.Y().X() != 16) {
                throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h() {
        super(e7.i.class, new a(s6.a.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static d.a.C0102a l(int i10, int i11, l.b bVar) {
        return new d.a.C0102a((e7.j) e7.j.Z().t(i10).u((e7.k) e7.k.Y().t(i11).j()).j(), bVar);
    }

    public static void o(boolean z10) {
        s6.x.l(new h(), z10);
        n.c();
    }

    @Override // com.google.crypto.tink.internal.d
    public String d() {
        return "type.googleapis.com/google.crypto.tink.AesEaxKey";
    }

    @Override // com.google.crypto.tink.internal.d
    public d.a f() {
        return new b(e7.j.class);
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
    public e7.i h(com.google.crypto.tink.shaded.protobuf.h hVar) {
        return e7.i.c0(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
    }

    @Override // com.google.crypto.tink.internal.d
    /* renamed from: p */
    public void j(e7.i iVar) {
        f7.r.c(iVar.a0(), m());
        f7.r.a(iVar.Y().size());
        if (iVar.Z().X() != 12 && iVar.Z().X() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }
}
