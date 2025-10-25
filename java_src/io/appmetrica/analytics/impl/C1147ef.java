package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.parsing.ParseUtils;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;
import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.ef  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1147ef implements N5 {
    @Override // io.appmetrica.analytics.impl.N5, id.l
    /* renamed from: a */
    public final C1396of invoke(ContentValues contentValues) {
        String asString = contentValues.getAsString("tracking_id");
        if (TextUtils.isEmpty(asString)) {
            AbstractC1151ej.a("Tracking id is empty", new Object[0]);
            return null;
        } else if (ParseUtils.parseLong(asString) == null) {
            AbstractC1151ej.a("Tracking id from preload info content provider is not a number", new Object[0]);
            return null;
        } else {
            try {
                String asString2 = contentValues.getAsString("additional_params");
                if (TextUtils.isEmpty(asString2)) {
                    AbstractC1151ej.a("No additional params", new Object[0]);
                    return null;
                }
                JSONObject jSONObject = new JSONObject(asString2);
                if (jSONObject.length() == 0) {
                    AbstractC1151ej.a("Additional params are empty", new Object[0]);
                    return null;
                }
                AbstractC1151ej.a("Successfully parsed preload info. Tracking id = %s, additionalParams = %s", asString, jSONObject);
                return new C1396of(asString, jSONObject, true, false, EnumC1065b8.f19427e);
            } catch (Throwable th) {
                ImportantLogger importantLogger = ImportantLogger.INSTANCE;
                importantLogger.info("AppMetrica-Attribution", String.format("Could not parse additional parameters", new Object[0]) + "\n" + StringUtils.throwableToString(th), new Object[0]);
                return null;
            }
        }
    }
}
