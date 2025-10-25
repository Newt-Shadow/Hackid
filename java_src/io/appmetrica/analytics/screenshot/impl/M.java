package io.appmetrica.analytics.screenshot.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class M extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile M[] f21382c;

    /* renamed from: a  reason: collision with root package name */
    public boolean f21383a;

    /* renamed from: b  reason: collision with root package name */
    public long f21384b;

    public M() {
        a();
    }

    public static M[] b() {
        if (f21382c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f21382c == null) {
                    f21382c = new M[0];
                }
            }
        }
        return f21382c;
    }

    public final M a() {
        this.f21383a = true;
        this.f21384b = 1L;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        boolean z10 = this.f21383a;
        if (!z10) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(1, z10);
        }
        long j10 = this.f21384b;
        if (j10 != 1) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(2, j10);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        boolean z10 = this.f21383a;
        if (!z10) {
            codedOutputByteBufferNano.writeBool(1, z10);
        }
        long j10 = this.f21384b;
        if (j10 != 1) {
            codedOutputByteBufferNano.writeInt64(2, j10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final M mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                this.f21383a = codedInputByteBufferNano.readBool();
            } else if (readTag != 16) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f21384b = codedInputByteBufferNano.readInt64();
            }
        }
    }

    public static M b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new M().mergeFrom(codedInputByteBufferNano);
    }

    public static M a(byte[] bArr) {
        return (M) MessageNano.mergeFrom(new M(), bArr);
    }
}
