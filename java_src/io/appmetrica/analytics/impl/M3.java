package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class M3 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile M3[] f18569c;

    /* renamed from: a  reason: collision with root package name */
    public O3 f18570a;

    /* renamed from: b  reason: collision with root package name */
    public int f18571b;

    public M3() {
        a();
    }

    public static M3[] b() {
        if (f18569c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18569c == null) {
                    f18569c = new M3[0];
                }
            }
        }
        return f18569c;
    }

    public final M3 a() {
        this.f18570a = null;
        this.f18571b = 0;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        O3 o32 = this.f18570a;
        if (o32 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, o32);
        }
        int i10 = this.f18571b;
        if (i10 != 0) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i10);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        O3 o32 = this.f18570a;
        if (o32 != null) {
            codedOutputByteBufferNano.writeMessage(1, o32);
        }
        int i10 = this.f18571b;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeInt32(2, i10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final M3 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                if (this.f18570a == null) {
                    this.f18570a = new O3();
                }
                codedInputByteBufferNano.readMessage(this.f18570a);
            } else if (readTag != 16) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int readInt32 = codedInputByteBufferNano.readInt32();
                if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                    this.f18571b = readInt32;
                }
            }
        }
    }

    public static M3 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new M3().mergeFrom(codedInputByteBufferNano);
    }

    public static M3 a(byte[] bArr) {
        return (M3) MessageNano.mergeFrom(new M3(), bArr);
    }
}
