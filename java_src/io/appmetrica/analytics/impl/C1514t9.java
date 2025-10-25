package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.t9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1514t9 extends MessageNano {

    /* renamed from: e  reason: collision with root package name */
    public static volatile C1514t9[] f20662e;

    /* renamed from: a  reason: collision with root package name */
    public long f20663a;

    /* renamed from: b  reason: collision with root package name */
    public int f20664b;

    /* renamed from: c  reason: collision with root package name */
    public long f20665c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f20666d;

    public C1514t9() {
        a();
    }

    public static C1514t9[] b() {
        if (f20662e == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20662e == null) {
                    f20662e = new C1514t9[0];
                }
            }
        }
        return f20662e;
    }

    public final C1514t9 a() {
        this.f20663a = 0L;
        this.f20664b = 0;
        this.f20665c = 0L;
        this.f20666d = false;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSInt32Size = CodedOutputByteBufferNano.computeSInt32Size(2, this.f20664b) + CodedOutputByteBufferNano.computeUInt64Size(1, this.f20663a) + super.computeSerializedSize();
        long j10 = this.f20665c;
        if (j10 != 0) {
            computeSInt32Size += CodedOutputByteBufferNano.computeInt64Size(3, j10);
        }
        boolean z10 = this.f20666d;
        if (z10) {
            return computeSInt32Size + CodedOutputByteBufferNano.computeBoolSize(4, z10);
        }
        return computeSInt32Size;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeUInt64(1, this.f20663a);
        codedOutputByteBufferNano.writeSInt32(2, this.f20664b);
        long j10 = this.f20665c;
        if (j10 != 0) {
            codedOutputByteBufferNano.writeInt64(3, j10);
        }
        boolean z10 = this.f20666d;
        if (z10) {
            codedOutputByteBufferNano.writeBool(4, z10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1514t9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                this.f20663a = codedInputByteBufferNano.readUInt64();
            } else if (readTag == 16) {
                this.f20664b = codedInputByteBufferNano.readSInt32();
            } else if (readTag == 24) {
                this.f20665c = codedInputByteBufferNano.readInt64();
            } else if (readTag != 32) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f20666d = codedInputByteBufferNano.readBool();
            }
        }
    }

    public static C1514t9 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1514t9().mergeFrom(codedInputByteBufferNano);
    }

    public static C1514t9 a(byte[] bArr) {
        return (C1514t9) MessageNano.mergeFrom(new C1514t9(), bArr);
    }
}
