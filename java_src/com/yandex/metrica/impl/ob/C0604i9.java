package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
/* renamed from: com.yandex.metrica.impl.ob.i9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0604i9 extends AbstractC0579h9 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0579h9, com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        return new C0999yf();
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0579h9, com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) {
        C0999yf c0999yf = (C0999yf) MessageNano.mergeFrom(new C0999yf(), bArr);
        kotlin.jvm.internal.m.d(c0999yf, "ClidsInfoProto.ClidsInfo.parseFrom(data)");
        return c0999yf;
    }
}
