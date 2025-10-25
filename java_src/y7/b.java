package y7;

import org.json.JSONObject;
import q7.i0;
import y7.d;
/* loaded from: classes.dex */
class b implements i {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static d b(i0 i0Var) {
        return new d(i0Var.a() + 3600000, new d.b(8, 4), new d.a(true, false, false), 0, 3600, 10.0d, 1.2d, 60);
    }

    @Override // y7.i
    public d a(i0 i0Var, JSONObject jSONObject) {
        return b(i0Var);
    }
}
