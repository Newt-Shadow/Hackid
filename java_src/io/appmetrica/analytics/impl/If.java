package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateSerializer;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
/* loaded from: classes2.dex */
public final class If implements ProtobufStateStorage {

    /* renamed from: a  reason: collision with root package name */
    public final String f18387a;

    /* renamed from: b  reason: collision with root package name */
    public final IBinaryDataHelper f18388b;

    /* renamed from: c  reason: collision with root package name */
    public final ProtobufStateSerializer f18389c;

    /* renamed from: d  reason: collision with root package name */
    public final ProtobufConverter f18390d;

    public If(String str, IBinaryDataHelper iBinaryDataHelper, ProtobufStateSerializer<MessageNano> protobufStateSerializer, ProtobufConverter<Object, MessageNano> protobufConverter) {
        this.f18387a = str;
        this.f18388b = iBinaryDataHelper;
        this.f18389c = protobufStateSerializer;
        this.f18390d = protobufConverter;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage
    public final void delete() {
        this.f18388b.remove(this.f18387a);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage
    public final Object read() {
        try {
            byte[] bArr = this.f18388b.get(this.f18387a);
            if (bArr != null && bArr.length != 0) {
                return this.f18390d.toModel((MessageNano) this.f18389c.toState(bArr));
            }
            return this.f18390d.toModel((MessageNano) this.f18389c.defaultValue());
        } catch (Throwable unused) {
            return this.f18390d.toModel((MessageNano) this.f18389c.defaultValue());
        }
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage
    public final void save(Object obj) {
        this.f18388b.insert(this.f18387a, this.f18389c.toByteArray((MessageNano) this.f18390d.fromModel(obj)));
    }
}
