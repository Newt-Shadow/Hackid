package t6;

import c7.b;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.logging.Logger;
import s6.v;
/* loaded from: classes.dex */
public class d implements s6.w {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f29959a = Logger.getLogger(d.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final d f29960b = new d();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b implements s6.a {

        /* renamed from: a  reason: collision with root package name */
        private final s6.v f29961a;

        /* renamed from: b  reason: collision with root package name */
        private final b.a f29962b;

        /* renamed from: c  reason: collision with root package name */
        private final b.a f29963c;

        @Override // s6.a
        public byte[] a(byte[] bArr, byte[] bArr2) {
            try {
                byte[] a10 = f7.f.a(this.f29961a.e().b(), ((s6.a) this.f29961a.e().g()).a(bArr, bArr2));
                this.f29962b.b(this.f29961a.e().d(), bArr.length);
                return a10;
            } catch (GeneralSecurityException e10) {
                this.f29962b.a();
                throw e10;
            }
        }

        @Override // s6.a
        public byte[] b(byte[] bArr, byte[] bArr2) {
            if (bArr.length > 5) {
                byte[] copyOf = Arrays.copyOf(bArr, 5);
                byte[] copyOfRange = Arrays.copyOfRange(bArr, 5, bArr.length);
                for (v.c cVar : this.f29961a.f(copyOf)) {
                    try {
                        byte[] b10 = ((s6.a) cVar.g()).b(copyOfRange, bArr2);
                        this.f29963c.b(cVar.d(), copyOfRange.length);
                        return b10;
                    } catch (GeneralSecurityException e10) {
                        Logger logger = d.f29959a;
                        logger.info("ciphertext prefix matches a key, but cannot decrypt: " + e10);
                    }
                }
            }
            for (v.c cVar2 : this.f29961a.h()) {
                try {
                    byte[] b11 = ((s6.a) cVar2.g()).b(bArr, bArr2);
                    this.f29963c.b(cVar2.d(), bArr.length);
                    return b11;
                } catch (GeneralSecurityException unused) {
                }
            }
            this.f29963c.a();
            throw new GeneralSecurityException("decryption failed");
        }

        private b(s6.v vVar) {
            this.f29961a = vVar;
            if (vVar.i()) {
                c7.b a10 = com.google.crypto.tink.internal.g.b().a();
                c7.c a11 = com.google.crypto.tink.internal.f.a(vVar);
                this.f29962b = a10.a(a11, "aead", "encrypt");
                this.f29963c = a10.a(a11, "aead", "decrypt");
                return;
            }
            b.a aVar = com.google.crypto.tink.internal.f.f8355a;
            this.f29962b = aVar;
            this.f29963c = aVar;
        }
    }

    d() {
    }

    public static void e() {
        s6.x.n(f29960b);
    }

    @Override // s6.w
    public Class a() {
        return s6.a.class;
    }

    @Override // s6.w
    public Class c() {
        return s6.a.class;
    }

    @Override // s6.w
    /* renamed from: f */
    public s6.a b(s6.v vVar) {
        return new b(vVar);
    }
}
