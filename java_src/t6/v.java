package t6;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Objects;
/* loaded from: classes.dex */
public final class v extends t6.c {

    /* renamed from: a  reason: collision with root package name */
    private final int f30047a;

    /* renamed from: b  reason: collision with root package name */
    private final c f30048b;

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private Integer f30049a;

        /* renamed from: b  reason: collision with root package name */
        private c f30050b;

        public v a() {
            Integer num = this.f30049a;
            if (num != null) {
                if (this.f30050b != null) {
                    return new v(num.intValue(), this.f30050b);
                }
                throw new GeneralSecurityException("Variant is not set");
            }
            throw new GeneralSecurityException("Key size is not set");
        }

        public b b(int i10) {
            if (i10 != 16 && i10 != 32) {
                throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte and 32-byte AES keys are supported", Integer.valueOf(i10)));
            }
            this.f30049a = Integer.valueOf(i10);
            return this;
        }

        public b c(c cVar) {
            this.f30050b = cVar;
            return this;
        }

        private b() {
            this.f30049a = null;
            this.f30050b = c.f30053d;
        }
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: b  reason: collision with root package name */
        public static final c f30051b = new c("TINK");

        /* renamed from: c  reason: collision with root package name */
        public static final c f30052c = new c("CRUNCHY");

        /* renamed from: d  reason: collision with root package name */
        public static final c f30053d = new c("NO_PREFIX");

        /* renamed from: a  reason: collision with root package name */
        private final String f30054a;

        private c(String str) {
            this.f30054a = str;
        }

        public String toString() {
            return this.f30054a;
        }
    }

    public static b a() {
        return new b();
    }

    public int b() {
        return this.f30047a;
    }

    public c c() {
        return this.f30048b;
    }

    public boolean d() {
        if (this.f30048b != c.f30053d) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        if (vVar.b() != b() || vVar.c() != c()) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.f30047a), this.f30048b);
    }

    public String toString() {
        return "AesGcmSiv Parameters (variant: " + this.f30048b + ", " + this.f30047a + "-byte key)";
    }

    private v(int i10, c cVar) {
        this.f30047a = i10;
        this.f30048b = cVar;
    }
}
