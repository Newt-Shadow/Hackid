package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.ia  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1242ia {
    public static boolean a(JSONObject jSONObject, String str, boolean z10) {
        Boolean bool;
        if (jSONObject.has(str)) {
            bool = Boolean.valueOf(jSONObject.getJSONObject(str).getBoolean("enabled"));
        } else {
            bool = null;
        }
        return ((Boolean) WrapUtils.getOrDefault(bool, Boolean.valueOf(z10))).booleanValue();
    }
}
