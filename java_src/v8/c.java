package v8;

import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public interface c {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f31285a = new a("CRASHLYTICS", 0);

        /* renamed from: b  reason: collision with root package name */
        public static final a f31286b = new a("PERFORMANCE", 1);

        /* renamed from: c  reason: collision with root package name */
        public static final a f31287c = new a("MATT_SAYS_HI", 2);

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ a[] f31288d;

        /* renamed from: e  reason: collision with root package name */
        private static final /* synthetic */ cd.a f31289e;

        static {
            a[] a10 = a();
            f31288d = a10;
            f31289e = cd.b.a(a10);
        }

        private a(String str, int i10) {
        }

        private static final /* synthetic */ a[] a() {
            return new a[]{f31285a, f31286b, f31287c};
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) f31288d.clone();
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f31290a;

        public b(String sessionId) {
            m.e(sessionId, "sessionId");
            this.f31290a = sessionId;
        }

        public final String a() {
            return this.f31290a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && m.a(this.f31290a, ((b) obj).f31290a);
        }

        public int hashCode() {
            return this.f31290a.hashCode();
        }

        public String toString() {
            return "SessionDetails(sessionId=" + this.f31290a + ')';
        }
    }

    boolean a();

    a b();

    void c(b bVar);
}
