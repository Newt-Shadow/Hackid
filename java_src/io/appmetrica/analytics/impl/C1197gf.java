package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.MessageNano;
/* renamed from: io.appmetrica.analytics.impl.gf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1197gf extends M2 {
    @Override // io.appmetrica.analytics.impl.M2
    public final MessageNano a() {
        return new C1321lf();
    }

    public final C1321lf b() {
        return new C1321lf();
    }

    @Override // io.appmetrica.analytics.impl.M2, io.appmetrica.analytics.coreapi.internal.data.StateSerializer
    public final Object defaultValue() {
        return new C1321lf();
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.StateSerializer
    /* renamed from: a */
    public final C1321lf toState(byte[] bArr) {
        return (C1321lf) MessageNano.mergeFrom(new C1321lf(), bArr);
    }
}
