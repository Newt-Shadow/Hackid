package com.yandex.metrica.impl.ob;

import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes2.dex */
public class Z0 {

    /* loaded from: classes2.dex */
    static class a extends RuntimeException {
        public a(String str) {
            super(str);
        }
    }

    public static String a(int i10) {
        Map<String, Integer> map = C0547g2.f12440a;
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, Integer> entry : C0547g2.f12440a.entrySet()) {
            if (entry.getValue().intValue() == i10) {
                arrayList.add(entry.getKey());
            }
        }
        if (arrayList.size() == 1) {
            return (String) arrayList.get(0);
        }
        return arrayList.size() != 0 ? String.format("One of %s", arrayList) : CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE;
    }

    public static boolean a(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }
}
