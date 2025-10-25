package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class Hi extends MessageNano {

    /* renamed from: e  reason: collision with root package name */
    public static volatile Hi[] f18311e;

    /* renamed from: a  reason: collision with root package name */
    public long f18312a;

    /* renamed from: b  reason: collision with root package name */
    public Ii f18313b;

    /* renamed from: c  reason: collision with root package name */
    public int f18314c;

    /* renamed from: d  reason: collision with root package name */
    public byte[] f18315d;

    public Hi() {
        a();
    }

    public static Hi[] b() {
        if (f18311e == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18311e == null) {
                    f18311e = new Hi[0];
                }
            }
        }
        return f18311e;
    }

    public final Hi a() {
        this.f18312a = 0L;
        this.f18313b = null;
        this.f18314c = 0;
        this.f18315d = WireFormatNano.EMPTY_BYTES;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        long j10 = this.f18312a;
        if (j10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j10);
        }
        Ii ii = this.f18313b;
        if (ii != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, ii);
        }
        int i10 = this.f18314c;
        if (i10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(3, i10);
        }
        if (!Arrays.equals(this.f18315d, WireFormatNano.EMPTY_BYTES)) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(4, this.f18315d);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        long j10 = this.f18312a;
        if (j10 != 0) {
            codedOutputByteBufferNano.writeInt64(1, j10);
        }
        Ii ii = this.f18313b;
        if (ii != null) {
            codedOutputByteBufferNano.writeMessage(2, ii);
        }
        int i10 = this.f18314c;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeUInt32(3, i10);
        }
        if (!Arrays.equals(this.f18315d, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(4, this.f18315d);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final Hi mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                this.f18312a = codedInputByteBufferNano.readInt64();
            } else if (readTag == 18) {
                if (this.f18313b == null) {
                    this.f18313b = new Ii();
                }
                codedInputByteBufferNano.readMessage(this.f18313b);
            } else if (readTag == 24) {
                this.f18314c = codedInputByteBufferNano.readUInt32();
            } else if (readTag != 34) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f18315d = codedInputByteBufferNano.readBytes();
            }
        }
    }

    public static Hi b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Hi().mergeFrom(codedInputByteBufferNano);
    }

    public static Hi a(byte[] bArr) {
        return (Hi) MessageNano.mergeFrom(new Hi(), bArr);
    }
}
