package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class V6 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private final T6 f11653a;

    public V6() {
        this(new T6());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0659kf fromModel(E6 e62) {
        int intValue;
        C0659kf c0659kf = new C0659kf();
        Integer num = e62.f9978e;
        if (num == null) {
            intValue = -1;
        } else {
            intValue = num.intValue();
        }
        c0659kf.f12748e = intValue;
        c0659kf.f12747d = e62.f9977d;
        c0659kf.f12745b = e62.f9975b;
        c0659kf.f12744a = e62.f9974a;
        c0659kf.f12746c = e62.f9976c;
        T6 t62 = this.f11653a;
        List<StackTraceElement> list = e62.f9979f;
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : list) {
            arrayList.add(new D6(stackTraceElement));
        }
        c0659kf.f12749f = t62.fromModel(arrayList);
        return c0659kf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C0659kf c0659kf = (C0659kf) obj;
        throw new UnsupportedOperationException();
    }

    V6(T6 t62) {
        this.f11653a = t62;
    }
}
