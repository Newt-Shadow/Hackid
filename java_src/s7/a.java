package s7;
/* loaded from: classes.dex */
public final class a implements e8.a {

    /* renamed from: a  reason: collision with root package name */
    public static final e8.a f29471a = new a();

    /* renamed from: s7.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0306a implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final C0306a f29472a = new C0306a();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f29473b = d8.c.d("rolloutId");

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f29474c = d8.c.d("parameterKey");

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f29475d = d8.c.d("parameterValue");

        /* renamed from: e  reason: collision with root package name */
        private static final d8.c f29476e = d8.c.d("variantId");

        /* renamed from: f  reason: collision with root package name */
        private static final d8.c f29477f = d8.c.d("templateVersion");

        private C0306a() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(j jVar, d8.e eVar) {
            eVar.c(f29473b, jVar.e());
            eVar.c(f29474c, jVar.c());
            eVar.c(f29475d, jVar.d());
            eVar.c(f29476e, jVar.g());
            eVar.b(f29477f, jVar.f());
        }
    }

    private a() {
    }

    @Override // e8.a
    public void a(e8.b bVar) {
        C0306a c0306a = C0306a.f29472a;
        bVar.a(j.class, c0306a);
        bVar.a(b.class, c0306a);
    }
}
