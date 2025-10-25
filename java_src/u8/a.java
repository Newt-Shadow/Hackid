package u8;

import java.util.List;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f30827a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30828b;

    /* renamed from: c  reason: collision with root package name */
    private final String f30829c;

    /* renamed from: d  reason: collision with root package name */
    private final String f30830d;

    /* renamed from: e  reason: collision with root package name */
    private final c0 f30831e;

    /* renamed from: f  reason: collision with root package name */
    private final List f30832f;

    public a(String packageName, String versionName, String appBuildVersion, String deviceManufacturer, c0 currentProcessDetails, List appProcessDetails) {
        kotlin.jvm.internal.m.e(packageName, "packageName");
        kotlin.jvm.internal.m.e(versionName, "versionName");
        kotlin.jvm.internal.m.e(appBuildVersion, "appBuildVersion");
        kotlin.jvm.internal.m.e(deviceManufacturer, "deviceManufacturer");
        kotlin.jvm.internal.m.e(currentProcessDetails, "currentProcessDetails");
        kotlin.jvm.internal.m.e(appProcessDetails, "appProcessDetails");
        this.f30827a = packageName;
        this.f30828b = versionName;
        this.f30829c = appBuildVersion;
        this.f30830d = deviceManufacturer;
        this.f30831e = currentProcessDetails;
        this.f30832f = appProcessDetails;
    }

    public final String a() {
        return this.f30829c;
    }

    public final List b() {
        return this.f30832f;
    }

    public final c0 c() {
        return this.f30831e;
    }

    public final String d() {
        return this.f30830d;
    }

    public final String e() {
        return this.f30827a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            return kotlin.jvm.internal.m.a(this.f30827a, aVar.f30827a) && kotlin.jvm.internal.m.a(this.f30828b, aVar.f30828b) && kotlin.jvm.internal.m.a(this.f30829c, aVar.f30829c) && kotlin.jvm.internal.m.a(this.f30830d, aVar.f30830d) && kotlin.jvm.internal.m.a(this.f30831e, aVar.f30831e) && kotlin.jvm.internal.m.a(this.f30832f, aVar.f30832f);
        }
        return false;
    }

    public final String f() {
        return this.f30828b;
    }

    public int hashCode() {
        return (((((((((this.f30827a.hashCode() * 31) + this.f30828b.hashCode()) * 31) + this.f30829c.hashCode()) * 31) + this.f30830d.hashCode()) * 31) + this.f30831e.hashCode()) * 31) + this.f30832f.hashCode();
    }

    public String toString() {
        return "AndroidApplicationInfo(packageName=" + this.f30827a + ", versionName=" + this.f30828b + ", appBuildVersion=" + this.f30829c + ", deviceManufacturer=" + this.f30830d + ", currentProcessDetails=" + this.f30831e + ", appProcessDetails=" + this.f30832f + ')';
    }
}
