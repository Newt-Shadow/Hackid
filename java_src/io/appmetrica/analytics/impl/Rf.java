package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class Rf extends MessageNano {

    /* renamed from: e  reason: collision with root package name */
    public static final int f18889e = 0;

    /* renamed from: f  reason: collision with root package name */
    public static final int f18890f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f18891g = 2;

    /* renamed from: h  reason: collision with root package name */
    public static volatile Rf[] f18892h;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f18893a;

    /* renamed from: b  reason: collision with root package name */
    public long f18894b;

    /* renamed from: c  reason: collision with root package name */
    public long f18895c;

    /* renamed from: d  reason: collision with root package name */
    public int f18896d;

    public Rf() {
        a();
    }

    public static Rf[] b() {
        if (f18892h == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18892h == null) {
                    f18892h = new Rf[0];
                }
            }
        }
        return f18892h;
    }

    public final Rf a() {
        this.f18893a = WireFormatNano.EMPTY_BYTES;
        this.f18894b = 0L;
        this.f18895c = 0L;
        this.f18896d = 0;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeBytesSize = CodedOutputByteBufferNano.computeBytesSize(1, this.f18893a) + super.computeSerializedSize();
        long j10 = this.f18894b;
        if (j10 != 0) {
            computeBytesSize += CodedOutputByteBufferNano.computeUInt64Size(2, j10);
        }
        long j11 = this.f18895c;
        if (j11 != 0) {
            computeBytesSize += CodedOutputByteBufferNano.computeUInt64Size(3, j11);
        }
        int i10 = this.f18896d;
        if (i10 != 0) {
            return computeBytesSize + CodedOutputByteBufferNano.computeInt32Size(4, i10);
        }
        return computeBytesSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeBytes(1, this.f18893a);
        long j10 = this.f18894b;
        if (j10 != 0) {
            codedOutputByteBufferNano.writeUInt64(2, j10);
        }
        long j11 = this.f18895c;
        if (j11 != 0) {
            codedOutputByteBufferNano.writeUInt64(3, j11);
        }
        int i10 = this.f18896d;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeInt32(4, i10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final Rf mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f18893a = codedInputByteBufferNano.readBytes();
            } else if (readTag == 16) {
                this.f18894b = codedInputByteBufferNano.readUInt64();
            } else if (readTag == 24) {
                this.f18895c = codedInputByteBufferNano.readUInt64();
            } else if (readTag != 32) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int readInt32 = codedInputByteBufferNano.readInt32();
                if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2) {
                    this.f18896d = readInt32;
                }
            }
        }
    }

    public static Rf b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Rf().mergeFrom(codedInputByteBufferNano);
    }

    public static Rf a(byte[] bArr) {
        return (Rf) MessageNano.mergeFrom(new Rf(), bArr);
    }
}
