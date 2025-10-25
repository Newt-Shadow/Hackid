package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.impl.ob.If;
/* renamed from: com.yandex.metrica.impl.ob.p9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0778p9 extends AbstractC0579h9 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0579h9, com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        If r02 = new If();
        r02.f10240k = new If.i();
        return r02;
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0579h9, com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) {
        return (If) MessageNano.mergeFrom(new If(), bArr);
    }
}
