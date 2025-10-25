package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
/* renamed from: com.yandex.metrica.impl.ob.g9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0554g9 extends AbstractC0579h9 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0579h9, com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        return new C0951wf();
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0579h9, com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) {
        return (C0951wf) MessageNano.mergeFrom(new C0951wf(), bArr);
    }
}
