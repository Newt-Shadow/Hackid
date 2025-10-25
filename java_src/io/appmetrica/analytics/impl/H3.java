package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class H3 implements N5 {
    @Override // io.appmetrica.analytics.impl.N5, id.l
    /* renamed from: a */
    public final Map<String, String> invoke(ContentValues contentValues) {
        String asString = contentValues.getAsString("clids");
        HashMap c10 = AbstractC1491sb.c(asString);
        if (!AbstractC1477rm.a(c10)) {
            AbstractC1151ej.a("Passed clids (" + asString + ") are invalid.", new Object[0]);
            return null;
        }
        return c10;
    }
}
