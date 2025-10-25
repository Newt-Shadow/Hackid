package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class Y1 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile Y1[] f19272c;

    /* renamed from: a  reason: collision with root package name */
    public String f19273a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f19274b;

    public Y1() {
        a();
    }

    public static Y1[] b() {
        if (f19272c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19272c == null) {
                    f19272c = new Y1[0];
                }
            }
        }
        return f19272c;
    }

    public final Y1 a() {
        this.f19273a = "";
        this.f19274b = false;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        return CodedOutputByteBufferNano.computeBoolSize(2, this.f19274b) + CodedOutputByteBufferNano.computeStringSize(1, this.f19273a) + super.computeSerializedSize();
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeString(1, this.f19273a);
        codedOutputByteBufferNano.writeBool(2, this.f19274b);
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final Y1 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f19273a = codedInputByteBufferNano.readString();
            } else if (readTag != 16) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f19274b = codedInputByteBufferNano.readBool();
            }
        }
    }

    public static Y1 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Y1().mergeFrom(codedInputByteBufferNano);
    }

    public static Y1 a(byte[] bArr) {
        return (Y1) MessageNano.mergeFrom(new Y1(), bArr);
    }
}
