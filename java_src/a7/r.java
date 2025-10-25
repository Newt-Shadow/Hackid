package a7;

import c7.b;
import e7.i0;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;
import s6.t;
import s6.v;
import s6.w;
import s6.x;
/* loaded from: classes.dex */
class r implements w {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f186a = Logger.getLogger(r.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f187b = {0};

    /* renamed from: c  reason: collision with root package name */
    private static final r f188c = new r();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b implements t {

        /* renamed from: a  reason: collision with root package name */
        private final v f189a;

        /* renamed from: b  reason: collision with root package name */
        private final b.a f190b;

        /* renamed from: c  reason: collision with root package name */
        private final b.a f191c;

        @Override // s6.t
        public void a(byte[] bArr, byte[] bArr2) {
            byte[] bArr3;
            if (bArr.length > 5) {
                byte[] copyOf = Arrays.copyOf(bArr, 5);
                byte[] copyOfRange = Arrays.copyOfRange(bArr, 5, bArr.length);
                for (v.c cVar : this.f189a.f(copyOf)) {
                    if (cVar.f().equals(i0.LEGACY)) {
                        bArr3 = f7.f.a(bArr2, r.f187b);
                    } else {
                        bArr3 = bArr2;
                    }
                    try {
                        ((t) cVar.g()).a(copyOfRange, bArr3);
                        this.f191c.b(cVar.d(), bArr3.length);
                        return;
                    } catch (GeneralSecurityException e10) {
                        Logger logger = r.f186a;
                        logger.info("tag prefix matches a key, but cannot verify: " + e10);
                    }
                }
                for (v.c cVar2 : this.f189a.h()) {
                    try {
                        ((t) cVar2.g()).a(bArr, bArr2);
                        this.f191c.b(cVar2.d(), bArr2.length);
                        return;
                    } catch (GeneralSecurityException unused) {
                    }
                }
                this.f191c.a();
                throw new GeneralSecurityException("invalid MAC");
            }
            this.f191c.a();
            throw new GeneralSecurityException("tag too short");
        }

        @Override // s6.t
        public byte[] b(byte[] bArr) {
            if (this.f189a.e().f().equals(i0.LEGACY)) {
                bArr = f7.f.a(bArr, r.f187b);
            }
            try {
                byte[] a10 = f7.f.a(this.f189a.e().b(), ((t) this.f189a.e().g()).b(bArr));
                this.f190b.b(this.f189a.e().d(), bArr.length);
                return a10;
            } catch (GeneralSecurityException e10) {
                this.f190b.a();
                throw e10;
            }
        }

        private b(v vVar) {
            this.f189a = vVar;
            if (vVar.i()) {
                c7.b a10 = com.google.crypto.tink.internal.g.b().a();
                c7.c a11 = com.google.crypto.tink.internal.f.a(vVar);
                this.f190b = a10.a(a11, "mac", "compute");
                this.f191c = a10.a(a11, "mac", "verify");
                return;
            }
            b.a aVar = com.google.crypto.tink.internal.f.f8355a;
            this.f190b = aVar;
            this.f191c = aVar;
        }
    }

    r() {
    }

    public static void f() {
        x.n(f188c);
    }

    private void g(v vVar) {
        for (List<v.c> list : vVar.c()) {
            for (v.c cVar : list) {
                if (cVar.c() instanceof p) {
                    p pVar = (p) cVar.c();
                    g7.a a10 = g7.a.a(cVar.b());
                    if (!a10.equals(pVar.a())) {
                        throw new GeneralSecurityException("Mac Key with parameters " + pVar.b() + " has wrong output prefix (" + pVar.a() + ") instead of (" + a10 + ")");
                    }
                }
            }
        }
    }

    @Override // s6.w
    public Class a() {
        return t.class;
    }

    @Override // s6.w
    public Class c() {
        return t.class;
    }

    @Override // s6.w
    /* renamed from: h */
    public t b(v vVar) {
        g(vVar);
        return new b(vVar);
    }
}
