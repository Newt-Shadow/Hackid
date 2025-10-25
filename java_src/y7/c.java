package y7;

import android.text.TextUtils;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.apache.tika.metadata.ClimateForcast;
import org.json.JSONObject;
import q7.d0;
/* loaded from: classes.dex */
class c implements l {

    /* renamed from: a  reason: collision with root package name */
    private final String f33029a;

    /* renamed from: b  reason: collision with root package name */
    private final v7.b f33030b;

    /* renamed from: c  reason: collision with root package name */
    private final n7.g f33031c;

    public c(String str, v7.b bVar) {
        this(str, bVar, n7.g.f());
    }

    private v7.a b(v7.a aVar, k kVar) {
        c(aVar, "X-CRASHLYTICS-GOOGLE-APP-ID", kVar.f33062a);
        c(aVar, "X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        c(aVar, "X-CRASHLYTICS-API-CLIENT-VERSION", d0.s());
        c(aVar, "Accept", "application/json");
        c(aVar, "X-CRASHLYTICS-DEVICE-MODEL", kVar.f33063b);
        c(aVar, "X-CRASHLYTICS-OS-BUILD-VERSION", kVar.f33064c);
        c(aVar, "X-CRASHLYTICS-OS-DISPLAY-VERSION", kVar.f33065d);
        c(aVar, "X-CRASHLYTICS-INSTALLATION-ID", kVar.f33066e.a().c());
        return aVar;
    }

    private void c(v7.a aVar, String str, String str2) {
        if (str2 != null) {
            aVar.d(str, str2);
        }
    }

    private JSONObject e(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e10) {
            n7.g gVar = this.f33031c;
            gVar.l("Failed to parse settings JSON from " + this.f33029a, e10);
            n7.g gVar2 = this.f33031c;
            gVar2.k("Settings response " + str);
            return null;
        }
    }

    private Map f(k kVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("build_version", kVar.f33069h);
        hashMap.put("display_version", kVar.f33068g);
        hashMap.put(ClimateForcast.SOURCE, Integer.toString(kVar.f33070i));
        String str = kVar.f33067f;
        if (!TextUtils.isEmpty(str)) {
            hashMap.put("instance", str);
        }
        return hashMap;
    }

    @Override // y7.l
    public JSONObject a(k kVar, boolean z10) {
        r7.i.d();
        if (z10) {
            try {
                Map f10 = f(kVar);
                v7.a b10 = b(d(f10), kVar);
                n7.g gVar = this.f33031c;
                gVar.b("Requesting settings from " + this.f33029a);
                n7.g gVar2 = this.f33031c;
                gVar2.i("Settings query params were: " + f10);
                return g(b10.c());
            } catch (IOException e10) {
                this.f33031c.e("Settings request failed.", e10);
                return null;
            }
        }
        throw new RuntimeException("An invalid data collection token was used.");
    }

    protected v7.a d(Map map) {
        v7.a a10 = this.f33030b.a(this.f33029a, map);
        return a10.d("User-Agent", "Crashlytics Android SDK/" + d0.s()).d("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
    }

    JSONObject g(v7.c cVar) {
        int b10 = cVar.b();
        n7.g gVar = this.f33031c;
        gVar.i("Settings response code was: " + b10);
        if (h(b10)) {
            return e(cVar.a());
        }
        n7.g gVar2 = this.f33031c;
        gVar2.d("Settings request failed; (status: " + b10 + ") from " + this.f33029a);
        return null;
    }

    boolean h(int i10) {
        return i10 == 200 || i10 == 201 || i10 == 202 || i10 == 203;
    }

    c(String str, v7.b bVar, n7.g gVar) {
        if (str != null) {
            this.f33031c = gVar;
            this.f33030b = bVar;
            this.f33029a = str;
            return;
        }
        throw new IllegalArgumentException("url must not be null.");
    }
}
