package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.MessageNano;
/* renamed from: io.appmetrica.analytics.impl.a2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1034a2 extends M2 {
    @Override // io.appmetrica.analytics.impl.M2
    public final MessageNano a() {
        return new Z1();
    }

    public final Z1 b() {
        return new Z1();
    }

    @Override // io.appmetrica.analytics.impl.M2, io.appmetrica.analytics.coreapi.internal.data.StateSerializer
    public final Object defaultValue() {
        return new Z1();
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.StateSerializer
    /* renamed from: a */
    public final Z1 toState(byte[] bArr) {
        return (Z1) MessageNano.mergeFrom(new Z1(), bArr);
    }
}
