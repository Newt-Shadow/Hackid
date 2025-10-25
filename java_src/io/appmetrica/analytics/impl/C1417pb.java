package io.appmetrica.analytics.impl;

import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.pb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1417pb {
    public static final M9 a(C1417pb c1417pb, V9 v92, JSONObject jSONObject) {
        int i10;
        c1417pb.getClass();
        M9 m92 = new M9();
        switch (v92.ordinal()) {
            case 0:
                i10 = 0;
                break;
            case 1:
                i10 = 1;
                break;
            case 2:
                i10 = 2;
                break;
            case 3:
                i10 = 3;
                break;
            case 4:
                i10 = 4;
                break;
            case 5:
                i10 = 5;
                break;
            case 6:
                i10 = 6;
                break;
            default:
                throw new xc.i();
        }
        m92.f18587a = i10;
        m92.f18588b = jSONObject.toString().getBytes(rd.d.f29089b);
        return m92;
    }
}
