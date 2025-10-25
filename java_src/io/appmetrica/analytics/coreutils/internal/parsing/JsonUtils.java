package io.appmetrica.analytics.coreutils.internal.parsing;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.m;
import od.c;
import od.i;
import org.json.JSONArray;
import org.json.JSONObject;
import qd.f;
import yc.b0;
/* loaded from: classes2.dex */
public final class JsonUtils {
    public static final JsonUtils INSTANCE = new JsonUtils();

    private JsonUtils() {
    }

    public static final boolean isEqualTo(JSONObject jSONObject, JSONObject jSONObject2) {
        boolean equals;
        if (m.a(f.m(f.b(jSONObject.keys())), f.m(f.b(jSONObject2.keys())))) {
            for (String str : f.b(jSONObject.keys())) {
                Object obj = jSONObject.get(str);
                Object obj2 = jSONObject2.get(str);
                if (obj instanceof JSONObject) {
                    if (obj2 instanceof JSONObject) {
                        equals = isEqualTo((JSONObject) obj, (JSONObject) obj2);
                        continue;
                    } else {
                        return false;
                    }
                } else if (obj instanceof JSONArray) {
                    if (obj2 instanceof JSONArray) {
                        equals = isEqualTo((JSONArray) obj, (JSONArray) obj2);
                        continue;
                    } else {
                        return false;
                    }
                } else {
                    equals = obj.equals(obj2);
                    continue;
                }
                if (!equals) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public static final boolean optBooleanOrDefault(JSONObject jSONObject, String str, boolean z10) {
        Boolean optBooleanOrNull = optBooleanOrNull(jSONObject, str);
        if (optBooleanOrNull != null) {
            return optBooleanOrNull.booleanValue();
        }
        return z10;
    }

    public static final Boolean optBooleanOrNull(JSONObject jSONObject, String str) {
        if (jSONObject != null && jSONObject.has(str)) {
            try {
                return Boolean.valueOf(jSONObject.getBoolean(str));
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    public static final Boolean optBooleanOrNullable(JSONObject jSONObject, String str, Boolean bool) {
        Boolean optBooleanOrNull = optBooleanOrNull(jSONObject, str);
        if (optBooleanOrNull != null) {
            return optBooleanOrNull;
        }
        return bool;
    }

    public static final float optFloatOrDefault(JSONObject jSONObject, String str, float f10) {
        Float optFloatOrNull = optFloatOrNull(jSONObject, str);
        if (optFloatOrNull != null) {
            return optFloatOrNull.floatValue();
        }
        return f10;
    }

    public static final Float optFloatOrNull(JSONObject jSONObject, String str) {
        if (jSONObject != null && jSONObject.has(str)) {
            try {
                return Float.valueOf((float) jSONObject.getDouble(str));
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    public static final byte[] optHexByteArray(JSONObject jSONObject, String str, byte[] bArr) {
        String optStringOrNull;
        byte[] bArr2;
        if (jSONObject != null && (optStringOrNull = optStringOrNull(jSONObject, str)) != null) {
            try {
                bArr2 = StringUtils.hexToBytes(optStringOrNull);
            } catch (Throwable unused) {
                bArr2 = null;
            }
            if (bArr2 != null) {
                return bArr2;
            }
            return bArr;
        }
        return bArr;
    }

    public static /* synthetic */ byte[] optHexByteArray$default(JSONObject jSONObject, String str, byte[] bArr, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bArr = null;
        }
        return optHexByteArray(jSONObject, str, bArr);
    }

    public static final Integer optIntOrDefault(JSONObject jSONObject, String str, Integer num) {
        Integer optIntOrNull = optIntOrNull(jSONObject, str);
        if (optIntOrNull != null) {
            return optIntOrNull;
        }
        return num;
    }

    public static final Integer optIntOrNull(JSONObject jSONObject, String str) {
        if (jSONObject != null && jSONObject.has(str)) {
            try {
                return Integer.valueOf(jSONObject.getInt(str));
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    public static final JSONObject optJsonObjectOrDefault(JSONObject jSONObject, String str, JSONObject jSONObject2) {
        JSONObject optJsonObjectOrNull = optJsonObjectOrNull(jSONObject, str);
        if (optJsonObjectOrNull != null) {
            return optJsonObjectOrNull;
        }
        return jSONObject2;
    }

    public static final JSONObject optJsonObjectOrNull(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(str);
        }
        return null;
    }

    public static final JSONObject optJsonObjectOrNullable(JSONObject jSONObject, String str, JSONObject jSONObject2) {
        JSONObject optJsonObjectOrNull = optJsonObjectOrNull(jSONObject, str);
        if (optJsonObjectOrNull != null) {
            return optJsonObjectOrNull;
        }
        return jSONObject2;
    }

    public static final Long optLongOrDefault(JSONObject jSONObject, String str, Long l10) {
        Long optLongOrNull = optLongOrNull(jSONObject, str);
        if (optLongOrNull != null) {
            return optLongOrNull;
        }
        return l10;
    }

    public static final Long optLongOrNull(JSONObject jSONObject, String str) {
        if (jSONObject != null && jSONObject.has(str)) {
            try {
                return Long.valueOf(jSONObject.getLong(str));
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    public static final String optStringOrNull(JSONObject jSONObject, String str) {
        if (jSONObject != null && jSONObject.has(str)) {
            try {
                return jSONObject.getString(str);
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    public static final String optStringOrNullable(JSONObject jSONObject, String str, String str2) {
        String optStringOrNull = optStringOrNull(jSONObject, str);
        if (optStringOrNull != null) {
            return optStringOrNull;
        }
        return str2;
    }

    public static final boolean isEqualTo(JSONArray jSONArray, JSONArray jSONArray2) {
        c k10;
        boolean equals;
        if (jSONArray.length() != jSONArray2.length()) {
            return false;
        }
        k10 = i.k(0, jSONArray.length());
        if (!(k10 instanceof Collection) || !((Collection) k10).isEmpty()) {
            Iterator it = k10.iterator();
            while (it.hasNext()) {
                int b10 = ((b0) it).b();
                Object obj = jSONArray.get(b10);
                Object obj2 = jSONArray2.get(b10);
                if (obj instanceof JSONObject) {
                    if (obj2 instanceof JSONObject) {
                        equals = isEqualTo((JSONObject) obj, (JSONObject) obj2);
                        continue;
                    } else {
                        return false;
                    }
                } else if (obj instanceof JSONArray) {
                    if (obj2 instanceof JSONArray) {
                        equals = isEqualTo((JSONArray) obj, (JSONArray) obj2);
                        continue;
                    } else {
                        return false;
                    }
                } else {
                    equals = obj.equals(obj2);
                    continue;
                }
                if (!equals) {
                    return false;
                }
            }
        }
        return true;
    }
}
