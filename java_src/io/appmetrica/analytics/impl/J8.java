package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateSerializer;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
/* loaded from: classes2.dex */
public final class J8 extends K8 implements ProtobufStateSerializer {
    public J8(ProtobufStateSerializer<MessageNano> protobufStateSerializer, AESEncrypter aESEncrypter) {
        super(protobufStateSerializer, aESEncrypter);
    }
}
