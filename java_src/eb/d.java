package eb;

import com.posthog.surveys.PostHogSurveysConfig;
import id.l;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.n;
import lb.b0;
import lb.k;
import lb.m;
import xc.t;
/* loaded from: classes.dex */
public abstract class d {
    public static final b J = new b(null);
    private String A;
    private m B;
    private k C;
    private String D;
    private lb.g E;
    private final List F;
    private final Object G;
    private final List H;
    private final Object I;

    /* renamed from: a  reason: collision with root package name */
    private final String f15483a;

    /* renamed from: b  reason: collision with root package name */
    private final String f15484b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f15485c;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f15486d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f15487e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f15488f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f15489g;

    /* renamed from: h  reason: collision with root package name */
    private int f15490h;

    /* renamed from: i  reason: collision with root package name */
    private int f15491i;

    /* renamed from: j  reason: collision with root package name */
    private int f15492j;

    /* renamed from: k  reason: collision with root package name */
    private int f15493k;

    /* renamed from: l  reason: collision with root package name */
    private i f15494l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f15495m;

    /* renamed from: n  reason: collision with root package name */
    private l f15496n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f15497o;

    /* renamed from: p  reason: collision with root package name */
    private eb.a f15498p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f15499q;

    /* renamed from: r  reason: collision with root package name */
    private Proxy f15500r;

    /* renamed from: s  reason: collision with root package name */
    private PostHogSurveysConfig f15501s;

    /* renamed from: t  reason: collision with root package name */
    private lb.i f15502t;

    /* renamed from: u  reason: collision with root package name */
    private final xc.d f15503u;

    /* renamed from: v  reason: collision with root package name */
    private lb.f f15504v;

    /* renamed from: w  reason: collision with root package name */
    private String f15505w;

    /* renamed from: x  reason: collision with root package name */
    private String f15506x;

    /* renamed from: y  reason: collision with root package name */
    private String f15507y;

    /* renamed from: z  reason: collision with root package name */
    private String f15508z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        public static final a f15509e = new a();

        a() {
            super(1);
        }

        @Override // id.l
        /* renamed from: a */
        public final UUID invoke(UUID it) {
            kotlin.jvm.internal.m.e(it, "it");
            return it;
        }
    }

    /* loaded from: classes.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes.dex */
    static final class c extends n implements id.a {
        c() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final b0 invoke() {
            return new b0(d.this);
        }
    }

    public d(String apiKey, String host, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, int i10, int i11, int i12, int i13, e eVar, i iVar, boolean z15, j jVar, l getAnonymousId, boolean z16, eb.a personProfiles, boolean z17, Proxy proxy, PostHogSurveysConfig surveysConfig) {
        kotlin.jvm.internal.m.e(apiKey, "apiKey");
        kotlin.jvm.internal.m.e(host, "host");
        kotlin.jvm.internal.m.e(getAnonymousId, "getAnonymousId");
        kotlin.jvm.internal.m.e(personProfiles, "personProfiles");
        kotlin.jvm.internal.m.e(surveysConfig, "surveysConfig");
        this.f15483a = apiKey;
        this.f15484b = host;
        this.f15485c = z10;
        this.f15486d = z11;
        this.f15487e = z12;
        this.f15488f = z13;
        this.f15489g = z14;
        this.f15490h = i10;
        this.f15491i = i11;
        this.f15492j = i12;
        this.f15493k = i13;
        this.f15494l = iVar;
        this.f15495m = z15;
        this.f15496n = getAnonymousId;
        this.f15497o = z16;
        this.f15498p = personProfiles;
        this.f15499q = z17;
        this.f15500r = proxy;
        this.f15501s = surveysConfig;
        this.f15502t = new lb.l();
        this.f15503u = xc.e.a(new c());
        this.f15505w = "posthog-java";
        this.f15506x = "3.21.3";
        this.D = "/s/";
        this.E = new lb.h();
        this.F = new ArrayList();
        this.G = new Object();
        this.H = new ArrayList();
        this.I = new Object();
    }

    public final boolean A() {
        return this.f15497o;
    }

    public final String B() {
        return this.f15505w;
    }

    public final String C() {
        return this.f15506x;
    }

    public final boolean D() {
        return this.f15487e;
    }

    public final b0 E() {
        return (b0) this.f15503u.getValue();
    }

    public final boolean F() {
        return this.f15495m;
    }

    public final String G() {
        return this.D;
    }

    public final String H() {
        return this.f15508z;
    }

    public final boolean I() {
        return this.f15499q;
    }

    public final PostHogSurveysConfig J() {
        return this.f15501s;
    }

    public final String K() {
        return this.f15505w + '/' + this.f15506x;
    }

    public final void L(m mVar) {
        this.B = mVar;
    }

    public final void M(lb.f fVar) {
        this.f15504v = fVar;
    }

    public final void N(lb.g gVar) {
        kotlin.jvm.internal.m.e(gVar, "<set-?>");
        this.E = gVar;
    }

    public final void O(boolean z10) {
        this.f15485c = z10;
    }

    public final void P(int i10) {
        this.f15490h = i10;
    }

    public final void Q(int i10) {
        this.f15493k = i10;
    }

    public final void R(String str) {
        this.f15507y = str;
    }

    public final void S(lb.i iVar) {
        kotlin.jvm.internal.m.e(iVar, "<set-?>");
        this.f15502t = iVar;
    }

    public final void T(int i10) {
        this.f15492j = i10;
    }

    public final void U(int i10) {
        this.f15491i = i10;
    }

    public final void V(k kVar) {
        this.C = kVar;
    }

    public final void W(boolean z10) {
        this.f15486d = z10;
    }

    public final void X(eb.a aVar) {
        kotlin.jvm.internal.m.e(aVar, "<set-?>");
        this.f15498p = aVar;
    }

    public final void Y(boolean z10) {
        this.f15488f = z10;
    }

    public final void Z(String str) {
        this.A = str;
    }

    public final void a(g integration) {
        kotlin.jvm.internal.m.e(integration, "integration");
        synchronized (this.G) {
            this.F.add(integration);
        }
    }

    public final void a0(String str) {
        kotlin.jvm.internal.m.e(str, "<set-?>");
        this.f15505w = str;
    }

    public final String b() {
        return this.f15483a;
    }

    public final void b0(String str) {
        kotlin.jvm.internal.m.e(str, "<set-?>");
        this.f15506x = str;
    }

    public final List c() {
        List k02;
        synchronized (this.I) {
            k02 = yc.m.k0(this.H);
            t tVar = t.f32733a;
        }
        return k02;
    }

    public final void c0(boolean z10) {
        this.f15487e = z10;
    }

    public final m d() {
        return this.B;
    }

    public final void d0(boolean z10) {
        this.f15495m = z10;
    }

    public final lb.f e() {
        return this.f15504v;
    }

    public final void e0(String str) {
        kotlin.jvm.internal.m.e(str, "<set-?>");
        this.D = str;
    }

    public final lb.g f() {
        return this.E;
    }

    public final void f0(String str) {
        this.f15508z = str;
    }

    public final boolean g() {
        return this.f15485c;
    }

    public final e h() {
        return null;
    }

    public final int i() {
        return this.f15490h;
    }

    public final int j() {
        return this.f15493k;
    }

    public final l k() {
        return this.f15496n;
    }

    public final String l() {
        return this.f15484b;
    }

    public final List m() {
        List k02;
        synchronized (this.G) {
            k02 = yc.m.k0(this.F);
            t tVar = t.f32733a;
        }
        return k02;
    }

    public final String n() {
        return this.f15507y;
    }

    public final lb.i o() {
        return this.f15502t;
    }

    public final int p() {
        return this.f15492j;
    }

    public final int q() {
        return this.f15491i;
    }

    public final k r() {
        return this.C;
    }

    public final i s() {
        return this.f15494l;
    }

    public final boolean t() {
        return this.f15486d;
    }

    public final eb.a u() {
        return this.f15498p;
    }

    public final boolean v() {
        return this.f15488f;
    }

    public final j w() {
        return null;
    }

    public final Proxy x() {
        return this.f15500r;
    }

    public final boolean y() {
        return this.f15489g;
    }

    public final String z() {
        return this.A;
    }

    public /* synthetic */ d(String str, String str2, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, int i10, int i11, int i12, int i13, e eVar, i iVar, boolean z15, j jVar, l lVar, boolean z16, eb.a aVar, boolean z17, Proxy proxy, PostHogSurveysConfig postHogSurveysConfig, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i14 & 2) != 0 ? "https://us.i.posthog.com" : str2, (i14 & 4) != 0 ? false : z10, (i14 & 8) != 0 ? false : z11, (i14 & 16) != 0 ? true : z12, (i14 & 32) != 0 ? true : z13, (i14 & 64) == 0 ? z14 : true, (i14 & 128) != 0 ? 20 : i10, (i14 & 256) != 0 ? 1000 : i11, (i14 & 512) != 0 ? 50 : i12, (i14 & 1024) != 0 ? 30 : i13, (i14 & 2048) != 0 ? null : eVar, (i14 & Base64Utils.IO_BUFFER_SIZE) != 0 ? null : iVar, (i14 & 8192) != 0 ? false : z15, (i14 & 16384) != 0 ? null : jVar, (i14 & 32768) != 0 ? a.f15509e : lVar, (i14 & 65536) != 0 ? false : z16, (i14 & 131072) != 0 ? eb.a.IDENTIFIED_ONLY : aVar, (i14 & 262144) != 0 ? false : z17, (i14 & 524288) == 0 ? proxy : null, (i14 & 1048576) != 0 ? new PostHogSurveysConfig() : postHogSurveysConfig);
    }
}
