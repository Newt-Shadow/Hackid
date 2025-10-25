package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.t3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0867t3 implements W<Map<String, ? extends String>> {
    @Override // com.yandex.metrica.impl.ob.W, id.l
    public Object invoke(Object obj) {
        String asString = ((ContentValues) obj).getAsString("clids");
        HashMap<String, String> d10 = Tl.d(asString);
        if (!Tl.d(d10)) {
            C0572h2.b("Passed clids (" + asString + ") are invalid.", new Object[0]);
            return null;
        }
        return d10;
    }
}
