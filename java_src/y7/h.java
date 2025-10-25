package y7;

import org.json.JSONObject;
import q7.i0;
/* loaded from: classes.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final i0 f33061a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(i0 i0Var) {
        this.f33061a = i0Var;
    }

    private static i a(int i10) {
        if (i10 != 3) {
            n7.g f10 = n7.g.f();
            f10.d("Could not determine SettingsJsonTransform for settings version " + i10 + ". Using default settings values.");
            return new b();
        }
        return new m();
    }

    public d b(JSONObject jSONObject) {
        return a(jSONObject.getInt("settings_version")).a(this.f33061a, jSONObject);
    }
}
