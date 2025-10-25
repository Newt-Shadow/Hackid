package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.MessageNano;
/* renamed from: io.appmetrica.analytics.impl.jm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1278jm extends M2 {
    @Override // io.appmetrica.analytics.impl.M2, io.appmetrica.analytics.coreapi.internal.data.StateSerializer
    /* renamed from: b */
    public final C1253im defaultValue() {
        C1253im c1253im = new C1253im();
        c1253im.f19796i = new C1129dm();
        return c1253im;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.StateSerializer
    /* renamed from: a */
    public final C1253im toState(byte[] bArr) {
        return (C1253im) MessageNano.mergeFrom(new C1253im(), bArr);
    }
}
