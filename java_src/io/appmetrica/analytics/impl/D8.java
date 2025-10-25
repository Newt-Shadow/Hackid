package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class D8 extends MessageNano {

    /* renamed from: b  reason: collision with root package name */
    public static volatile D8[] f18081b;

    /* renamed from: a  reason: collision with root package name */
    public A8 f18082a;

    public D8() {
        a();
    }

    public static D8[] b() {
        if (f18081b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18081b == null) {
                    f18081b = new D8[0];
                }
            }
        }
        return f18081b;
    }

    public final D8 a() {
        this.f18082a = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        A8 a82 = this.f18082a;
        if (a82 != null) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(1, a82);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        A8 a82 = this.f18082a;
        if (a82 != null) {
            codedOutputByteBufferNano.writeMessage(1, a82);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final D8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
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
                if (this.f18082a == null) {
                    this.f18082a = new A8();
                }
                codedInputByteBufferNano.readMessage(this.f18082a);
            }
        }
    }

    public static D8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new D8().mergeFrom(codedInputByteBufferNano);
    }

    public static D8 a(byte[] bArr) {
        return (D8) MessageNano.mergeFrom(new D8(), bArr);
    }
}
