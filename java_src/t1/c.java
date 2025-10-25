package t1;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public interface c extends t1.a {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: b  reason: collision with root package name */
        public static final C0311a f29796b = new C0311a(null);

        /* renamed from: c  reason: collision with root package name */
        public static final a f29797c = new a("NONE");

        /* renamed from: d  reason: collision with root package name */
        public static final a f29798d = new a("FULL");

        /* renamed from: a  reason: collision with root package name */
        private final String f29799a;

        /* renamed from: t1.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0311a {
            private C0311a() {
            }

            public /* synthetic */ C0311a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        private a(String str) {
            this.f29799a = str;
        }

        public String toString() {
            return this.f29799a;
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: b  reason: collision with root package name */
        public static final a f29800b = new a(null);

        /* renamed from: c  reason: collision with root package name */
        public static final b f29801c = new b("FLAT");

        /* renamed from: d  reason: collision with root package name */
        public static final b f29802d = new b("HALF_OPENED");

        /* renamed from: a  reason: collision with root package name */
        private final String f29803a;

        /* loaded from: classes.dex */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        private b(String str) {
            this.f29803a = str;
        }

        public String toString() {
            return this.f29803a;
        }
    }

    a b();

    b getState();
}
