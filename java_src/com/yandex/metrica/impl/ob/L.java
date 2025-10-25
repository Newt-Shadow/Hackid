package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes2.dex */
public class L {

    /* renamed from: a  reason: collision with root package name */
    private final W0 f10634a;

    /* renamed from: b  reason: collision with root package name */
    private final W0 f10635b;

    /* renamed from: c  reason: collision with root package name */
    private final W0 f10636c;

    /* renamed from: d  reason: collision with root package name */
    private final W0 f10637d;

    /* renamed from: e  reason: collision with root package name */
    private final W0 f10638e;

    /* renamed from: f  reason: collision with root package name */
    private final W0 f10639f;

    /* renamed from: g  reason: collision with root package name */
    private final W0 f10640g;

    /* renamed from: h  reason: collision with root package name */
    private final W0 f10641h;

    /* renamed from: i  reason: collision with root package name */
    private final W0 f10642i;

    /* renamed from: j  reason: collision with root package name */
    private final W0 f10643j;

    /* renamed from: k  reason: collision with root package name */
    private final W0 f10644k;

    /* renamed from: l  reason: collision with root package name */
    private final long f10645l;

    /* renamed from: m  reason: collision with root package name */
    private final C0541fl f10646m;

    /* renamed from: n  reason: collision with root package name */
    private final C0826ra f10647n;

    /* renamed from: o  reason: collision with root package name */
    private final long f10648o;

    /* renamed from: p  reason: collision with root package name */
    private final Xh f10649p;

    /* JADX INFO: Access modifiers changed from: package-private */
    public L(C0787pi c0787pi, C1019zb c1019zb, Map<String, String> map) {
        this(a(c0787pi.V()), a(c0787pi.i()), a(c0787pi.j()), a(c0787pi.G()), a(c0787pi.p()), a(Tl.a(Tl.a(c0787pi.n()))), a(Tl.a(map)), new W0(c1019zb.a().f13685a == null ? null : c1019zb.a().f13685a.f13629b, c1019zb.a().f13686b, c1019zb.a().f13687c), new W0(c1019zb.b().f13685a == null ? null : c1019zb.b().f13685a.f13629b, c1019zb.b().f13686b, c1019zb.b().f13687c), new W0(c1019zb.c().f13685a != null ? c1019zb.c().f13685a.f13629b : null, c1019zb.c().f13686b, c1019zb.c().f13687c), a(Tl.b(c0787pi.h())), new C0541fl(c0787pi), c0787pi.l(), C0419b.a(), c0787pi.C() + c0787pi.O().a(), a(c0787pi.f().f11312x));
    }

    public W0 a() {
        return this.f10640g;
    }

    public W0 b() {
        return this.f10644k;
    }

    public W0 c() {
        return this.f10635b;
    }

    public W0 d() {
        return this.f10636c;
    }

    public C0826ra e() {
        return this.f10647n;
    }

    public Xh f() {
        return this.f10649p;
    }

    public W0 g() {
        return this.f10641h;
    }

    public W0 h() {
        return this.f10638e;
    }

    public W0 i() {
        return this.f10642i;
    }

    public long j() {
        return this.f10648o;
    }

    public W0 k() {
        return this.f10637d;
    }

    public W0 l() {
        return this.f10639f;
    }

    public long m() {
        return this.f10645l;
    }

    public C0541fl n() {
        return this.f10646m;
    }

    public W0 o() {
        return this.f10634a;
    }

    public W0 p() {
        return this.f10643j;
    }

    public String toString() {
        return "ClientIdentifiersHolder{mUuidData=" + this.f10634a + ", mDeviceIdData=" + this.f10635b + ", mDeviceIdHashData=" + this.f10636c + ", mReportAdUrlData=" + this.f10637d + ", mGetAdUrlData=" + this.f10638e + ", mResponseClidsData=" + this.f10639f + ", mClientClidsForRequestData=" + this.f10640g + ", mGaidData=" + this.f10641h + ", mHoaidData=" + this.f10642i + ", yandexAdvIdData=" + this.f10643j + ", customSdkHostsData=" + this.f10644k + ", customSdkHosts=" + this.f10644k + ", mServerTimeOffset=" + this.f10645l + ", mUiAccessConfig=" + this.f10646m + ", diagnosticsConfigsHolder=" + this.f10647n + ", nextStartupTime=" + this.f10648o + ", features=" + this.f10649p + '}';
    }

    private static Bundle a(Parcelable parcelable) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("value", parcelable);
        return bundle;
    }

    private static C0541fl b(Bundle bundle) {
        return (C0541fl) a(bundle.getBundle("UiAccessConfig"), C0541fl.class.getClassLoader());
    }

    public void c(Bundle bundle) {
        bundle.putBundle("Uuid", a(this.f10634a));
        bundle.putBundle("DeviceId", a(this.f10635b));
        bundle.putBundle("DeviceIdHash", a(this.f10636c));
        bundle.putBundle("AdUrlReport", a(this.f10637d));
        bundle.putBundle("AdUrlGet", a(this.f10638e));
        bundle.putBundle("Clids", a(this.f10639f));
        bundle.putBundle("RequestClids", a(this.f10640g));
        bundle.putBundle("GAID", a(this.f10641h));
        bundle.putBundle("HOAID", a(this.f10642i));
        bundle.putBundle("YANDEX_ADV_ID", a(this.f10643j));
        bundle.putBundle("CUSTOM_SDK_HOSTS", a(this.f10644k));
        bundle.putBundle("UiAccessConfig", a(this.f10646m));
        bundle.putBundle("DiagnosticsConfigsHolder", a(this.f10647n));
        bundle.putLong("ServerTimeOffset", this.f10645l);
        bundle.putLong("NextStartupTime", this.f10648o);
        bundle.putBundle("features", a(this.f10649p));
    }

    private static Parcelable a(Bundle bundle, ClassLoader classLoader) {
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader(classLoader);
        return bundle.getParcelable("value");
    }

    private static W0 b(Bundle bundle, String str) {
        W0 w02 = (W0) a(bundle.getBundle(str), W0.class.getClassLoader());
        return w02 == null ? new W0(null, U0.UNKNOWN, "bundle serialization error") : w02;
    }

    private static C0826ra a(Bundle bundle) {
        C0826ra c0826ra = (C0826ra) a(bundle.getBundle("DiagnosticsConfigsHolder"), C0826ra.class.getClassLoader());
        return c0826ra == null ? new C0826ra() : c0826ra;
    }

    private static Xh a(Bundle bundle, String str) {
        Xh xh = (Xh) a(bundle.getBundle(str), Xh.class.getClassLoader());
        return xh == null ? new Xh(null, U0.UNKNOWN, "bundle serialization error") : xh;
    }

    private static W0 a(String str) {
        boolean isEmpty = TextUtils.isEmpty(str);
        return new W0(str, isEmpty ? U0.UNKNOWN : U0.OK, isEmpty ? "no identifier in startup state" : null);
    }

    private static Xh a(Boolean bool) {
        boolean z10 = bool != null;
        return new Xh(bool, z10 ? U0.OK : U0.UNKNOWN, z10 ? null : "no identifier in startup state");
    }

    public L(Bundle bundle) {
        this(b(bundle, "Uuid"), b(bundle, "DeviceId"), b(bundle, "DeviceIdHash"), b(bundle, "AdUrlReport"), b(bundle, "AdUrlGet"), b(bundle, "Clids"), b(bundle, "RequestClids"), b(bundle, "GAID"), b(bundle, "HOAID"), b(bundle, "YANDEX_ADV_ID"), b(bundle, "CUSTOM_SDK_HOSTS"), b(bundle), a(bundle), bundle.getLong("ServerTimeOffset"), bundle.getLong("NextStartupTime"), a(bundle, "features"));
    }

    public L(W0 w02, W0 w03, W0 w04, W0 w05, W0 w06, W0 w07, W0 w08, W0 w09, W0 w010, W0 w011, W0 w012, C0541fl c0541fl, C0826ra c0826ra, long j10, long j11, Xh xh) {
        this.f10634a = w02;
        this.f10635b = w03;
        this.f10636c = w04;
        this.f10637d = w05;
        this.f10638e = w06;
        this.f10639f = w07;
        this.f10640g = w08;
        this.f10641h = w09;
        this.f10642i = w010;
        this.f10643j = w011;
        this.f10644k = w012;
        this.f10646m = c0541fl;
        this.f10647n = c0826ra;
        this.f10645l = j10;
        this.f10648o = j11;
        this.f10649p = xh;
    }
}
