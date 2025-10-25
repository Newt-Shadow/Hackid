package t6;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Objects;
/* loaded from: classes.dex */
public final class i extends t6.c {

    /* renamed from: a  reason: collision with root package name */
    private final int f29984a;

    /* renamed from: b  reason: collision with root package name */
    private final int f29985b;

    /* renamed from: c  reason: collision with root package name */
    private final int f29986c;

    /* renamed from: d  reason: collision with root package name */
    private final c f29987d;

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private Integer f29988a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f29989b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f29990c;

        /* renamed from: d  reason: collision with root package name */
        private c f29991d;

        public i a() {
            Integer num = this.f29988a;
            if (num != null) {
                if (this.f29989b != null) {
                    if (this.f29991d != null) {
                        if (this.f29990c != null) {
                            return new i(num.intValue(), this.f29989b.intValue(), this.f29990c.intValue(), this.f29991d);
                        }
                        throw new GeneralSecurityException("Tag size is not set");
                    }
                    throw new GeneralSecurityException("Variant is not set");
                }
                throw new GeneralSecurityException("IV size is not set");
            }
            throw new GeneralSecurityException("Key size is not set");
        }

        public b b(int i10) {
            if (i10 != 12 && i10 != 16) {
                throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d; acceptable values have 12 or 16 bytes", Integer.valueOf(i10)));
            }
            this.f29989b = Integer.valueOf(i10);
            return this;
        }

        public b c(int i10) {
            if (i10 != 16 && i10 != 24 && i10 != 32) {
                throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i10)));
            }
            this.f29988a = Integer.valueOf(i10);
            return this;
        }

        public b d(int i10) {
            if (i10 >= 0 && i10 <= 16) {
                this.f29990c = Integer.valueOf(i10);
                return this;
            }
            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; value must be at most 16 bytes", Integer.valueOf(i10)));
        }

        public b e(c cVar) {
            this.f29991d = cVar;
            return this;
        }

        private b() {
            this.f29988a = null;
            this.f29989b = null;
            this.f29990c = null;
            this.f29991d = c.f29994d;
        }
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: b  reason: collision with root package name */
        public static final c f29992b = new c("TINK");

        /* renamed from: c  reason: collision with root package name */
        public static final c f29993c = new c("CRUNCHY");

        /* renamed from: d  reason: collision with root package name */
        public static final c f29994d = new c("NO_PREFIX");

        /* renamed from: a  reason: collision with root package name */
        private final String f29995a;

        private c(String str) {
            this.f29995a = str;
        }

        public String toString() {
            return this.f29995a;
        }
    }

    public static b a() {
        return new b();
    }

    public int b() {
        return this.f29985b;
    }

    public int c() {
        return this.f29984a;
    }

    public int d() {
        return this.f29986c;
    }

    public c e() {
        return this.f29987d;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (iVar.c() != c() || iVar.b() != b() || iVar.d() != d() || iVar.e() != e()) {
            return false;
        }
        return true;
    }

    public boolean f() {
        if (this.f29987d != c.f29994d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.f29984a), Integer.valueOf(this.f29985b), Integer.valueOf(this.f29986c), this.f29987d);
    }

    public String toString() {
        return "AesEax Parameters (variant: " + this.f29987d + ", " + this.f29985b + "-byte IV, " + this.f29986c + "-byte tag, and " + this.f29984a + "-byte key)";
    }

    private i(int i10, int i11, int i12, c cVar) {
        this.f29984a = i10;
        this.f29985b = i11;
        this.f29986c = i12;
        this.f29987d = cVar;
    }
}
