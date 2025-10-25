package p2;

import io.flutter.plugins.firebase.crashlytics.Constants;
/* loaded from: classes.dex */
public final class a implements e8.a {

    /* renamed from: a  reason: collision with root package name */
    public static final e8.a f27696a = new a();

    /* renamed from: p2.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0281a implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final C0281a f27697a = new C0281a();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f27698b = d8.c.a("window").b(g8.a.b().c(1).a()).a();

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f27699c = d8.c.a("logSourceMetrics").b(g8.a.b().c(2).a()).a();

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f27700d = d8.c.a("globalMetrics").b(g8.a.b().c(3).a()).a();

        /* renamed from: e  reason: collision with root package name */
        private static final d8.c f27701e = d8.c.a("appNamespace").b(g8.a.b().c(4).a()).a();

        private C0281a() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(s2.a aVar, d8.e eVar) {
            eVar.c(f27698b, aVar.d());
            eVar.c(f27699c, aVar.c());
            eVar.c(f27700d, aVar.b());
            eVar.c(f27701e, aVar.a());
        }
    }

    /* loaded from: classes.dex */
    private static final class b implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final b f27702a = new b();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f27703b = d8.c.a("storageMetrics").b(g8.a.b().c(1).a()).a();

        private b() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(s2.b bVar, d8.e eVar) {
            eVar.c(f27703b, bVar.a());
        }
    }

    /* loaded from: classes.dex */
    private static final class c implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final c f27704a = new c();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f27705b = d8.c.a("eventsDroppedCount").b(g8.a.b().c(1).a()).a();

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f27706c = d8.c.a(Constants.REASON).b(g8.a.b().c(3).a()).a();

        private c() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(s2.c cVar, d8.e eVar) {
            eVar.b(f27705b, cVar.a());
            eVar.c(f27706c, cVar.b());
        }
    }

    /* loaded from: classes.dex */
    private static final class d implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final d f27707a = new d();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f27708b = d8.c.a("logSource").b(g8.a.b().c(1).a()).a();

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f27709c = d8.c.a("logEventDropped").b(g8.a.b().c(2).a()).a();

        private d() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(s2.d dVar, d8.e eVar) {
            eVar.c(f27708b, dVar.b());
            eVar.c(f27709c, dVar.a());
        }
    }

    /* loaded from: classes.dex */
    private static final class e implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final e f27710a = new e();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f27711b = d8.c.d("clientMetrics");

        private e() {
        }

        @Override // d8.d
        public /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
            android.support.v4.media.session.b.a(obj);
            b(null, (d8.e) obj2);
        }

        public void b(m mVar, d8.e eVar) {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    private static final class f implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final f f27712a = new f();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f27713b = d8.c.a("currentCacheSizeBytes").b(g8.a.b().c(1).a()).a();

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f27714c = d8.c.a("maxCacheSizeBytes").b(g8.a.b().c(2).a()).a();

        private f() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(s2.e eVar, d8.e eVar2) {
            eVar2.b(f27713b, eVar.a());
            eVar2.b(f27714c, eVar.b());
        }
    }

    /* loaded from: classes.dex */
    private static final class g implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final g f27715a = new g();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f27716b = d8.c.a("startMs").b(g8.a.b().c(1).a()).a();

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f27717c = d8.c.a("endMs").b(g8.a.b().c(2).a()).a();

        private g() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(s2.f fVar, d8.e eVar) {
            eVar.b(f27716b, fVar.b());
            eVar.b(f27717c, fVar.a());
        }
    }

    private a() {
    }

    @Override // e8.a
    public void a(e8.b bVar) {
        bVar.a(m.class, e.f27710a);
        bVar.a(s2.a.class, C0281a.f27697a);
        bVar.a(s2.f.class, g.f27715a);
        bVar.a(s2.d.class, d.f27707a);
        bVar.a(s2.c.class, c.f27704a);
        bVar.a(s2.b.class, b.f27702a);
        bVar.a(s2.e.class, f.f27712a);
    }
}
