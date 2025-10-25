package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.n8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1364n8 extends MessageNano {

    /* renamed from: b  reason: collision with root package name */
    public static volatile C1364n8[] f20165b;

    /* renamed from: a  reason: collision with root package name */
    public C1389o8 f20166a;

    public C1364n8() {
        a();
    }

    public static C1364n8[] b() {
        if (f20165b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20165b == null) {
                    f20165b = new C1364n8[0];
                }
            }
        }
        return f20165b;
    }

    public final C1364n8 a() {
        this.f20166a = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1389o8 c1389o8 = this.f20166a;
        if (c1389o8 != null) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(1, c1389o8);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1389o8 c1389o8 = this.f20166a;
        if (c1389o8 != null) {
            codedOutputByteBufferNano.writeMessage(1, c1389o8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1364n8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
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
                if (this.f20166a == null) {
                    this.f20166a = new C1389o8();
                }
                codedInputByteBufferNano.readMessage(this.f20166a);
            }
        }
    }

    public static C1364n8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1364n8().mergeFrom(codedInputByteBufferNano);
    }

    public static C1364n8 a(byte[] bArr) {
        return (C1364n8) MessageNano.mergeFrom(new C1364n8(), bArr);
    }
}
