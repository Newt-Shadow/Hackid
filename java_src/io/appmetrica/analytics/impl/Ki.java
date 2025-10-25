package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class Ki extends MessageNano {

    /* renamed from: f  reason: collision with root package name */
    public static final int f18492f = 0;

    /* renamed from: g  reason: collision with root package name */
    public static final int f18493g = 1;

    /* renamed from: h  reason: collision with root package name */
    public static final int f18494h = 2;

    /* renamed from: i  reason: collision with root package name */
    public static volatile Ki[] f18495i;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f18496a;

    /* renamed from: b  reason: collision with root package name */
    public long f18497b;

    /* renamed from: c  reason: collision with root package name */
    public int f18498c;

    /* renamed from: d  reason: collision with root package name */
    public byte[] f18499d;

    /* renamed from: e  reason: collision with root package name */
    public long f18500e;

    public Ki() {
        a();
    }

    public static Ki[] b() {
        if (f18495i == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18495i == null) {
                    f18495i = new Ki[0];
                }
            }
        }
        return f18495i;
    }

    public final Ki a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f18496a = bArr;
        this.f18497b = 0L;
        this.f18498c = 0;
        this.f18499d = bArr;
        this.f18500e = 0L;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        byte[] bArr = this.f18496a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f18496a);
        }
        long j10 = this.f18497b;
        if (j10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(2, j10);
        }
        int i10 = this.f18498c;
        if (i10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i10);
        }
        if (!Arrays.equals(this.f18499d, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(4, this.f18499d);
        }
        long j11 = this.f18500e;
        if (j11 != 0) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeUInt64Size(5, j11);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        byte[] bArr = this.f18496a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(1, this.f18496a);
        }
        long j10 = this.f18497b;
        if (j10 != 0) {
            codedOutputByteBufferNano.writeUInt64(2, j10);
        }
        int i10 = this.f18498c;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeInt32(3, i10);
        }
        if (!Arrays.equals(this.f18499d, bArr2)) {
            codedOutputByteBufferNano.writeBytes(4, this.f18499d);
        }
        long j11 = this.f18500e;
        if (j11 != 0) {
            codedOutputByteBufferNano.writeUInt64(5, j11);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static Ki b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Ki().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final Ki mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f18496a = codedInputByteBufferNano.readBytes();
            } else if (readTag == 16) {
                this.f18497b = codedInputByteBufferNano.readUInt64();
            } else if (readTag == 24) {
                int readInt32 = codedInputByteBufferNano.readInt32();
                if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2) {
                    this.f18498c = readInt32;
                }
            } else if (readTag == 34) {
                this.f18499d = codedInputByteBufferNano.readBytes();
            } else if (readTag != 40) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f18500e = codedInputByteBufferNano.readUInt64();
            }
        }
    }

    public static Ki a(byte[] bArr) {
        return (Ki) MessageNano.mergeFrom(new Ki(), bArr);
    }
}
