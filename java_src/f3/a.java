package f3;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import y4.q0;
/* loaded from: classes.dex */
abstract class a {
    public static byte[] a(byte[] bArr) {
        if (q0.f32946a >= 27) {
            return bArr;
        }
        return q0.l0(c(q0.D(bArr)));
    }

    public static byte[] b(byte[] bArr) {
        if (q0.f32946a >= 27) {
            return bArr;
        }
        try {
            JSONObject jSONObject = new JSONObject(q0.D(bArr));
            StringBuilder sb2 = new StringBuilder("{\"keys\":[");
            JSONArray jSONArray = jSONObject.getJSONArray("keys");
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                if (i10 != 0) {
                    sb2.append(StringUtils.COMMA);
                }
                JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
                sb2.append("{\"k\":\"");
                sb2.append(d(jSONObject2.getString("k")));
                sb2.append("\",\"kid\":\"");
                sb2.append(d(jSONObject2.getString("kid")));
                sb2.append("\",\"kty\":\"");
                sb2.append(jSONObject2.getString("kty"));
                sb2.append("\"}");
            }
            sb2.append("]}");
            return q0.l0(sb2.toString());
        } catch (JSONException e10) {
            y4.r.d("ClearKeyUtil", "Failed to adjust response data: " + q0.D(bArr), e10);
            return bArr;
        }
    }

    private static String c(String str) {
        return str.replace('+', '-').replace('/', '_');
    }

    private static String d(String str) {
        return str.replace('-', '+').replace('_', '/');
    }
}
