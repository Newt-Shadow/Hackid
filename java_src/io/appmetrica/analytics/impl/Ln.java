package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class Ln extends MessageNano {

    /* renamed from: e  reason: collision with root package name */
    public static final int f18558e = 0;

    /* renamed from: f  reason: collision with root package name */
    public static final int f18559f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f18560g = 2;

    /* renamed from: h  reason: collision with root package name */
    public static final int f18561h = 3;

    /* renamed from: i  reason: collision with root package name */
    public static volatile Ln[] f18562i;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f18563a;

    /* renamed from: b  reason: collision with root package name */
    public int f18564b;

    /* renamed from: c  reason: collision with root package name */
    public Mn f18565c;

    /* renamed from: d  reason: collision with root package name */
    public Nn f18566d;

    public Ln() {
        a();
    }

    public static Ln[] b() {
        if (f18562i == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18562i == null) {
                    f18562i = new Ln[0];
                }
            }
        }
        return f18562i;
    }

    public final Ln a() {
        this.f18563a = WireFormatNano.EMPTY_BYTES;
        this.f18564b = 0;
        this.f18565c = null;
        this.f18566d = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeInt32Size = CodedOutputByteBufferNano.computeInt32Size(2, this.f18564b) + CodedOutputByteBufferNano.computeBytesSize(1, this.f18563a) + super.computeSerializedSize();
        Mn mn = this.f18565c;
        if (mn != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(3, mn);
        }
        Nn nn = this.f18566d;
        if (nn != null) {
            return computeInt32Size + CodedOutputByteBufferNano.computeMessageSize(4, nn);
        }
        return computeInt32Size;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeBytes(1, this.f18563a);
        codedOutputByteBufferNano.writeInt32(2, this.f18564b);
        Mn mn = this.f18565c;
        if (mn != null) {
            codedOutputByteBufferNano.writeMessage(3, mn);
        }
        Nn nn = this.f18566d;
        if (nn != null) {
            codedOutputByteBufferNano.writeMessage(4, nn);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final Ln mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f18563a = codedInputByteBufferNano.readBytes();
            } else if (readTag == 16) {
                int readInt32 = codedInputByteBufferNano.readInt32();
                if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                    this.f18564b = readInt32;
                }
            } else if (readTag == 26) {
                if (this.f18565c == null) {
                    this.f18565c = new Mn();
                }
                codedInputByteBufferNano.readMessage(this.f18565c);
            } else if (readTag != 34) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                if (this.f18566d == null) {
                    this.f18566d = new Nn();
                }
                codedInputByteBufferNano.readMessage(this.f18566d);
            }
        }
    }

    public static Ln b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Ln().mergeFrom(codedInputByteBufferNano);
    }

    public static Ln a(byte[] bArr) {
        return (Ln) MessageNano.mergeFrom(new Ln(), bArr);
    }
}
