package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionState;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class W1 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    public final D2 f19141a;

    public W1() {
        this(new D2());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final Z1 fromModel(V1 v12) {
        Z1 z12 = new Z1();
        z12.f19315a = new Y1[v12.f19104a.size()];
        int i10 = 0;
        int i11 = 0;
        for (PermissionState permissionState : v12.f19104a) {
            Y1[] y1Arr = z12.f19315a;
            Y1 y12 = new Y1();
            y12.f19273a = permissionState.name;
            y12.f19274b = permissionState.granted;
            y1Arr[i11] = y12;
            i11++;
        }
        F2 f22 = v12.f19105b;
        if (f22 != null) {
            z12.f19316b = this.f19141a.fromModel(f22);
        }
        z12.f19317c = new String[v12.f19106c.size()];
        for (String str : v12.f19106c) {
            z12.f19317c[i10] = str;
            i10++;
        }
        return z12;
    }

    public W1(D2 d22) {
        this.f19141a = d22;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final V1 toModel(Z1 z12) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            Y1[] y1Arr = z12.f19315a;
            if (i11 >= y1Arr.length) {
                break;
            }
            Y1 y12 = y1Arr[i11];
            arrayList.add(new PermissionState(y12.f19273a, y12.f19274b));
            i11++;
        }
        X1 x12 = z12.f19316b;
        F2 model = x12 != null ? this.f19141a.toModel(x12) : null;
        ArrayList arrayList2 = new ArrayList();
        while (true) {
            String[] strArr = z12.f19317c;
            if (i10 < strArr.length) {
                arrayList2.add(strArr[i10]);
                i10++;
            } else {
                return new V1(arrayList, model, arrayList2);
            }
        }
    }
}
