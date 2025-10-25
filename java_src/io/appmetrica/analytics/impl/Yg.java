package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
/* loaded from: classes2.dex */
public final class Yg extends Pg {

    /* renamed from: b  reason: collision with root package name */
    public final V8 f19296b;

    public Yg(C1386o5 c1386o5) {
        this(c1386o5, c1386o5.i());
    }

    @Override // io.appmetrica.analytics.impl.Pg
    public final boolean a(C1138e6 c1138e6) {
        EnumC1416pa enumC1416pa;
        EnumC1416pa enumC1416pa2;
        if (!TextUtils.isEmpty(c1138e6.getName())) {
            V8 v82 = this.f19296b;
            String name = c1138e6.getName();
            if (v82.f19120c == null) {
                v82.a();
            }
            int hashCode = name.hashCode();
            if (v82.f19120c.f19229b.contains(Integer.valueOf(hashCode))) {
                enumC1416pa2 = EnumC1416pa.NON_FIRST_OCCURENCE;
            } else {
                X8 x82 = v82.f19120c;
                if (x82.f19228a) {
                    enumC1416pa = EnumC1416pa.FIRST_OCCURRENCE;
                } else {
                    enumC1416pa = EnumC1416pa.UNKNOWN;
                }
                if (x82.f19231d < 1000) {
                    x82.f19229b.add(Integer.valueOf(hashCode));
                    x82.f19231d++;
                } else {
                    x82.f19228a = false;
                }
                C1041a9 c1041a9 = v82.f19119b;
                X8 x83 = v82.f19120c;
                IBinaryDataHelper iBinaryDataHelper = c1041a9.f19379c;
                Z8 z82 = c1041a9.f19378b;
                c1041a9.f19377a.getClass();
                F9 a10 = Y8.a(x83);
                z82.getClass();
                iBinaryDataHelper.insert("event_hashes", MessageNano.toByteArray(a10));
                enumC1416pa2 = enumC1416pa;
            }
            c1138e6.f19581k = enumC1416pa2;
        }
        return false;
    }

    public Yg(C1386o5 c1386o5, V8 v82) {
        super(c1386o5);
        this.f19296b = v82;
    }
}
