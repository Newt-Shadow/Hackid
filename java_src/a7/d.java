package a7;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Objects;
/* loaded from: classes.dex */
public final class d extends q {

    /* renamed from: a  reason: collision with root package name */
    private final int f127a;

    /* renamed from: b  reason: collision with root package name */
    private final int f128b;

    /* renamed from: c  reason: collision with root package name */
    private final c f129c;

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private Integer f130a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f131b;

        /* renamed from: c  reason: collision with root package name */
        private c f132c;

        public d a() {
            Integer num = this.f130a;
            if (num != null) {
                if (this.f131b != null) {
                    if (this.f132c != null) {
                        return new d(num.intValue(), this.f131b.intValue(), this.f132c);
                    }
                    throw new GeneralSecurityException("variant not set");
                }
                throw new GeneralSecurityException("tag size not set");
            }
            throw new GeneralSecurityException("key size not set");
        }

        public b b(int i10) {
            if (i10 != 16 && i10 != 32) {
                throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 128-bit and 256-bit AES keys are supported", Integer.valueOf(i10 * 8)));
            }
            this.f130a = Integer.valueOf(i10);
            return this;
        }

        public b c(int i10) {
            if (i10 >= 10 && 16 >= i10) {
                this.f131b = Integer.valueOf(i10);
                return this;
            }
            throw new GeneralSecurityException("Invalid tag size for AesCmacParameters: " + i10);
        }

        public b d(c cVar) {
            this.f132c = cVar;
            return this;
        }

        private b() {
            this.f130a = null;
            this.f131b = null;
            this.f132c = c.f136e;
        }
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: b  reason: collision with root package name */
        public static final c f133b = new c("TINK");

        /* renamed from: c  reason: collision with root package name */
        public static final c f134c = new c("CRUNCHY");

        /* renamed from: d  reason: collision with root package name */
        public static final c f135d = new c("LEGACY");

        /* renamed from: e  reason: collision with root package name */
        public static final c f136e = new c("NO_PREFIX");

        /* renamed from: a  reason: collision with root package name */
        private final String f137a;

        private c(String str) {
            this.f137a = str;
        }

        public String toString() {
            return this.f137a;
        }
    }

    public static b a() {
        return new b();
    }

    public int b() {
        return this.f128b;
    }

    public int c() {
        return this.f127a;
    }

    public int d() {
        int b10;
        c cVar = this.f129c;
        if (cVar == c.f136e) {
            return b();
        }
        if (cVar == c.f133b) {
            b10 = b();
        } else if (cVar == c.f134c) {
            b10 = b();
        } else if (cVar == c.f135d) {
            b10 = b();
        } else {
            throw new IllegalStateException("Unknown variant");
        }
        return b10 + 5;
    }

    public c e() {
        return this.f129c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (dVar.c() != c() || dVar.d() != d() || dVar.e() != e()) {
            return false;
        }
        return true;
    }

    public boolean f() {
        if (this.f129c != c.f136e) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.f127a), Integer.valueOf(this.f128b), this.f129c);
    }

    public String toString() {
        return "AES-CMAC Parameters (variant: " + this.f129c + ", " + this.f128b + "-byte tags, and " + this.f127a + "-byte key)";
    }

    private d(int i10, int i11, c cVar) {
        this.f127a = i10;
        this.f128b = i11;
        this.f129c = cVar;
    }
}
