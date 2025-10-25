package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Wi extends Pg {
    public Wi(C1386o5 c1386o5) {
        super(c1386o5);
        c1386o5.b().a();
    }

    @Override // io.appmetrica.analytics.impl.Pg
    public final boolean a(C1138e6 c1138e6) {
        Object remove;
        for (Map.Entry entry : c1138e6.f19586p.entrySet()) {
            C1600wk c1600wk = this.f18787a.f20273u;
            String str = (String) entry.getKey();
            byte[] bArr = (byte[]) entry.getValue();
            if (bArr != null) {
                c1600wk.getClass();
                if (bArr.length != 0) {
                    remove = c1600wk.f20879b.put(str, bArr);
                    byte[] bArr2 = (byte[]) remove;
                    Ak ak = c1600wk.f20878a;
                    Map<String, byte[]> map = c1600wk.f20879b;
                    IBinaryDataHelper iBinaryDataHelper = ak.f17963d;
                    String str2 = ak.f17960a;
                    C1675zk c1675zk = ak.f17962c;
                    C1625xk fromModel = ak.f17961b.fromModel(map);
                    c1675zk.getClass();
                    iBinaryDataHelper.insert(str2, MessageNano.toByteArray(fromModel));
                }
            }
            remove = c1600wk.f20879b.remove(str);
            byte[] bArr22 = (byte[]) remove;
            Ak ak2 = c1600wk.f20878a;
            Map<String, byte[]> map2 = c1600wk.f20879b;
            IBinaryDataHelper iBinaryDataHelper2 = ak2.f17963d;
            String str22 = ak2.f17960a;
            C1675zk c1675zk2 = ak2.f17962c;
            C1625xk fromModel2 = ak2.f17961b.fromModel(map2);
            c1675zk2.getClass();
            iBinaryDataHelper2.insert(str22, MessageNano.toByteArray(fromModel2));
        }
        return true;
    }
}
