package io.appmetrica.analytics;

import io.appmetrica.analytics.impl.C1121de;
import io.appmetrica.analytics.impl.C1221he;
import io.appmetrica.analytics.impl.C1442qb;
import io.appmetrica.analytics.impl.Mc;
import io.appmetrica.analytics.impl.V9;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class ExternalAttributions {
    public static ExternalAttribution adjust(Object obj) {
        if (obj == null) {
            return new C1121de(V9.ADJUST);
        }
        return new C1221he(V9.ADJUST, obj);
    }

    public static ExternalAttribution airbridge(Map<String, String> map) {
        if (map == null) {
            return new C1121de(V9.AIRBRIDGE);
        }
        return new Mc(V9.AIRBRIDGE, map);
    }

    public static ExternalAttribution appsflyer(Map<String, Object> map) {
        if (map == null) {
            return new C1121de(V9.APPSFLYER);
        }
        return new Mc(V9.APPSFLYER, map);
    }

    public static ExternalAttribution kochava(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new C1121de(V9.KOCHAVA);
        }
        return new C1442qb(V9.KOCHAVA, jSONObject);
    }

    public static ExternalAttribution singular(Map<String, Object> map) {
        if (map == null) {
            return new C1121de(V9.SINGULAR);
        }
        return new Mc(V9.SINGULAR, map);
    }

    public static ExternalAttribution tenjin(Map<String, String> map) {
        if (map == null) {
            return new C1121de(V9.TENJIN);
        }
        return new Mc(V9.TENJIN, map);
    }
}
