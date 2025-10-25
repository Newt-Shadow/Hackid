package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C1023zf;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class D9 implements Converter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public byte[] fromModel(Map<String, byte[]> map) {
        C1023zf c1023zf = new C1023zf();
        int size = map.size();
        C1023zf.a[] aVarArr = new C1023zf.a[size];
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            aVarArr[i11] = new C1023zf.a();
        }
        c1023zf.f14072a = aVarArr;
        for (Object obj : map.entrySet()) {
            int i12 = i10 + 1;
            if (i10 < 0) {
                yc.o.q();
            }
            Map.Entry entry = (Map.Entry) obj;
            c1023zf.f14072a[i10].f14074a = (String) entry.getKey();
            c1023zf.f14072a[i10].f14075b = (byte[]) entry.getValue();
            i10 = i12;
        }
        byte[] byteArray = MessageNano.toByteArray(c1023zf);
        kotlin.jvm.internal.m.d(byteArray, "MessageNano.toByteArray(proto)");
        return byteArray;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Map<String, byte[]> toModel(byte[] bArr) {
        int b10;
        int b11;
        C1023zf.a[] aVarArr = ((C1023zf) MessageNano.mergeFrom(new C1023zf(), bArr)).f14072a;
        kotlin.jvm.internal.m.d(aVarArr, "EventExtrasProto.EventEx…s.parseFrom(input).extras");
        b10 = yc.g0.b(aVarArr.length);
        b11 = od.i.b(b10, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(b11);
        for (C1023zf.a aVar : aVarArr) {
            xc.k a10 = xc.q.a(aVar.f14074a, aVar.f14075b);
            linkedHashMap.put(a10.c(), a10.d());
        }
        return linkedHashMap;
    }
}
