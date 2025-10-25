package t6;

import com.google.crypto.tink.internal.d;
import e7.y;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import s6.l;
import x6.b;
/* loaded from: classes.dex */
public final class p extends com.google.crypto.tink.internal.d {

    /* loaded from: classes.dex */
    class a extends com.google.crypto.tink.internal.m {
        a(Class cls) {
            super(cls);
        }

        @Override // com.google.crypto.tink.internal.m
        /* renamed from: c */
        public s6.a a(e7.l lVar) {
            return new f7.c(lVar.X().F());
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
            hashMap.put("AES128_GCM", p.l(16, bVar));
            l.b bVar2 = l.b.RAW;
            hashMap.put("AES128_GCM_RAW", p.l(16, bVar2));
            hashMap.put("AES256_GCM", p.l(32, bVar));
            hashMap.put("AES256_GCM_RAW", p.l(32, bVar2));
            return Collections.unmodifiableMap(hashMap);
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: f */
        public e7.l a(e7.m mVar) {
            return (e7.l) e7.l.Z().t(com.google.crypto.tink.shaded.protobuf.h.m(f7.p.c(mVar.W()))).u(p.this.m()).j();
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: g */
        public e7.m d(com.google.crypto.tink.shaded.protobuf.h hVar) {
            return e7.m.Y(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: h */
        public void e(e7.m mVar) {
            f7.r.a(mVar.W());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p() {
        super(e7.l.class, new a(s6.a.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static d.a.C0102a l(int i10, l.b bVar) {
        return new d.a.C0102a((e7.m) e7.m.X().t(i10).j(), bVar);
    }

    public static void o(boolean z10) {
        s6.x.l(new p(), z10);
        s.c();
    }

    @Override // com.google.crypto.tink.internal.d
    public b.EnumC0366b a() {
        return b.EnumC0366b.f32506b;
    }

    @Override // com.google.crypto.tink.internal.d
    public String d() {
        return "type.googleapis.com/google.crypto.tink.AesGcmKey";
    }

    @Override // com.google.crypto.tink.internal.d
    public d.a f() {
        return new b(e7.m.class);
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
    public e7.l h(com.google.crypto.tink.shaded.protobuf.h hVar) {
        return e7.l.a0(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
    }

    @Override // com.google.crypto.tink.internal.d
    /* renamed from: p */
    public void j(e7.l lVar) {
        f7.r.c(lVar.Y(), m());
        f7.r.a(lVar.X().size());
    }
}
