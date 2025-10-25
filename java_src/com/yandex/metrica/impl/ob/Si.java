package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.impl.ob.Tl;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Si {
    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Ui ui, Tl.a aVar) {
        JSONObject optJSONObject;
        if (!ui.O() || (optJSONObject = aVar.optJSONObject("socket")) == null) {
            return;
        }
        If.q qVar = new If.q();
        long optLong = optJSONObject.optLong("seconds_to_live");
        long optLong2 = optJSONObject.optLong("first_delay_seconds", qVar.f10365e);
        int optInt = optJSONObject.optInt("launch_delay_seconds", qVar.f10366f);
        long optLong3 = optJSONObject.optLong("open_event_interval_seconds", qVar.f10367g);
        long optLong4 = optJSONObject.optLong("min_failed_request_interval_seconds", qVar.f10368h);
        long optLong5 = optJSONObject.optLong("min_successful_request_interval_seconds", qVar.f10369i);
        long optLong6 = optJSONObject.optLong("open_retry_interval_seconds", qVar.f10370j);
        String optString = optJSONObject.optString("token");
        JSONArray optJSONArray = optJSONObject.optJSONArray("ports_https");
        JSONArray jSONArray = new JSONArray();
        if (optJSONArray == null) {
            optJSONArray = jSONArray;
        }
        JSONArray optJSONArray2 = optJSONObject.optJSONArray("ports_http");
        JSONArray jSONArray2 = new JSONArray();
        if (optJSONArray2 == null) {
            optJSONArray2 = jSONArray2;
        }
        boolean z10 = optJSONArray.length() > 0 || optJSONArray2.length() > 0;
        if (optLong <= 0 || TextUtils.isEmpty(optString) || !z10) {
            return;
        }
        List<Integer> a10 = a(optJSONArray);
        List<Integer> a11 = a(optJSONArray2);
        if (((ArrayList) a10).isEmpty() && ((ArrayList) a11).isEmpty()) {
            return;
        }
        ui.a(new C0488di(optLong, optString, a10, a11, optLong2, optInt, optLong3, optLong4, optLong5, optLong6));
    }

    private List<Integer> a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            int optInt = jSONArray.optInt(i10);
            if (optInt != 0) {
                arrayList.add(Integer.valueOf(optInt));
            }
        }
        return arrayList;
    }
}
