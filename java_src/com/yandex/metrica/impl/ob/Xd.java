package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.text.TextUtils;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class Xd implements W<C0509ee> {
    @Override // com.yandex.metrica.impl.ob.W, id.l
    public Object invoke(Object obj) {
        ContentValues contentValues = (ContentValues) obj;
        String asString = contentValues.getAsString("tracking_id");
        C0509ee c0509ee = null;
        if (TextUtils.isEmpty(asString)) {
            C0572h2.b("Tracking id is empty", new Object[0]);
        } else {
            try {
                String asString2 = contentValues.getAsString("additional_params");
                if (TextUtils.isEmpty(asString2)) {
                    C0572h2.b("No additional params", new Object[0]);
                } else {
                    JSONObject jSONObject = new JSONObject(asString2);
                    if (jSONObject.length() == 0) {
                        C0572h2.b("Additional params are empty", new Object[0]);
                    } else {
                        C0572h2.a("Successfully parsed preload info. Tracking id = %s, additionalParams = %s", asString, jSONObject);
                        c0509ee = new C0509ee(asString, jSONObject, true, false, EnumC0888u0.RETAIL);
                    }
                }
            } catch (Throwable th) {
                C0572h2.a(th, "Could not parse additional parameters", new Object[0]);
            }
        }
        return c0509ee;
    }
}
