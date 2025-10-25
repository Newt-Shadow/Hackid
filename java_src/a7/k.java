package a7;

import com.google.crypto.tink.internal.d;
import com.google.crypto.tink.internal.l;
import e7.u;
import e7.v;
import e7.w;
import e7.x;
import e7.y;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.spec.SecretKeySpec;
import s6.l;
import s6.t;
import x6.b;
/* loaded from: classes.dex */
public final class k extends com.google.crypto.tink.internal.d {

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.l f153d = com.google.crypto.tink.internal.l.b(new l.b() { // from class: a7.j
        @Override // com.google.crypto.tink.internal.l.b
        public final Object a(s6.g gVar) {
            return new b7.c((i) gVar);
        }
    }, i.class, g.class);

    /* loaded from: classes.dex */
    class a extends com.google.crypto.tink.internal.m {
        a(Class cls) {
            super(cls);
        }

        @Override // com.google.crypto.tink.internal.m
        /* renamed from: c */
        public t a(v vVar) {
            u Y = vVar.a0().Y();
            SecretKeySpec secretKeySpec = new SecretKeySpec(vVar.Z().F(), "HMAC");
            int Z = vVar.a0().Z();
            int i10 = c.f155a[Y.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 == 5) {
                                return new f7.o(new f7.n("HMACSHA512", secretKeySpec), Z);
                            }
                            throw new GeneralSecurityException("unknown hash");
                        }
                        return new f7.o(new f7.n("HMACSHA384", secretKeySpec), Z);
                    }
                    return new f7.o(new f7.n("HMACSHA256", secretKeySpec), Z);
                }
                return new f7.o(new f7.n("HMACSHA224", secretKeySpec), Z);
            }
            return new f7.o(new f7.n("HMACSHA1", secretKeySpec), Z);
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
            u uVar = u.SHA256;
            l.b bVar = l.b.TINK;
            hashMap.put("HMAC_SHA256_128BITTAG", k.m(32, 16, uVar, bVar));
            l.b bVar2 = l.b.RAW;
            hashMap.put("HMAC_SHA256_128BITTAG_RAW", k.m(32, 16, uVar, bVar2));
            hashMap.put("HMAC_SHA256_256BITTAG", k.m(32, 32, uVar, bVar));
            hashMap.put("HMAC_SHA256_256BITTAG_RAW", k.m(32, 32, uVar, bVar2));
            u uVar2 = u.SHA512;
            hashMap.put("HMAC_SHA512_128BITTAG", k.m(64, 16, uVar2, bVar));
            hashMap.put("HMAC_SHA512_128BITTAG_RAW", k.m(64, 16, uVar2, bVar2));
            hashMap.put("HMAC_SHA512_256BITTAG", k.m(64, 32, uVar2, bVar));
            hashMap.put("HMAC_SHA512_256BITTAG_RAW", k.m(64, 32, uVar2, bVar2));
            hashMap.put("HMAC_SHA512_512BITTAG", k.m(64, 64, uVar2, bVar));
            hashMap.put("HMAC_SHA512_512BITTAG_RAW", k.m(64, 64, uVar2, bVar2));
            return Collections.unmodifiableMap(hashMap);
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: f */
        public v a(w wVar) {
            return (v) v.c0().v(k.this.n()).u(wVar.Z()).t(com.google.crypto.tink.shaded.protobuf.h.m(f7.p.c(wVar.Y()))).j();
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: g */
        public w d(com.google.crypto.tink.shaded.protobuf.h hVar) {
            return w.b0(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
        }

        @Override // com.google.crypto.tink.internal.d.a
        /* renamed from: h */
        public void e(w wVar) {
            if (wVar.Y() >= 16) {
                k.r(wVar.Z());
                return;
            }
            throw new GeneralSecurityException("key too short");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f155a;

        static {
            int[] iArr = new int[u.values().length];
            f155a = iArr;
            try {
                iArr[u.SHA1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f155a[u.SHA224.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f155a[u.SHA256.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f155a[u.SHA384.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f155a[u.SHA512.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public k() {
        super(v.class, new a(t.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static d.a.C0102a m(int i10, int i11, u uVar, l.b bVar) {
        return new d.a.C0102a((w) w.a0().u((x) x.a0().t(uVar).u(i11).j()).t(i10).j(), bVar);
    }

    public static void p(boolean z10) {
        s6.x.l(new k(), z10);
        n.c();
        com.google.crypto.tink.internal.h.c().d(f153d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void r(x xVar) {
        if (xVar.Z() >= 10) {
            int i10 = c.f155a[xVar.Y().ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 == 5) {
                                if (xVar.Z() > 64) {
                                    throw new GeneralSecurityException("tag size too big");
                                }
                                return;
                            }
                            throw new GeneralSecurityException("unknown hash type");
                        } else if (xVar.Z() > 48) {
                            throw new GeneralSecurityException("tag size too big");
                        } else {
                            return;
                        }
                    } else if (xVar.Z() > 32) {
                        throw new GeneralSecurityException("tag size too big");
                    } else {
                        return;
                    }
                } else if (xVar.Z() > 28) {
                    throw new GeneralSecurityException("tag size too big");
                } else {
                    return;
                }
            } else if (xVar.Z() <= 20) {
                return;
            } else {
                throw new GeneralSecurityException("tag size too big");
            }
        }
        throw new GeneralSecurityException("tag size too small");
    }

    @Override // com.google.crypto.tink.internal.d
    public b.EnumC0366b a() {
        return b.EnumC0366b.f32506b;
    }

    @Override // com.google.crypto.tink.internal.d
    public String d() {
        return "type.googleapis.com/google.crypto.tink.HmacKey";
    }

    @Override // com.google.crypto.tink.internal.d
    public d.a f() {
        return new b(w.class);
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
    public v h(com.google.crypto.tink.shaded.protobuf.h hVar) {
        return v.d0(hVar, com.google.crypto.tink.shaded.protobuf.p.b());
    }

    @Override // com.google.crypto.tink.internal.d
    /* renamed from: q */
    public void j(v vVar) {
        f7.r.c(vVar.b0(), n());
        if (vVar.Z().size() >= 16) {
            r(vVar.a0());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }
}
