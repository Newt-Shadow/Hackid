package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
/* renamed from: com.yandex.metrica.impl.ob.m9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0703m9 extends AbstractC0579h9 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0579h9, com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        return new Df();
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0579h9, com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) {
        return (Df) MessageNano.mergeFrom(new Df(), bArr);
    }
}
