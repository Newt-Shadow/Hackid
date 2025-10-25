package u8;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final String f30839a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30840b;

    /* renamed from: c  reason: collision with root package name */
    private final String f30841c;

    /* renamed from: d  reason: collision with root package name */
    private final String f30842d;

    /* renamed from: e  reason: collision with root package name */
    private final u f30843e;

    /* renamed from: f  reason: collision with root package name */
    private final a f30844f;

    public b(String appId, String deviceModel, String sessionSdkVersion, String osVersion, u logEnvironment, a androidAppInfo) {
        kotlin.jvm.internal.m.e(appId, "appId");
        kotlin.jvm.internal.m.e(deviceModel, "deviceModel");
        kotlin.jvm.internal.m.e(sessionSdkVersion, "sessionSdkVersion");
        kotlin.jvm.internal.m.e(osVersion, "osVersion");
        kotlin.jvm.internal.m.e(logEnvironment, "logEnvironment");
        kotlin.jvm.internal.m.e(androidAppInfo, "androidAppInfo");
        this.f30839a = appId;
        this.f30840b = deviceModel;
        this.f30841c = sessionSdkVersion;
        this.f30842d = osVersion;
        this.f30843e = logEnvironment;
        this.f30844f = androidAppInfo;
    }

    public final a a() {
        return this.f30844f;
    }

    public final String b() {
        return this.f30839a;
    }

    public final String c() {
        return this.f30840b;
    }

    public final u d() {
        return this.f30843e;
    }

    public final String e() {
        return this.f30842d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            return kotlin.jvm.internal.m.a(this.f30839a, bVar.f30839a) && kotlin.jvm.internal.m.a(this.f30840b, bVar.f30840b) && kotlin.jvm.internal.m.a(this.f30841c, bVar.f30841c) && kotlin.jvm.internal.m.a(this.f30842d, bVar.f30842d) && this.f30843e == bVar.f30843e && kotlin.jvm.internal.m.a(this.f30844f, bVar.f30844f);
        }
        return false;
    }

    public final String f() {
        return this.f30841c;
    }

    public int hashCode() {
        return (((((((((this.f30839a.hashCode() * 31) + this.f30840b.hashCode()) * 31) + this.f30841c.hashCode()) * 31) + this.f30842d.hashCode()) * 31) + this.f30843e.hashCode()) * 31) + this.f30844f.hashCode();
    }

    public String toString() {
        return "ApplicationInfo(appId=" + this.f30839a + ", deviceModel=" + this.f30840b + ", sessionSdkVersion=" + this.f30841c + ", osVersion=" + this.f30842d + ", logEnvironment=" + this.f30843e + ", androidAppInfo=" + this.f30844f + ')';
    }
}
