package a7;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Objects;
/* loaded from: classes.dex */
public final class l extends q {

    /* renamed from: a  reason: collision with root package name */
    private final int f156a;

    /* renamed from: b  reason: collision with root package name */
    private final int f157b;

    /* renamed from: c  reason: collision with root package name */
    private final d f158c;

    /* renamed from: d  reason: collision with root package name */
    private final c f159d;

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private Integer f160a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f161b;

        /* renamed from: c  reason: collision with root package name */
        private c f162c;

        /* renamed from: d  reason: collision with root package name */
        private d f163d;

        private static void f(int i10, c cVar) {
            if (i10 >= 10) {
                if (cVar == c.f164b) {
                    if (i10 <= 20) {
                        return;
                    }
                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 20 bytes for SHA1", Integer.valueOf(i10)));
                } else if (cVar == c.f165c) {
                    if (i10 <= 28) {
                        return;
                    }
                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 28 bytes for SHA224", Integer.valueOf(i10)));
                } else if (cVar == c.f166d) {
                    if (i10 <= 32) {
                        return;
                    }
                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 32 bytes for SHA256", Integer.valueOf(i10)));
                } else if (cVar == c.f167e) {
                    if (i10 <= 48) {
                        return;
                    }
                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 48 bytes for SHA384", Integer.valueOf(i10)));
                } else if (cVar == c.f168f) {
                    if (i10 <= 64) {
                        return;
                    }
                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 64 bytes for SHA512", Integer.valueOf(i10)));
                } else {
                    throw new GeneralSecurityException("unknown hash type; must be SHA256, SHA384 or SHA512");
                }
            }
            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; must be at least 10 bytes", Integer.valueOf(i10)));
        }

        public l a() {
            Integer num = this.f160a;
            if (num != null) {
                if (this.f161b != null) {
                    if (this.f162c != null) {
                        if (this.f163d != null) {
                            if (num.intValue() >= 16) {
                                f(this.f161b.intValue(), this.f162c);
                                return new l(this.f160a.intValue(), this.f161b.intValue(), this.f163d, this.f162c);
                            }
                            throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; must be at least 16 bytes", this.f160a));
                        }
                        throw new GeneralSecurityException("variant is not set");
                    }
                    throw new GeneralSecurityException("hash type is not set");
                }
                throw new GeneralSecurityException("tag size is not set");
            }
            throw new GeneralSecurityException("key size is not set");
        }

        public b b(c cVar) {
            this.f162c = cVar;
            return this;
        }

        public b c(int i10) {
            this.f160a = Integer.valueOf(i10);
            return this;
        }

        public b d(int i10) {
            this.f161b = Integer.valueOf(i10);
            return this;
        }

        public b e(d dVar) {
            this.f163d = dVar;
            return this;
        }

        private b() {
            this.f160a = null;
            this.f161b = null;
            this.f162c = null;
            this.f163d = d.f173e;
        }
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: b  reason: collision with root package name */
        public static final c f164b = new c("SHA1");

        /* renamed from: c  reason: collision with root package name */
        public static final c f165c = new c("SHA224");

        /* renamed from: d  reason: collision with root package name */
        public static final c f166d = new c("SHA256");

        /* renamed from: e  reason: collision with root package name */
        public static final c f167e = new c("SHA384");

        /* renamed from: f  reason: collision with root package name */
        public static final c f168f = new c("SHA512");

        /* renamed from: a  reason: collision with root package name */
        private final String f169a;

        private c(String str) {
            this.f169a = str;
        }

        public String toString() {
            return this.f169a;
        }
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: b  reason: collision with root package name */
        public static final d f170b = new d("TINK");

        /* renamed from: c  reason: collision with root package name */
        public static final d f171c = new d("CRUNCHY");

        /* renamed from: d  reason: collision with root package name */
        public static final d f172d = new d("LEGACY");

        /* renamed from: e  reason: collision with root package name */
        public static final d f173e = new d("NO_PREFIX");

        /* renamed from: a  reason: collision with root package name */
        private final String f174a;

        private d(String str) {
            this.f174a = str;
        }

        public String toString() {
            return this.f174a;
        }
    }

    public static b a() {
        return new b();
    }

    public int b() {
        return this.f157b;
    }

    public c c() {
        return this.f159d;
    }

    public int d() {
        return this.f156a;
    }

    public int e() {
        int b10;
        d dVar = this.f158c;
        if (dVar == d.f173e) {
            return b();
        }
        if (dVar == d.f170b) {
            b10 = b();
        } else if (dVar == d.f171c) {
            b10 = b();
        } else if (dVar == d.f172d) {
            b10 = b();
        } else {
            throw new IllegalStateException("Unknown variant");
        }
        return b10 + 5;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (lVar.d() != d() || lVar.e() != e() || lVar.f() != f() || lVar.c() != c()) {
            return false;
        }
        return true;
    }

    public d f() {
        return this.f158c;
    }

    public boolean g() {
        if (this.f158c != d.f173e) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.f156a), Integer.valueOf(this.f157b), this.f158c, this.f159d);
    }

    public String toString() {
        return "HMAC Parameters (variant: " + this.f158c + ", hashType: " + this.f159d + ", " + this.f157b + "-byte tags, and " + this.f156a + "-byte key)";
    }

    private l(int i10, int i11, d dVar, c cVar) {
        this.f156a = i10;
        this.f157b = i11;
        this.f158c = dVar;
        this.f159d = cVar;
    }
}
