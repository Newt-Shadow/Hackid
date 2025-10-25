package io.appmetrica.analytics.remotepermissions.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
/* loaded from: classes2.dex */
public final class b implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final c f21346a = new c();

    public final byte[] a(a aVar) {
        return MessageNano.toByteArray(this.f21346a.fromModel(aVar));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object fromModel(Object obj) {
        return MessageNano.toByteArray(this.f21346a.fromModel((a) obj));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final a toModel(byte[] bArr) {
        return this.f21346a.toModel((f) MessageNano.mergeFrom(new f(), bArr));
    }
}
