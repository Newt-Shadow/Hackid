package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.MessageNano;
/* renamed from: io.appmetrica.analytics.impl.w2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1582w2 extends M2 {
    @Override // io.appmetrica.analytics.impl.M2
    public final MessageNano a() {
        return new C1557v2();
    }

    public final C1557v2 b() {
        return new C1557v2();
    }

    @Override // io.appmetrica.analytics.impl.M2, io.appmetrica.analytics.coreapi.internal.data.StateSerializer
    public final Object defaultValue() {
        return new C1557v2();
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.StateSerializer
    /* renamed from: a */
    public final C1557v2 toState(byte[] bArr) {
        return (C1557v2) MessageNano.mergeFrom(new C1557v2(), bArr);
    }
}
