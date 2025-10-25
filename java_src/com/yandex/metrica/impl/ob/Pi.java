package com.yandex.metrica.impl.ob;

import android.util.Pair;
import com.arthenica.ffmpegkit.Chapter;
import com.yandex.metrica.impl.ob.C0438bi;
import com.yandex.metrica.impl.ob.Tl;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Pi {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, C0438bi.a> f11114a = Collections.unmodifiableMap(new a());

    /* loaded from: classes2.dex */
    class a extends HashMap<String, C0438bi.a> {
        a() {
            put("wifi", C0438bi.a.WIFI);
            put("cell", C0438bi.a.CELL);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Ui ui, Tl.a aVar) {
        JSONArray optJSONArray;
        JSONObject optJSONObject = aVar.optJSONObject("requests");
        if (optJSONObject == null || !optJSONObject.has("list") || (optJSONArray = optJSONObject.optJSONArray("list")) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(optJSONArray.length());
        for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
            try {
                arrayList.add(a(optJSONArray.getJSONObject(i10)));
            } catch (Throwable unused) {
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        ui.g(arrayList);
    }

    private C0438bi a(JSONObject jSONObject) {
        int i10;
        JSONObject jSONObject2 = jSONObject.getJSONObject("headers");
        ArrayList arrayList = new ArrayList(jSONObject2.length());
        Iterator<String> keys = jSONObject2.keys();
        while (true) {
            i10 = 0;
            if (!keys.hasNext()) {
                break;
            }
            String next = keys.next();
            JSONArray jSONArray = jSONObject2.getJSONArray(next);
            while (i10 < jSONArray.length()) {
                arrayList.add(new Pair(next, jSONArray.getString(i10)));
                i10++;
            }
        }
        String b10 = Tl.b(jSONObject, Chapter.KEY_ID);
        String b11 = Tl.b(jSONObject, "url");
        String b12 = Tl.b(jSONObject, Constants.METHOD);
        Long valueOf = Long.valueOf(jSONObject.getLong("delay_seconds"));
        ArrayList arrayList2 = new ArrayList();
        if (jSONObject.has("accept_network_types")) {
            JSONArray jSONArray2 = jSONObject.getJSONArray("accept_network_types");
            while (i10 < jSONArray2.length()) {
                arrayList2.add(f11114a.get(jSONArray2.getString(i10)));
                i10++;
            }
        }
        return new C0438bi(b10, b11, b12, arrayList, valueOf, arrayList2);
    }
}
