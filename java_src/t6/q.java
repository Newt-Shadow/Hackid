package t6;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Objects;
/* loaded from: classes.dex */
public final class q extends t6.c {

    /* renamed from: a  reason: collision with root package name */
    private final int f30021a;

    /* renamed from: b  reason: collision with root package name */
    private final int f30022b;

    /* renamed from: c  reason: collision with root package name */
    private final int f30023c;

    /* renamed from: d  reason: collision with root package name */
    private final c f30024d;

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private Integer f30025a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f30026b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f30027c;

        /* renamed from: d  reason: collision with root package name */
        private c f30028d;

        public q a() {
            Integer num = this.f30025a;
            if (num != null) {
                if (this.f30028d != null) {
                    if (this.f30026b != null) {
                        if (this.f30027c != null) {
                            return new q(num.intValue(), this.f30026b.intValue(), this.f30027c.intValue(), this.f30028d);
                        }
                        throw new GeneralSecurityException("Tag size is not set");
                    }
                    throw new GeneralSecurityException("IV size is not set");
                }
                throw new GeneralSecurityException("Variant is not set");
            }
            throw new GeneralSecurityException("Key size is not set");
        }

        public b b(int i10) {
            if (i10 > 0) {
                this.f30026b = Integer.valueOf(i10);
                return this;
            }
            throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d; IV size must be positive", Integer.valueOf(i10)));
        }

        public b c(int i10) {
            if (i10 != 16 && i10 != 24 && i10 != 32) {
                throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i10)));
            }
            this.f30025a = Integer.valueOf(i10);
            return this;
        }

        public b d(int i10) {
            if (i10 != 12 && i10 != 13 && i10 != 14 && i10 != 15 && i10 != 16) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; value must be one of the following: 12, 13, 14, 15 or 16 bytes", Integer.valueOf(i10)));
            }
            this.f30027c = Integer.valueOf(i10);
            return this;
        }

        public b e(c cVar) {
            this.f30028d = cVar;
            return this;
        }

        private b() {
            this.f30025a = null;
            this.f30026b = null;
            this.f30027c = null;
            this.f30028d = c.f30031d;
        }
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: b  reason: collision with root package name */
        public static final c f30029b = new c("TINK");

        /* renamed from: c  reason: collision with root package name */
        public static final c f30030c = new c("CRUNCHY");

        /* renamed from: d  reason: collision with root package name */
        public static final c f30031d = new c("NO_PREFIX");

        /* renamed from: a  reason: collision with root package name */
        private final String f30032a;

        private c(String str) {
            this.f30032a = str;
        }

        public String toString() {
            return this.f30032a;
        }
    }

    public static b a() {
        return new b();
    }

    public int b() {
        return this.f30022b;
    }

    public int c() {
        return this.f30021a;
    }

    public int d() {
        return this.f30023c;
    }

    public c e() {
        return this.f30024d;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        if (qVar.c() != c() || qVar.b() != b() || qVar.d() != d() || qVar.e() != e()) {
            return false;
        }
        return true;
    }

    public boolean f() {
        if (this.f30024d != c.f30031d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.f30021a), Integer.valueOf(this.f30022b), Integer.valueOf(this.f30023c), this.f30024d);
    }

    public String toString() {
        return "AesGcm Parameters (variant: " + this.f30024d + ", " + this.f30022b + "-byte IV, " + this.f30023c + "-byte tag, and " + this.f30021a + "-byte key)";
    }

    private q(int i10, int i11, int i12, c cVar) {
        this.f30021a = i10;
        this.f30022b = i11;
        this.f30023c = i12;
        this.f30024d = cVar;
    }
}
