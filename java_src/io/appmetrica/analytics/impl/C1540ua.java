package io.appmetrica.analytics.impl;

import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.ua  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1540ua implements Z9 {

    /* renamed from: a  reason: collision with root package name */
    public final S8 f20727a = new S8();

    public final C1365n9[] a(byte[] bArr) {
        int i10 = 0;
        if (bArr != null) {
            Map<String, byte[]> model = this.f20727a.toModel(bArr);
            C1365n9[] c1365n9Arr = new C1365n9[model.size()];
            for (Object obj : model.entrySet()) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    yc.o.q();
                }
                Map.Entry entry = (Map.Entry) obj;
                C1365n9 c1365n9 = new C1365n9();
                c1365n9.f20168a = ((String) entry.getKey()).getBytes(rd.d.f29089b);
                c1365n9.f20169b = (byte[]) entry.getValue();
                c1365n9Arr[i10] = c1365n9;
                i10 = i11;
            }
            return c1365n9Arr;
        }
        return new C1365n9[0];
    }
}
