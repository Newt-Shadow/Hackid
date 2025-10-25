package o7;

import android.os.Bundle;
import io.flutter.plugins.firebase.analytics.Constants;
import n7.g;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class d implements b, p7.b {

    /* renamed from: a  reason: collision with root package name */
    private p7.a f27518a;

    private static String c(String str, Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put(Constants.NAME, str);
        jSONObject.put(Constants.PARAMETERS, jSONObject2);
        return jSONObject.toString();
    }

    @Override // p7.b
    public void a(p7.a aVar) {
        this.f27518a = aVar;
        g.f().b("Registered Firebase Analytics event receiver for breadcrumbs");
    }

    @Override // o7.b
    public void b(String str, Bundle bundle) {
        p7.a aVar = this.f27518a;
        if (aVar != null) {
            try {
                aVar.a("$A$:" + c(str, bundle));
            } catch (JSONException unused) {
                g.f().k("Unable to serialize Firebase Analytics event to breadcrumb.");
            }
        }
    }
}
