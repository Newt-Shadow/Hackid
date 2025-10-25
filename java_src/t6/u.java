package t6;

import com.google.crypto.tink.internal.d;
import e7.y;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import s6.l;
/* loaded from: classes.dex */
public final class u extends com.google.crypto.tink.internal.d {

    /* loaded from: classes.dex */
    class a extends com.google.crypto.tink.internal.m {
        a(Class cls) {
            super(cls);
        }

        @Override // com.google.crypto.tink.internal.m
        /* renamed from: c */
        public s6.a a(e7.n nVar) {
            return new v6.a(nVar.X().F());
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
            hashMap.put("AES128_GCM_SIV", u.m(16, bVar));
            l.b bVar2 = l.b.RAW;
            hashMap.put("AES128_GCM_SIV_RAW", u.m(16, bVar2));
            hashMap.put("AES256_GCM_SIV", u.m(32, bVar));
            hashMap.put("AES256_GCM_SIV_RAW", u.m(32, bVar2));
            return Collections.unmodifiableMap(hashMap);
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: f */
        public e7.n a(e7.o oVar) {
            return (e7.n) e7.n.Z().t(com.google.crypto.tink.shaded.protobuf.h.m(f7.p.c(oVar.W()))).u(u.this.n()).j();
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: g */
        public e7.o d(com.google.crypto.tink.shaded.protobuf.h hVar) {
            return e7.o.Y(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: h */
        public void e(e7.o oVar) {
            f7.r.a(oVar.W());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public u() {
        super(e7.n.class, new a(s6.a.class));
    }

    private static boolean l() {
        try {
            Cipher.getInstance("AES/GCM-SIV/NoPadding");
            return true;
        } catch (NoSuchAlgorithmException | NoSuchPaddingException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static d.a.C0102a m(int i10, l.b bVar) {
        return new d.a.C0102a((e7.o) e7.o.X().t(i10).j(), bVar);
    }

    public static void p(boolean z10) {
        if (l()) {
            s6.x.l(new u(), z10);
            x.c();
        }
    }

    @Override // com.google.crypto.tink.internal.d
    public String d() {
        return "type.googleapis.com/google.crypto.tink.AesGcmSivKey";
    }

    @Override // com.google.crypto.tink.internal.d
    public d.a f() {
        return new b(e7.o.class);
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
    public e7.n h(com.google.crypto.tink.shaded.protobuf.h hVar) {
        return e7.n.a0(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
    }

    @Override // com.google.crypto.tink.internal.d
    /* renamed from: q */
    public void j(e7.n nVar) {
        f7.r.c(nVar.Y(), n());
        f7.r.a(nVar.X().size());
    }
}
