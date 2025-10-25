package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.MessageNano;
/* loaded from: classes2.dex */
public final class Q3 extends M2 {
    @Override // io.appmetrica.analytics.impl.M2
    public final MessageNano a() {
        return new P3();
    }

    public final P3 b() {
        return new P3();
    }

    @Override // io.appmetrica.analytics.impl.M2, io.appmetrica.analytics.coreapi.internal.data.StateSerializer
    public final Object defaultValue() {
        return new P3();
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.StateSerializer
    /* renamed from: a */
    public final P3 toState(byte[] bArr) {
        return (P3) MessageNano.mergeFrom(new P3(), bArr);
    }
}
