package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
@Deprecated
/* renamed from: com.yandex.metrica.impl.ob.n9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0728n9 extends AbstractC0579h9 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0579h9, com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        return new Ef();
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0579h9, com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) {
        return (Ef) MessageNano.mergeFrom(new Ef(), bArr);
    }
}
