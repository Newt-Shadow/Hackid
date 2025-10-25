package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
/* renamed from: io.appmetrica.analytics.impl.xb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1616xb implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final Yc f20932a;

    public C1616xb() {
        this(new Yc(new C1628xn()));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final byte[] fromModel(C1603wn c1603wn) {
        return MessageNano.toByteArray((MessageNano) this.f20932a.f19292a.fromModel(c1603wn));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        byte[] bArr = (byte[]) obj;
        throw new UnsupportedOperationException();
    }

    public C1616xb(Yc yc2) {
        this.f20932a = yc2;
    }

    public final C1603wn a(byte[] bArr) {
        throw new UnsupportedOperationException();
    }
}
