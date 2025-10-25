package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class M9 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static final int f18579c = 0;

    /* renamed from: d  reason: collision with root package name */
    public static final int f18580d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f18581e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f18582f = 3;

    /* renamed from: g  reason: collision with root package name */
    public static final int f18583g = 4;

    /* renamed from: h  reason: collision with root package name */
    public static final int f18584h = 5;

    /* renamed from: i  reason: collision with root package name */
    public static final int f18585i = 6;

    /* renamed from: j  reason: collision with root package name */
    public static volatile M9[] f18586j;

    /* renamed from: a  reason: collision with root package name */
    public int f18587a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f18588b;

    public M9() {
        a();
    }

    public static M9[] b() {
        if (f18586j == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18586j == null) {
                    f18586j = new M9[0];
                }
            }
        }
        return f18586j;
    }

    public final M9 a() {
        this.f18587a = 0;
        this.f18588b = WireFormatNano.EMPTY_BYTES;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        int i10 = this.f18587a;
        if (i10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i10);
        }
        if (!Arrays.equals(this.f18588b, WireFormatNano.EMPTY_BYTES)) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(2, this.f18588b);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        int i10 = this.f18587a;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeInt32(1, i10);
        }
        if (!Arrays.equals(this.f18588b, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(2, this.f18588b);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final M9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                int readInt32 = codedInputByteBufferNano.readInt32();
                switch (readInt32) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        this.f18587a = readInt32;
                        continue;
                }
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f18588b = codedInputByteBufferNano.readBytes();
            }
        }
    }

    public static M9 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new M9().mergeFrom(codedInputByteBufferNano);
    }

    public static M9 a(byte[] bArr) {
        return (M9) MessageNano.mergeFrom(new M9(), bArr);
    }
}
