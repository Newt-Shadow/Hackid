package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;
/* renamed from: io.appmetrica.analytics.impl.y8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1638y8 extends MessageNano {

    /* renamed from: b  reason: collision with root package name */
    public static volatile C1638y8[] f20978b;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f20979a;

    public C1638y8() {
        a();
    }

    public static C1638y8[] b() {
        if (f20978b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20978b == null) {
                    f20978b = new C1638y8[0];
                }
            }
        }
        return f20978b;
    }

    public final C1638y8 a() {
        this.f20979a = WireFormatNano.EMPTY_BYTES;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!Arrays.equals(this.f20979a, WireFormatNano.EMPTY_BYTES)) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(1, this.f20979a);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!Arrays.equals(this.f20979a, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(1, this.f20979a);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1638y8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag != 10) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f20979a = codedInputByteBufferNano.readBytes();
            }
        }
    }

    public static C1638y8 a(byte[] bArr) {
        return (C1638y8) MessageNano.mergeFrom(new C1638y8(), bArr);
    }

    public static C1638y8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1638y8().mergeFrom(codedInputByteBufferNano);
    }
}
