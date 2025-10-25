package s2;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static final b f29247b = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final e f29248a;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private e f29249a = null;

        a() {
        }

        public b a() {
            return new b(this.f29249a);
        }

        public a b(e eVar) {
            this.f29249a = eVar;
            return this;
        }
    }

    b(e eVar) {
        this.f29248a = eVar;
    }

    public static a b() {
        return new a();
    }

    public e a() {
        return this.f29248a;
    }
}
