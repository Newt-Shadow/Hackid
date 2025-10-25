package s7;

import org.json.JSONObject;
import t7.f0;
/* loaded from: classes.dex */
public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    public static final d8.a f29520a = new f8.d().j(a.f29471a).i();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j a(String str) {
        JSONObject jSONObject = new JSONObject(str);
        return b(jSONObject.getString("rolloutId"), jSONObject.getString("parameterKey"), jSONObject.getString("parameterValue"), jSONObject.getString("variantId"), jSONObject.getLong("templateVersion"));
    }

    public static j b(String str, String str2, String str3, String str4, long j10) {
        return new b(str, str2, i(str3), str4, j10);
    }

    private static String i(String str) {
        if (str.length() > 256) {
            return str.substring(0, 256);
        }
        return str;
    }

    public abstract String c();

    public abstract String d();

    public abstract String e();

    public abstract long f();

    public abstract String g();

    public f0.e.d.AbstractC0335e h() {
        return f0.e.d.AbstractC0335e.a().d(f0.e.d.AbstractC0335e.b.a().c(g()).b(e()).a()).b(c()).c(d()).e(f()).a();
    }
}
