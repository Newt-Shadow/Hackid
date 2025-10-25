package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.MessageNano;
/* renamed from: io.appmetrica.analytics.impl.zk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1675zk extends M2 {
    @Override // io.appmetrica.analytics.impl.M2
    public final MessageNano a() {
        return new C1625xk();
    }

    public final C1625xk b() {
        return new C1625xk();
    }

    @Override // io.appmetrica.analytics.impl.M2, io.appmetrica.analytics.coreapi.internal.data.StateSerializer
    public final Object defaultValue() {
        return new C1625xk();
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.StateSerializer
    /* renamed from: a */
    public final C1625xk toState(byte[] bArr) {
        return (C1625xk) MessageNano.mergeFrom(new C1625xk(), bArr);
    }
}
