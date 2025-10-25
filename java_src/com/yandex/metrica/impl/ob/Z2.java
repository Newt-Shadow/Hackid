package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
/* loaded from: classes2.dex */
public class Z2 extends AbstractC0579h9 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0579h9, com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        return new C0975xf();
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0579h9, com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) {
        return (C0975xf) MessageNano.mergeFrom(new C0975xf(), bArr);
    }
}
