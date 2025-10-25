package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
class Zi {
    /* JADX INFO: Access modifiers changed from: package-private */
    public If.y[] a(JSONArray jSONArray) {
        int i10;
        if (jSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i11);
                    Integer num = null;
                    Integer a10 = Tl.a(jSONObject, "type", (Integer) null);
                    if (a10 != null) {
                        int intValue = a10.intValue();
                        if (intValue != 0) {
                            if (intValue != 1) {
                                if (intValue != 2) {
                                    if (intValue == 3) {
                                        i10 = 3;
                                    }
                                } else {
                                    i10 = 2;
                                }
                            } else {
                                i10 = 1;
                            }
                        } else {
                            i10 = 0;
                        }
                        num = i10;
                    }
                    String b10 = Tl.b(jSONObject, "value");
                    if (num != null && b10 != null) {
                        If.y yVar = new If.y();
                        yVar.f10404a = num.intValue();
                        yVar.f10405b = b10;
                        arrayList.add(yVar);
                    }
                } catch (Throwable unused) {
                }
            }
            return (If.y[]) arrayList.toArray(new If.y[0]);
        }
        return new If.y[0];
    }
}
