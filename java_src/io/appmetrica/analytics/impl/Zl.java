package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class Zl extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile Zl[] f19354c;

    /* renamed from: a  reason: collision with root package name */
    public int f19355a;

    /* renamed from: b  reason: collision with root package name */
    public int f19356b;

    public Zl() {
        a();
    }

    public static Zl[] b() {
        if (f19354c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19354c == null) {
                    f19354c = new Zl[0];
                }
            }
        }
        return f19354c;
    }

    public final Zl a() {
        this.f19355a = 86400;
        this.f19356b = 86400;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        int i10 = this.f19355a;
        if (i10 != 86400) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i10);
        }
        int i11 = this.f19356b;
        if (i11 != 86400) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i11);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        int i10 = this.f19355a;
        if (i10 != 86400) {
            codedOutputByteBufferNano.writeInt32(1, i10);
        }
        int i11 = this.f19356b;
        if (i11 != 86400) {
            codedOutputByteBufferNano.writeInt32(2, i11);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final Zl mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                this.f19355a = codedInputByteBufferNano.readInt32();
            } else if (readTag != 16) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f19356b = codedInputByteBufferNano.readInt32();
            }
        }
    }

    public static Zl b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Zl().mergeFrom(codedInputByteBufferNano);
    }

    public static Zl a(byte[] bArr) {
        return (Zl) MessageNano.mergeFrom(new Zl(), bArr);
    }
}
