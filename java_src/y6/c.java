package y6;

import c7.b;
import com.google.crypto.tink.internal.f;
import com.google.crypto.tink.internal.g;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.logging.Logger;
import s6.e;
import s6.v;
import s6.w;
import s6.x;
/* loaded from: classes.dex */
public class c implements w {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f33023a = Logger.getLogger(c.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final c f33024b = new c();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a implements e {

        /* renamed from: a  reason: collision with root package name */
        private final v f33025a;

        /* renamed from: b  reason: collision with root package name */
        private final b.a f33026b;

        /* renamed from: c  reason: collision with root package name */
        private final b.a f33027c;

        public a(v vVar) {
            this.f33025a = vVar;
            if (vVar.i()) {
                c7.b a10 = g.b().a();
                c7.c a11 = f.a(vVar);
                this.f33026b = a10.a(a11, "daead", "encrypt");
                this.f33027c = a10.a(a11, "daead", "decrypt");
                return;
            }
            b.a aVar = f.f8355a;
            this.f33026b = aVar;
            this.f33027c = aVar;
        }

        @Override // s6.e
        public byte[] a(byte[] bArr, byte[] bArr2) {
            try {
                byte[] a10 = f7.f.a(this.f33025a.e().b(), ((e) this.f33025a.e().g()).a(bArr, bArr2));
                this.f33026b.b(this.f33025a.e().d(), bArr.length);
                return a10;
            } catch (GeneralSecurityException e10) {
                this.f33026b.a();
                throw e10;
            }
        }

        @Override // s6.e
        public byte[] b(byte[] bArr, byte[] bArr2) {
            if (bArr.length > 5) {
                byte[] copyOf = Arrays.copyOf(bArr, 5);
                byte[] copyOfRange = Arrays.copyOfRange(bArr, 5, bArr.length);
                for (v.c cVar : this.f33025a.f(copyOf)) {
                    try {
                        byte[] b10 = ((e) cVar.g()).b(copyOfRange, bArr2);
                        this.f33027c.b(cVar.d(), copyOfRange.length);
                        return b10;
                    } catch (GeneralSecurityException e10) {
                        Logger logger = c.f33023a;
                        logger.info("ciphertext prefix matches a key, but cannot decrypt: " + e10);
                    }
                }
            }
            for (v.c cVar2 : this.f33025a.h()) {
                try {
                    byte[] b11 = ((e) cVar2.g()).b(bArr, bArr2);
                    this.f33027c.b(cVar2.d(), bArr.length);
                    return b11;
                } catch (GeneralSecurityException unused) {
                }
            }
            this.f33027c.a();
            throw new GeneralSecurityException("decryption failed");
        }
    }

    c() {
    }

    public static void e() {
        x.n(f33024b);
    }

    @Override // s6.w
    public Class a() {
        return e.class;
    }

    @Override // s6.w
    public Class c() {
        return e.class;
    }

    @Override // s6.w
    /* renamed from: f */
    public e b(v vVar) {
        return new a(vVar);
    }
}
