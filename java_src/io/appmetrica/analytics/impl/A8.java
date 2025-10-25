package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class A8 extends MessageNano {

    /* renamed from: e  reason: collision with root package name */
    public static volatile A8[] f17941e;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f17942a;

    /* renamed from: b  reason: collision with root package name */
    public C1414p8 f17943b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f17944c;

    /* renamed from: d  reason: collision with root package name */
    public C1563v8 f17945d;

    public A8() {
        a();
    }

    public static A8[] b() {
        if (f17941e == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f17941e == null) {
                    f17941e = new A8[0];
                }
            }
        }
        return f17941e;
    }

    public final A8 a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f17942a = bArr;
        this.f17943b = null;
        this.f17944c = bArr;
        this.f17945d = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        byte[] bArr = this.f17942a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f17942a);
        }
        C1414p8 c1414p8 = this.f17943b;
        if (c1414p8 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c1414p8);
        }
        if (!Arrays.equals(this.f17944c, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(3, this.f17944c);
        }
        C1563v8 c1563v8 = this.f17945d;
        if (c1563v8 != null) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(4, c1563v8);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        byte[] bArr = this.f17942a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(1, this.f17942a);
        }
        C1414p8 c1414p8 = this.f17943b;
        if (c1414p8 != null) {
            codedOutputByteBufferNano.writeMessage(2, c1414p8);
        }
        if (!Arrays.equals(this.f17944c, bArr2)) {
            codedOutputByteBufferNano.writeBytes(3, this.f17944c);
        }
        C1563v8 c1563v8 = this.f17945d;
        if (c1563v8 != null) {
            codedOutputByteBufferNano.writeMessage(4, c1563v8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final A8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f17942a = codedInputByteBufferNano.readBytes();
            } else if (readTag == 18) {
                if (this.f17943b == null) {
                    this.f17943b = new C1414p8();
                }
                codedInputByteBufferNano.readMessage(this.f17943b);
            } else if (readTag == 26) {
                this.f17944c = codedInputByteBufferNano.readBytes();
            } else if (readTag != 34) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                if (this.f17945d == null) {
                    this.f17945d = new C1563v8();
                }
                codedInputByteBufferNano.readMessage(this.f17945d);
            }
        }
    }

    public static A8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new A8().mergeFrom(codedInputByteBufferNano);
    }

    public static A8 a(byte[] bArr) {
        return (A8) MessageNano.mergeFrom(new A8(), bArr);
    }
}
