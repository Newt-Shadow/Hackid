package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.impl.ob.Cf;
@Deprecated
/* renamed from: com.yandex.metrica.impl.ob.he  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0584he extends AbstractC0579h9 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0579h9, com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        return new Cf.a();
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0579h9, com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) {
        return (Cf.a) MessageNano.mergeFrom(new Cf.a(), bArr);
    }
}
