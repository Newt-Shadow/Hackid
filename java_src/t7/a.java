package t7;

import com.arthenica.ffmpegkit.MediaInformation;
import io.appmetrica.analytics.impl.H2;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.flutter.plugins.firebase.crashlytics.Constants;
import org.apache.tika.mime.MimeTypesReaderMetKeys;
import t7.f0;
/* loaded from: classes.dex */
public final class a implements e8.a {

    /* renamed from: a  reason: collision with root package name */
    public static final e8.a f30066a = new a();

    /* renamed from: t7.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0317a implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final C0317a f30067a = new C0317a();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30068b = d8.c.d("arch");

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30069c = d8.c.d("libraryName");

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f30070d = d8.c.d(Constants.BUILD_ID);

        private C0317a() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.a.AbstractC0319a abstractC0319a, d8.e eVar) {
            eVar.c(f30068b, abstractC0319a.b());
            eVar.c(f30069c, abstractC0319a.d());
            eVar.c(f30070d, abstractC0319a.c());
        }
    }

    /* loaded from: classes.dex */
    private static final class b implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final b f30071a = new b();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30072b = d8.c.d("pid");

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30073c = d8.c.d("processName");

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f30074d = d8.c.d("reasonCode");

        /* renamed from: e  reason: collision with root package name */
        private static final d8.c f30075e = d8.c.d("importance");

        /* renamed from: f  reason: collision with root package name */
        private static final d8.c f30076f = d8.c.d("pss");

        /* renamed from: g  reason: collision with root package name */
        private static final d8.c f30077g = d8.c.d("rss");

        /* renamed from: h  reason: collision with root package name */
        private static final d8.c f30078h = d8.c.d(Constants.TIMESTAMP);

        /* renamed from: i  reason: collision with root package name */
        private static final d8.c f30079i = d8.c.d("traceFile");

        /* renamed from: j  reason: collision with root package name */
        private static final d8.c f30080j = d8.c.d("buildIdMappingForArch");

        private b() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.a aVar, d8.e eVar) {
            eVar.f(f30072b, aVar.d());
            eVar.c(f30073c, aVar.e());
            eVar.f(f30074d, aVar.g());
            eVar.f(f30075e, aVar.c());
            eVar.b(f30076f, aVar.f());
            eVar.b(f30077g, aVar.h());
            eVar.b(f30078h, aVar.i());
            eVar.c(f30079i, aVar.j());
            eVar.c(f30080j, aVar.b());
        }
    }

    /* loaded from: classes.dex */
    private static final class c implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final c f30081a = new c();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30082b = d8.c.d("key");

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30083c = d8.c.d("value");

        private c() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.c cVar, d8.e eVar) {
            eVar.c(f30082b, cVar.b());
            eVar.c(f30083c, cVar.c());
        }
    }

    /* loaded from: classes.dex */
    private static final class d implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final d f30084a = new d();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30085b = d8.c.d("sdkVersion");

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30086c = d8.c.d("gmpAppId");

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f30087d = d8.c.d("platform");

        /* renamed from: e  reason: collision with root package name */
        private static final d8.c f30088e = d8.c.d("installationUuid");

        /* renamed from: f  reason: collision with root package name */
        private static final d8.c f30089f = d8.c.d("firebaseInstallationId");

        /* renamed from: g  reason: collision with root package name */
        private static final d8.c f30090g = d8.c.d("firebaseAuthenticationToken");

        /* renamed from: h  reason: collision with root package name */
        private static final d8.c f30091h = d8.c.d("appQualitySessionId");

        /* renamed from: i  reason: collision with root package name */
        private static final d8.c f30092i = d8.c.d("buildVersion");

        /* renamed from: j  reason: collision with root package name */
        private static final d8.c f30093j = d8.c.d("displayVersion");

        /* renamed from: k  reason: collision with root package name */
        private static final d8.c f30094k = d8.c.d("session");

        /* renamed from: l  reason: collision with root package name */
        private static final d8.c f30095l = d8.c.d("ndkPayload");

        /* renamed from: m  reason: collision with root package name */
        private static final d8.c f30096m = d8.c.d("appExitInfo");

        private d() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0 f0Var, d8.e eVar) {
            eVar.c(f30085b, f0Var.m());
            eVar.c(f30086c, f0Var.i());
            eVar.f(f30087d, f0Var.l());
            eVar.c(f30088e, f0Var.j());
            eVar.c(f30089f, f0Var.h());
            eVar.c(f30090g, f0Var.g());
            eVar.c(f30091h, f0Var.d());
            eVar.c(f30092i, f0Var.e());
            eVar.c(f30093j, f0Var.f());
            eVar.c(f30094k, f0Var.n());
            eVar.c(f30095l, f0Var.k());
            eVar.c(f30096m, f0Var.c());
        }
    }

    /* loaded from: classes.dex */
    private static final class e implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final e f30097a = new e();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30098b = d8.c.d("files");

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30099c = d8.c.d("orgId");

        private e() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.d dVar, d8.e eVar) {
            eVar.c(f30098b, dVar.b());
            eVar.c(f30099c, dVar.c());
        }
    }

    /* loaded from: classes.dex */
    private static final class f implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final f f30100a = new f();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30101b = d8.c.d(MediaInformation.KEY_FILENAME);

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30102c = d8.c.d("contents");

        private f() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.d.b bVar, d8.e eVar) {
            eVar.c(f30101b, bVar.c());
            eVar.c(f30102c, bVar.b());
        }
    }

    /* loaded from: classes.dex */
    private static final class g implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final g f30103a = new g();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30104b = d8.c.d(Constants.IDENTIFIER);

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30105c = d8.c.d("version");

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f30106d = d8.c.d("displayVersion");

        /* renamed from: e  reason: collision with root package name */
        private static final d8.c f30107e = d8.c.d("organization");

        /* renamed from: f  reason: collision with root package name */
        private static final d8.c f30108f = d8.c.d("installationUuid");

        /* renamed from: g  reason: collision with root package name */
        private static final d8.c f30109g = d8.c.d("developmentPlatform");

        /* renamed from: h  reason: collision with root package name */
        private static final d8.c f30110h = d8.c.d("developmentPlatformVersion");

        private g() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.e.a aVar, d8.e eVar) {
            eVar.c(f30104b, aVar.e());
            eVar.c(f30105c, aVar.h());
            eVar.c(f30106d, aVar.d());
            d8.c cVar = f30107e;
            aVar.g();
            eVar.c(cVar, null);
            eVar.c(f30108f, aVar.f());
            eVar.c(f30109g, aVar.b());
            eVar.c(f30110h, aVar.c());
        }
    }

    /* loaded from: classes.dex */
    private static final class h implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final h f30111a = new h();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30112b = d8.c.d("clsId");

        private h() {
        }

        @Override // d8.d
        public /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
            android.support.v4.media.session.b.a(obj);
            b(null, (d8.e) obj2);
        }

        public void b(f0.e.a.b bVar, d8.e eVar) {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    private static final class i implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final i f30113a = new i();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30114b = d8.c.d("arch");

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30115c = d8.c.d(CommonUrlParts.MODEL);

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f30116d = d8.c.d("cores");

        /* renamed from: e  reason: collision with root package name */
        private static final d8.c f30117e = d8.c.d("ram");

        /* renamed from: f  reason: collision with root package name */
        private static final d8.c f30118f = d8.c.d("diskSpace");

        /* renamed from: g  reason: collision with root package name */
        private static final d8.c f30119g = d8.c.d("simulator");

        /* renamed from: h  reason: collision with root package name */
        private static final d8.c f30120h = d8.c.d("state");

        /* renamed from: i  reason: collision with root package name */
        private static final d8.c f30121i = d8.c.d(CommonUrlParts.MANUFACTURER);

        /* renamed from: j  reason: collision with root package name */
        private static final d8.c f30122j = d8.c.d("modelClass");

        private i() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.e.c cVar, d8.e eVar) {
            eVar.f(f30114b, cVar.b());
            eVar.c(f30115c, cVar.f());
            eVar.f(f30116d, cVar.c());
            eVar.b(f30117e, cVar.h());
            eVar.b(f30118f, cVar.d());
            eVar.a(f30119g, cVar.j());
            eVar.f(f30120h, cVar.i());
            eVar.c(f30121i, cVar.e());
            eVar.c(f30122j, cVar.g());
        }
    }

    /* loaded from: classes.dex */
    private static final class j implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final j f30123a = new j();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30124b = d8.c.d("generator");

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30125c = d8.c.d(Constants.IDENTIFIER);

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f30126d = d8.c.d("appQualitySessionId");

        /* renamed from: e  reason: collision with root package name */
        private static final d8.c f30127e = d8.c.d("startedAt");

        /* renamed from: f  reason: collision with root package name */
        private static final d8.c f30128f = d8.c.d("endedAt");

        /* renamed from: g  reason: collision with root package name */
        private static final d8.c f30129g = d8.c.d("crashed");

        /* renamed from: h  reason: collision with root package name */
        private static final d8.c f30130h = d8.c.d("app");

        /* renamed from: i  reason: collision with root package name */
        private static final d8.c f30131i = d8.c.d("user");

        /* renamed from: j  reason: collision with root package name */
        private static final d8.c f30132j = d8.c.d("os");

        /* renamed from: k  reason: collision with root package name */
        private static final d8.c f30133k = d8.c.d("device");

        /* renamed from: l  reason: collision with root package name */
        private static final d8.c f30134l = d8.c.d("events");

        /* renamed from: m  reason: collision with root package name */
        private static final d8.c f30135m = d8.c.d("generatorType");

        private j() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.e eVar, d8.e eVar2) {
            eVar2.c(f30124b, eVar.g());
            eVar2.c(f30125c, eVar.j());
            eVar2.c(f30126d, eVar.c());
            eVar2.b(f30127e, eVar.l());
            eVar2.c(f30128f, eVar.e());
            eVar2.a(f30129g, eVar.n());
            eVar2.c(f30130h, eVar.b());
            eVar2.c(f30131i, eVar.m());
            eVar2.c(f30132j, eVar.k());
            eVar2.c(f30133k, eVar.d());
            eVar2.c(f30134l, eVar.f());
            eVar2.f(f30135m, eVar.h());
        }
    }

    /* loaded from: classes.dex */
    private static final class k implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final k f30136a = new k();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30137b = d8.c.d("execution");

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30138c = d8.c.d("customAttributes");

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f30139d = d8.c.d("internalKeys");

        /* renamed from: e  reason: collision with root package name */
        private static final d8.c f30140e = d8.c.d(H2.f18288g);

        /* renamed from: f  reason: collision with root package name */
        private static final d8.c f30141f = d8.c.d("currentProcessDetails");

        /* renamed from: g  reason: collision with root package name */
        private static final d8.c f30142g = d8.c.d("appProcessDetails");

        /* renamed from: h  reason: collision with root package name */
        private static final d8.c f30143h = d8.c.d("uiOrientation");

        private k() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.e.d.a aVar, d8.e eVar) {
            eVar.c(f30137b, aVar.f());
            eVar.c(f30138c, aVar.e());
            eVar.c(f30139d, aVar.g());
            eVar.c(f30140e, aVar.c());
            eVar.c(f30141f, aVar.d());
            eVar.c(f30142g, aVar.b());
            eVar.f(f30143h, aVar.h());
        }
    }

    /* loaded from: classes.dex */
    private static final class l implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final l f30144a = new l();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30145b = d8.c.d("baseAddress");

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30146c = d8.c.d("size");

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f30147d = d8.c.d(io.flutter.plugins.firebase.analytics.Constants.NAME);

        /* renamed from: e  reason: collision with root package name */
        private static final d8.c f30148e = d8.c.d(CommonUrlParts.UUID);

        private l() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.e.d.a.b.AbstractC0323a abstractC0323a, d8.e eVar) {
            eVar.b(f30145b, abstractC0323a.b());
            eVar.b(f30146c, abstractC0323a.d());
            eVar.c(f30147d, abstractC0323a.c());
            eVar.c(f30148e, abstractC0323a.f());
        }
    }

    /* loaded from: classes.dex */
    private static final class m implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final m f30149a = new m();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30150b = d8.c.d("threads");

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30151c = d8.c.d(Constants.EXCEPTION);

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f30152d = d8.c.d("appExitInfo");

        /* renamed from: e  reason: collision with root package name */
        private static final d8.c f30153e = d8.c.d("signal");

        /* renamed from: f  reason: collision with root package name */
        private static final d8.c f30154f = d8.c.d("binaries");

        private m() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.e.d.a.b bVar, d8.e eVar) {
            eVar.c(f30150b, bVar.f());
            eVar.c(f30151c, bVar.d());
            eVar.c(f30152d, bVar.b());
            eVar.c(f30153e, bVar.e());
            eVar.c(f30154f, bVar.c());
        }
    }

    /* loaded from: classes.dex */
    private static final class n implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final n f30155a = new n();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30156b = d8.c.d("type");

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30157c = d8.c.d(Constants.REASON);

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f30158d = d8.c.d("frames");

        /* renamed from: e  reason: collision with root package name */
        private static final d8.c f30159e = d8.c.d("causedBy");

        /* renamed from: f  reason: collision with root package name */
        private static final d8.c f30160f = d8.c.d("overflowCount");

        private n() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.e.d.a.b.c cVar, d8.e eVar) {
            eVar.c(f30156b, cVar.f());
            eVar.c(f30157c, cVar.e());
            eVar.c(f30158d, cVar.c());
            eVar.c(f30159e, cVar.b());
            eVar.f(f30160f, cVar.d());
        }
    }

    /* loaded from: classes.dex */
    private static final class o implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final o f30161a = new o();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30162b = d8.c.d(io.flutter.plugins.firebase.analytics.Constants.NAME);

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30163c = d8.c.d("code");

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f30164d = d8.c.d("address");

        private o() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.e.d.a.b.AbstractC0327d abstractC0327d, d8.e eVar) {
            eVar.c(f30162b, abstractC0327d.d());
            eVar.c(f30163c, abstractC0327d.c());
            eVar.b(f30164d, abstractC0327d.b());
        }
    }

    /* loaded from: classes.dex */
    private static final class p implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final p f30165a = new p();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30166b = d8.c.d(io.flutter.plugins.firebase.analytics.Constants.NAME);

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30167c = d8.c.d("importance");

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f30168d = d8.c.d("frames");

        private p() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.e.d.a.b.AbstractC0329e abstractC0329e, d8.e eVar) {
            eVar.c(f30166b, abstractC0329e.d());
            eVar.f(f30167c, abstractC0329e.c());
            eVar.c(f30168d, abstractC0329e.b());
        }
    }

    /* loaded from: classes.dex */
    private static final class q implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final q f30169a = new q();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30170b = d8.c.d("pc");

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30171c = d8.c.d("symbol");

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f30172d = d8.c.d(Constants.FILE);

        /* renamed from: e  reason: collision with root package name */
        private static final d8.c f30173e = d8.c.d(MimeTypesReaderMetKeys.MATCH_OFFSET_ATTR);

        /* renamed from: f  reason: collision with root package name */
        private static final d8.c f30174f = d8.c.d("importance");

        private q() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.e.d.a.b.AbstractC0329e.AbstractC0331b abstractC0331b, d8.e eVar) {
            eVar.b(f30170b, abstractC0331b.e());
            eVar.c(f30171c, abstractC0331b.f());
            eVar.c(f30172d, abstractC0331b.b());
            eVar.b(f30173e, abstractC0331b.d());
            eVar.f(f30174f, abstractC0331b.c());
        }
    }

    /* loaded from: classes.dex */
    private static final class r implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final r f30175a = new r();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30176b = d8.c.d("processName");

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30177c = d8.c.d("pid");

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f30178d = d8.c.d("importance");

        /* renamed from: e  reason: collision with root package name */
        private static final d8.c f30179e = d8.c.d("defaultProcess");

        private r() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.e.d.a.c cVar, d8.e eVar) {
            eVar.c(f30176b, cVar.d());
            eVar.f(f30177c, cVar.c());
            eVar.f(f30178d, cVar.b());
            eVar.a(f30179e, cVar.e());
        }
    }

    /* loaded from: classes.dex */
    private static final class s implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final s f30180a = new s();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30181b = d8.c.d("batteryLevel");

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30182c = d8.c.d("batteryVelocity");

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f30183d = d8.c.d("proximityOn");

        /* renamed from: e  reason: collision with root package name */
        private static final d8.c f30184e = d8.c.d("orientation");

        /* renamed from: f  reason: collision with root package name */
        private static final d8.c f30185f = d8.c.d("ramUsed");

        /* renamed from: g  reason: collision with root package name */
        private static final d8.c f30186g = d8.c.d("diskUsed");

        private s() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.e.d.c cVar, d8.e eVar) {
            eVar.c(f30181b, cVar.b());
            eVar.f(f30182c, cVar.c());
            eVar.a(f30183d, cVar.g());
            eVar.f(f30184e, cVar.e());
            eVar.b(f30185f, cVar.f());
            eVar.b(f30186g, cVar.d());
        }
    }

    /* loaded from: classes.dex */
    private static final class t implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final t f30187a = new t();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30188b = d8.c.d(Constants.TIMESTAMP);

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30189c = d8.c.d("type");

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f30190d = d8.c.d("app");

        /* renamed from: e  reason: collision with root package name */
        private static final d8.c f30191e = d8.c.d("device");

        /* renamed from: f  reason: collision with root package name */
        private static final d8.c f30192f = d8.c.d("log");

        /* renamed from: g  reason: collision with root package name */
        private static final d8.c f30193g = d8.c.d("rollouts");

        private t() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.e.d dVar, d8.e eVar) {
            eVar.b(f30188b, dVar.f());
            eVar.c(f30189c, dVar.g());
            eVar.c(f30190d, dVar.b());
            eVar.c(f30191e, dVar.c());
            eVar.c(f30192f, dVar.d());
            eVar.c(f30193g, dVar.e());
        }
    }

    /* loaded from: classes.dex */
    private static final class u implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final u f30194a = new u();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30195b = d8.c.d("content");

        private u() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.e.d.AbstractC0334d abstractC0334d, d8.e eVar) {
            eVar.c(f30195b, abstractC0334d.b());
        }
    }

    /* loaded from: classes.dex */
    private static final class v implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final v f30196a = new v();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30197b = d8.c.d("rolloutVariant");

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30198c = d8.c.d("parameterKey");

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f30199d = d8.c.d("parameterValue");

        /* renamed from: e  reason: collision with root package name */
        private static final d8.c f30200e = d8.c.d("templateVersion");

        private v() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.e.d.AbstractC0335e abstractC0335e, d8.e eVar) {
            eVar.c(f30197b, abstractC0335e.d());
            eVar.c(f30198c, abstractC0335e.b());
            eVar.c(f30199d, abstractC0335e.c());
            eVar.b(f30200e, abstractC0335e.e());
        }
    }

    /* loaded from: classes.dex */
    private static final class w implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final w f30201a = new w();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30202b = d8.c.d("rolloutId");

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30203c = d8.c.d("variantId");

        private w() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.e.d.AbstractC0335e.b bVar, d8.e eVar) {
            eVar.c(f30202b, bVar.b());
            eVar.c(f30203c, bVar.c());
        }
    }

    /* loaded from: classes.dex */
    private static final class x implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final x f30204a = new x();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30205b = d8.c.d("assignments");

        private x() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.e.d.f fVar, d8.e eVar) {
            eVar.c(f30205b, fVar.b());
        }
    }

    /* loaded from: classes.dex */
    private static final class y implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final y f30206a = new y();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30207b = d8.c.d("platform");

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f30208c = d8.c.d("version");

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f30209d = d8.c.d("buildVersion");

        /* renamed from: e  reason: collision with root package name */
        private static final d8.c f30210e = d8.c.d("jailbroken");

        private y() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.e.AbstractC0336e abstractC0336e, d8.e eVar) {
            eVar.f(f30207b, abstractC0336e.c());
            eVar.c(f30208c, abstractC0336e.d());
            eVar.c(f30209d, abstractC0336e.b());
            eVar.a(f30210e, abstractC0336e.e());
        }
    }

    /* loaded from: classes.dex */
    private static final class z implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final z f30211a = new z();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f30212b = d8.c.d(Constants.IDENTIFIER);

        private z() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(f0.e.f fVar, d8.e eVar) {
            eVar.c(f30212b, fVar.b());
        }
    }

    private a() {
    }

    @Override // e8.a
    public void a(e8.b bVar) {
        d dVar = d.f30084a;
        bVar.a(f0.class, dVar);
        bVar.a(t7.b.class, dVar);
        j jVar = j.f30123a;
        bVar.a(f0.e.class, jVar);
        bVar.a(t7.h.class, jVar);
        g gVar = g.f30103a;
        bVar.a(f0.e.a.class, gVar);
        bVar.a(t7.i.class, gVar);
        h hVar = h.f30111a;
        bVar.a(f0.e.a.b.class, hVar);
        bVar.a(t7.j.class, hVar);
        z zVar = z.f30211a;
        bVar.a(f0.e.f.class, zVar);
        bVar.a(a0.class, zVar);
        y yVar = y.f30206a;
        bVar.a(f0.e.AbstractC0336e.class, yVar);
        bVar.a(t7.z.class, yVar);
        i iVar = i.f30113a;
        bVar.a(f0.e.c.class, iVar);
        bVar.a(t7.k.class, iVar);
        t tVar = t.f30187a;
        bVar.a(f0.e.d.class, tVar);
        bVar.a(t7.l.class, tVar);
        k kVar = k.f30136a;
        bVar.a(f0.e.d.a.class, kVar);
        bVar.a(t7.m.class, kVar);
        m mVar = m.f30149a;
        bVar.a(f0.e.d.a.b.class, mVar);
        bVar.a(t7.n.class, mVar);
        p pVar = p.f30165a;
        bVar.a(f0.e.d.a.b.AbstractC0329e.class, pVar);
        bVar.a(t7.r.class, pVar);
        q qVar = q.f30169a;
        bVar.a(f0.e.d.a.b.AbstractC0329e.AbstractC0331b.class, qVar);
        bVar.a(t7.s.class, qVar);
        n nVar = n.f30155a;
        bVar.a(f0.e.d.a.b.c.class, nVar);
        bVar.a(t7.p.class, nVar);
        b bVar2 = b.f30071a;
        bVar.a(f0.a.class, bVar2);
        bVar.a(t7.c.class, bVar2);
        C0317a c0317a = C0317a.f30067a;
        bVar.a(f0.a.AbstractC0319a.class, c0317a);
        bVar.a(t7.d.class, c0317a);
        o oVar = o.f30161a;
        bVar.a(f0.e.d.a.b.AbstractC0327d.class, oVar);
        bVar.a(t7.q.class, oVar);
        l lVar = l.f30144a;
        bVar.a(f0.e.d.a.b.AbstractC0323a.class, lVar);
        bVar.a(t7.o.class, lVar);
        c cVar = c.f30081a;
        bVar.a(f0.c.class, cVar);
        bVar.a(t7.e.class, cVar);
        r rVar = r.f30175a;
        bVar.a(f0.e.d.a.c.class, rVar);
        bVar.a(t7.t.class, rVar);
        s sVar = s.f30180a;
        bVar.a(f0.e.d.c.class, sVar);
        bVar.a(t7.u.class, sVar);
        u uVar = u.f30194a;
        bVar.a(f0.e.d.AbstractC0334d.class, uVar);
        bVar.a(t7.v.class, uVar);
        x xVar = x.f30204a;
        bVar.a(f0.e.d.f.class, xVar);
        bVar.a(t7.y.class, xVar);
        v vVar = v.f30196a;
        bVar.a(f0.e.d.AbstractC0335e.class, vVar);
        bVar.a(t7.w.class, vVar);
        w wVar = w.f30201a;
        bVar.a(f0.e.d.AbstractC0335e.b.class, wVar);
        bVar.a(t7.x.class, wVar);
        e eVar = e.f30097a;
        bVar.a(f0.d.class, eVar);
        bVar.a(t7.f.class, eVar);
        f fVar = f.f30100a;
        bVar.a(f0.d.b.class, fVar);
        bVar.a(t7.g.class, fVar);
    }
}
