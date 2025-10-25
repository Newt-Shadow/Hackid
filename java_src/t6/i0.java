package t6;

import java.util.Objects;
/* loaded from: classes.dex */
public final class i0 extends c {

    /* renamed from: a  reason: collision with root package name */
    private final a f29996a;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: b  reason: collision with root package name */
        public static final a f29997b = new a("TINK");

        /* renamed from: c  reason: collision with root package name */
        public static final a f29998c = new a("CRUNCHY");

        /* renamed from: d  reason: collision with root package name */
        public static final a f29999d = new a("NO_PREFIX");

        /* renamed from: a  reason: collision with root package name */
        private final String f30000a;

        private a(String str) {
            this.f30000a = str;
        }

        public String toString() {
            return this.f30000a;
        }
    }

    private i0(a aVar) {
        this.f29996a = aVar;
    }

    public static i0 a(a aVar) {
        return new i0(aVar);
    }

    public a b() {
        return this.f29996a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof i0) || ((i0) obj).b() != b()) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Objects.hashCode(this.f29996a);
    }

    public String toString() {
        return "XChaCha20Poly1305 Parameters (variant: " + this.f29996a + ")";
    }
}
