package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.core.api.ProtobufConverter;
/* loaded from: classes2.dex */
public class O6<T> {

    /* renamed from: a  reason: collision with root package name */
    private final ProtobufConverter f10928a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public O6(ProtobufConverter protobufConverter) {
        this.f10928a = protobufConverter;
    }

    public byte[] a(T t10) {
        return MessageNano.toByteArray((MessageNano) this.f10928a.fromModel(t10));
    }
}
