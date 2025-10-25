package io.appmetrica.analytics.remotepermissions.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class d implements JsonParser {

    /* renamed from: a  reason: collision with root package name */
    public final String f21347a = "permissions";

    /* renamed from: b  reason: collision with root package name */
    public final String f21348b = Constants.NAME;

    /* renamed from: c  reason: collision with root package name */
    public final String f21349c = "list";

    /* renamed from: d  reason: collision with root package name */
    public final String f21350d = "enabled";

    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    /* renamed from: a */
    public final a parse(JSONObject jSONObject) {
        JSONArray optJSONArray;
        HashSet hashSet = new HashSet();
        JSONObject optJSONObject = jSONObject.optJSONObject(this.f21347a);
        if (optJSONObject != null && (optJSONArray = optJSONObject.optJSONArray(this.f21349c)) != null) {
            int length = optJSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject optJSONObject2 = optJSONArray.optJSONObject(i10);
                if (optJSONObject2 != null && optJSONObject2.optBoolean(this.f21350d)) {
                    String optString = optJSONObject2.optString(this.f21348b);
                    if (!TextUtils.isEmpty(optString)) {
                        hashSet.add(optString);
                    }
                }
            }
        }
        return new a(hashSet);
    }

    public final a b(JSONObject jSONObject) {
        return (a) JsonParser.DefaultImpls.parseOrNull(this, jSONObject);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    public final Object parseOrNull(JSONObject jSONObject) {
        return (a) JsonParser.DefaultImpls.parseOrNull(this, jSONObject);
    }
}
