package f7;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
import x6.b;
/* loaded from: classes.dex */
public final class n implements d7.a {

    /* renamed from: e  reason: collision with root package name */
    public static final b.EnumC0366b f15895e = b.EnumC0366b.f32506b;

    /* renamed from: a  reason: collision with root package name */
    private final ThreadLocal f15896a;

    /* renamed from: b  reason: collision with root package name */
    private final String f15897b;

    /* renamed from: c  reason: collision with root package name */
    private final Key f15898c;

    /* renamed from: d  reason: collision with root package name */
    private final int f15899d;

    /* loaded from: classes.dex */
    class a extends ThreadLocal {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public Mac initialValue() {
            try {
                Mac mac = (Mac) i.f15881c.a(n.this.f15897b);
                mac.init(n.this.f15898c);
                return mac;
            } catch (GeneralSecurityException e10) {
                throw new IllegalStateException(e10);
            }
        }
    }

    public n(String str, Key key) {
        a aVar = new a();
        this.f15896a = aVar;
        if (f15895e.a()) {
            this.f15897b = str;
            this.f15898c = key;
            if (key.getEncoded().length >= 16) {
                str.hashCode();
                char c10 = 65535;
                switch (str.hashCode()) {
                    case -1823053428:
                        if (str.equals("HMACSHA1")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 392315023:
                        if (str.equals("HMACSHA224")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 392315118:
                        if (str.equals("HMACSHA256")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 392316170:
                        if (str.equals("HMACSHA384")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 392317873:
                        if (str.equals("HMACSHA512")) {
                            c10 = 4;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        this.f15899d = 20;
                        break;
                    case 1:
                        this.f15899d = 28;
                        break;
                    case 2:
                        this.f15899d = 32;
                        break;
                    case 3:
                        this.f15899d = 48;
                        break;
                    case 4:
                        this.f15899d = 64;
                        break;
                    default:
                        throw new NoSuchAlgorithmException("unknown Hmac algorithm: " + str);
                }
                aVar.get();
                return;
            }
            throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
        }
        throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
    }

    @Override // d7.a
    public byte[] a(byte[] bArr, int i10) {
        if (i10 <= this.f15899d) {
            ((Mac) this.f15896a.get()).update(bArr);
            return Arrays.copyOf(((Mac) this.f15896a.get()).doFinal(), i10);
        }
        throw new InvalidAlgorithmParameterException("tag size too big");
    }
}
