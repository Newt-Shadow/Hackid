package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class B8 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile B8[] f17988c;

    /* renamed from: a  reason: collision with root package name */
    public C1613x8 f17989a;

    /* renamed from: b  reason: collision with root package name */
    public A8 f17990b;

    public B8() {
        a();
    }

    public static B8[] b() {
        if (f17988c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f17988c == null) {
                    f17988c = new B8[0];
                }
            }
        }
        return f17988c;
    }

    public final B8 a() {
        this.f17989a = null;
        this.f17990b = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1613x8 c1613x8 = this.f17989a;
        if (c1613x8 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1613x8);
        }
        A8 a82 = this.f17990b;
        if (a82 != null) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, a82);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1613x8 c1613x8 = this.f17989a;
        if (c1613x8 != null) {
            codedOutputByteBufferNano.writeMessage(1, c1613x8);
        }
        A8 a82 = this.f17990b;
        if (a82 != null) {
            codedOutputByteBufferNano.writeMessage(2, a82);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final B8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                if (this.f17989a == null) {
                    this.f17989a = new C1613x8();
                }
                codedInputByteBufferNano.readMessage(this.f17989a);
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                if (this.f17990b == null) {
                    this.f17990b = new A8();
                }
                codedInputByteBufferNano.readMessage(this.f17990b);
            }
        }
    }

    public static B8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new B8().mergeFrom(codedInputByteBufferNano);
    }

    public static B8 a(byte[] bArr) {
        return (B8) MessageNano.mergeFrom(new B8(), bArr);
    }
}
