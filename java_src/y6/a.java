package y6;

import com.google.crypto.tink.internal.d;
import com.google.crypto.tink.internal.m;
import com.google.crypto.tink.shaded.protobuf.h;
import e7.p;
import e7.q;
import e7.y;
import f7.r;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import s6.e;
import s6.l;
import s6.x;
/* loaded from: classes.dex */
public final class a extends d {

    /* renamed from: y6.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0376a extends m {
        C0376a(Class cls) {
            super(cls);
        }

        @Override // com.google.crypto.tink.internal.m
        /* renamed from: c */
        public e a(p pVar) {
            return new f7.d(pVar.X().F());
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
            hashMap.put("AES256_SIV", new d.a.C0102a((q) q.X().t(64).j(), l.b.TINK));
            hashMap.put("AES256_SIV_RAW", new d.a.C0102a((q) q.X().t(64).j(), l.b.RAW));
            return Collections.unmodifiableMap(hashMap);
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: f */
        public p a(q qVar) {
            return (p) p.Z().t(h.m(f7.p.c(qVar.W()))).u(a.this.k()).j();
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: g */
        public q d(h hVar) {
            return q.Y(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: h */
        public void e(q qVar) {
            if (qVar.W() == 64) {
                return;
            }
            throw new InvalidAlgorithmParameterException("invalid key size: " + qVar.W() + ". Valid keys must have 64 bytes.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a() {
        super(p.class, new C0376a(e.class));
    }

    public static void m(boolean z10) {
        x.l(new a(), z10);
    }

    @Override // com.google.crypto.tink.internal.d
    public String d() {
        return "type.googleapis.com/google.crypto.tink.AesSivKey";
    }

    @Override // com.google.crypto.tink.internal.d
    public d.a f() {
        return new b(q.class);
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
    public p h(h hVar) {
        return p.a0(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
    }

    @Override // com.google.crypto.tink.internal.d
    /* renamed from: n */
    public void j(p pVar) {
        r.c(pVar.Y(), k());
        if (pVar.X().size() == 64) {
            return;
        }
        throw new InvalidKeyException("invalid key size: " + pVar.X().size() + ". Valid keys must have 64 bytes.");
    }
}
