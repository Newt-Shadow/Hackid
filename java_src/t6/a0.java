package t6;

import java.util.Objects;
/* loaded from: classes.dex */
public final class a0 extends c {

    /* renamed from: a  reason: collision with root package name */
    private final a f29948a;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: b  reason: collision with root package name */
        public static final a f29949b = new a("TINK");

        /* renamed from: c  reason: collision with root package name */
        public static final a f29950c = new a("CRUNCHY");

        /* renamed from: d  reason: collision with root package name */
        public static final a f29951d = new a("NO_PREFIX");

        /* renamed from: a  reason: collision with root package name */
        private final String f29952a;

        private a(String str) {
            this.f29952a = str;
        }

        public String toString() {
            return this.f29952a;
        }
    }

    private a0(a aVar) {
        this.f29948a = aVar;
    }

    public static a0 a(a aVar) {
        return new a0(aVar);
    }

    public a b() {
        return this.f29948a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a0) || ((a0) obj).b() != b()) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Objects.hashCode(this.f29948a);
    }

    public String toString() {
        return "ChaCha20Poly1305 Parameters (variant: " + this.f29948a + ")";
    }
}
