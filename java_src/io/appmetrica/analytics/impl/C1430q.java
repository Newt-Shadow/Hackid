package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.q  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1430q extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C1430q[] f20401c;

    /* renamed from: a  reason: collision with root package name */
    public long f20402a;

    /* renamed from: b  reason: collision with root package name */
    public int f20403b;

    public C1430q() {
        a();
    }

    public static C1430q[] b() {
        if (f20401c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20401c == null) {
                    f20401c = new C1430q[0];
                }
            }
        }
        return f20401c;
    }

    public final C1430q a() {
        this.f20402a = 0L;
        this.f20403b = 0;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        long j10 = this.f20402a;
        if (j10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j10);
        }
        int i10 = this.f20403b;
        if (i10 != 0) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i10);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        long j10 = this.f20402a;
        if (j10 != 0) {
            codedOutputByteBufferNano.writeInt64(1, j10);
        }
        int i10 = this.f20403b;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeInt32(2, i10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1430q mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                this.f20402a = codedInputByteBufferNano.readInt64();
            } else if (readTag != 16) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f20403b = codedInputByteBufferNano.readInt32();
            }
        }
    }

    public static C1430q b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1430q().mergeFrom(codedInputByteBufferNano);
    }

    public static C1430q a(byte[] bArr) {
        return (C1430q) MessageNano.mergeFrom(new C1430q(), bArr);
    }
}
