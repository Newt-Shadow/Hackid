package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class A7 extends MessageNano {

    /* renamed from: d  reason: collision with root package name */
    public static volatile A7[] f17937d;

    /* renamed from: a  reason: collision with root package name */
    public long f17938a;

    /* renamed from: b  reason: collision with root package name */
    public long f17939b;

    /* renamed from: c  reason: collision with root package name */
    public int f17940c;

    public A7() {
        a();
    }

    public static A7[] b() {
        if (f17937d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f17937d == null) {
                    f17937d = new A7[0];
                }
            }
        }
        return f17937d;
    }

    public final A7 a() {
        this.f17938a = -1L;
        this.f17939b = -1L;
        this.f17940c = -1;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        long j10 = this.f17938a;
        if (j10 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j10);
        }
        long j11 = this.f17939b;
        if (j11 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(2, j11);
        }
        int i10 = this.f17940c;
        if (i10 != -1) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, i10);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        long j10 = this.f17938a;
        if (j10 != -1) {
            codedOutputByteBufferNano.writeInt64(1, j10);
        }
        long j11 = this.f17939b;
        if (j11 != -1) {
            codedOutputByteBufferNano.writeInt64(2, j11);
        }
        int i10 = this.f17940c;
        if (i10 != -1) {
            codedOutputByteBufferNano.writeInt32(3, i10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final A7 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                this.f17938a = codedInputByteBufferNano.readInt64();
            } else if (readTag == 16) {
                this.f17939b = codedInputByteBufferNano.readInt64();
            } else if (readTag != 24) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int readInt32 = codedInputByteBufferNano.readInt32();
                if (readInt32 == -1 || readInt32 == 0 || readInt32 == 1) {
                    this.f17940c = readInt32;
                }
            }
        }
    }

    public static A7 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new A7().mergeFrom(codedInputByteBufferNano);
    }

    public static A7 a(byte[] bArr) {
        return (A7) MessageNano.mergeFrom(new A7(), bArr);
    }
}
