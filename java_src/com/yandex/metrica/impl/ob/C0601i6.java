package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
/* renamed from: com.yandex.metrica.impl.ob.i6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0601i6 extends AbstractC0579h9 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0579h9, com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        return new Gf();
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0579h9, com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) {
        Gf gf2 = (Gf) MessageNano.mergeFrom(new Gf(), bArr);
        kotlin.jvm.internal.m.d(gf2, "SessionExtrasProtobuf.Se…ionExtras.parseFrom(data)");
        return gf2;
    }
}
