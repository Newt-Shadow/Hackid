package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.s8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1488s8 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C1488s8[] f20584c;

    /* renamed from: a  reason: collision with root package name */
    public int f20585a;

    /* renamed from: b  reason: collision with root package name */
    public C1389o8 f20586b;

    public C1488s8() {
        a();
    }

    public static C1488s8[] b() {
        if (f20584c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20584c == null) {
                    f20584c = new C1488s8[0];
                }
            }
        }
        return f20584c;
    }

    public final C1488s8 a() {
        this.f20585a = 0;
        this.f20586b = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        int i10 = this.f20585a;
        if (i10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(1, i10);
        }
        C1389o8 c1389o8 = this.f20586b;
        if (c1389o8 != null) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, c1389o8);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        int i10 = this.f20585a;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeUInt32(1, i10);
        }
        C1389o8 c1389o8 = this.f20586b;
        if (c1389o8 != null) {
            codedOutputByteBufferNano.writeMessage(2, c1389o8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1488s8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                this.f20585a = codedInputByteBufferNano.readUInt32();
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                if (this.f20586b == null) {
                    this.f20586b = new C1389o8();
                }
                codedInputByteBufferNano.readMessage(this.f20586b);
            }
        }
    }

    public static C1488s8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1488s8().mergeFrom(codedInputByteBufferNano);
    }

    public static C1488s8 a(byte[] bArr) {
        return (C1488s8) MessageNano.mergeFrom(new C1488s8(), bArr);
    }
}
