package wa;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.util.Map;
/* loaded from: classes.dex */
public class m {

    /* renamed from: e  reason: collision with root package name */
    private static final d f32015e = d.RSA_ECB_PKCS1Padding;

    /* renamed from: f  reason: collision with root package name */
    private static final l f32016f = l.AES_CBC_PKCS7Padding;

    /* renamed from: a  reason: collision with root package name */
    private final d f32017a;

    /* renamed from: b  reason: collision with root package name */
    private final l f32018b;

    /* renamed from: c  reason: collision with root package name */
    private final d f32019c;

    /* renamed from: d  reason: collision with root package name */
    private final l f32020d;

    public m(SharedPreferences sharedPreferences, Map map) {
        d dVar = f32015e;
        this.f32017a = d.valueOf(sharedPreferences.getString("FlutterSecureSAlgorithmKey", dVar.name()));
        l lVar = f32016f;
        this.f32018b = l.valueOf(sharedPreferences.getString("FlutterSecureSAlgorithmStorage", lVar.name()));
        d valueOf = d.valueOf(b(map, "keyCipherAlgorithm", dVar.name()));
        int i10 = valueOf.f32004b;
        int i11 = Build.VERSION.SDK_INT;
        this.f32019c = i10 <= i11 ? valueOf : dVar;
        l valueOf2 = l.valueOf(b(map, "storageCipherAlgorithm", lVar.name()));
        this.f32020d = valueOf2.f32014b <= i11 ? valueOf2 : lVar;
    }

    private String b(Map map, String str, String str2) {
        Object obj = map.get(str);
        if (obj != null) {
            return obj.toString();
        }
        return str2;
    }

    public i a(Context context) {
        return this.f32020d.f32013a.a(context, this.f32019c.f32003a.a(context));
    }

    public i c(Context context) {
        return this.f32018b.f32013a.a(context, this.f32017a.f32003a.a(context));
    }

    public void d(SharedPreferences.Editor editor) {
        editor.remove("FlutterSecureSAlgorithmKey");
        editor.remove("FlutterSecureSAlgorithmStorage");
    }

    public boolean e() {
        if (this.f32017a == this.f32019c && this.f32018b == this.f32020d) {
            return false;
        }
        return true;
    }

    public void f(SharedPreferences.Editor editor) {
        editor.putString("FlutterSecureSAlgorithmKey", this.f32019c.name());
        editor.putString("FlutterSecureSAlgorithmStorage", this.f32020d.name());
    }
}
