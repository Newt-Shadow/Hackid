package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.q8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1439q8 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C1439q8[] f20424c;

    /* renamed from: a  reason: collision with root package name */
    public long f20425a;

    /* renamed from: b  reason: collision with root package name */
    public int f20426b;

    public C1439q8() {
        a();
    }

    public static C1439q8[] b() {
        if (f20424c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20424c == null) {
                    f20424c = new C1439q8[0];
                }
            }
        }
        return f20424c;
    }

    public final C1439q8 a() {
        this.f20425a = 0L;
        this.f20426b = 0;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        long j10 = this.f20425a;
        if (j10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j10);
        }
        int i10 = this.f20426b;
        if (i10 != 0) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i10);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        long j10 = this.f20425a;
        if (j10 != 0) {
            codedOutputByteBufferNano.writeInt64(1, j10);
        }
        int i10 = this.f20426b;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeInt32(2, i10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1439q8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                this.f20425a = codedInputByteBufferNano.readInt64();
            } else if (readTag != 16) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f20426b = codedInputByteBufferNano.readInt32();
            }
        }
    }

    public static C1439q8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1439q8().mergeFrom(codedInputByteBufferNano);
    }

    public static C1439q8 a(byte[] bArr) {
        return (C1439q8) MessageNano.mergeFrom(new C1439q8(), bArr);
    }
}
