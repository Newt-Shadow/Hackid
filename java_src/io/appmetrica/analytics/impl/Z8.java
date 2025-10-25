package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.MessageNano;
/* loaded from: classes2.dex */
public final class Z8 extends M2 {
    @Override // io.appmetrica.analytics.impl.M2
    public final MessageNano a() {
        return new F9();
    }

    public final F9 b() {
        return new F9();
    }

    @Override // io.appmetrica.analytics.impl.M2, io.appmetrica.analytics.coreapi.internal.data.StateSerializer
    public final Object defaultValue() {
        return new F9();
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.StateSerializer
    /* renamed from: a */
    public final F9 toState(byte[] bArr) {
        return (F9) MessageNano.mergeFrom(new F9(), bArr);
    }
}
