package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class U8 extends MessageNano {

    /* renamed from: b  reason: collision with root package name */
    public static volatile U8[] f19039b;

    /* renamed from: a  reason: collision with root package name */
    public T8[] f19040a;

    public U8() {
        a();
    }

    public static U8[] b() {
        if (f19039b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19039b == null) {
                    f19039b = new U8[0];
                }
            }
        }
        return f19039b;
    }

    public final U8 a() {
        this.f19040a = T8.b();
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        T8[] t8Arr = this.f19040a;
        if (t8Arr != null && t8Arr.length > 0) {
            int i10 = 0;
            while (true) {
                T8[] t8Arr2 = this.f19040a;
                if (i10 >= t8Arr2.length) {
                    break;
                }
                T8 t82 = t8Arr2[i10];
                if (t82 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, t82);
                }
                i10++;
            }
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        T8[] t8Arr = this.f19040a;
        if (t8Arr != null && t8Arr.length > 0) {
            int i10 = 0;
            while (true) {
                T8[] t8Arr2 = this.f19040a;
                if (i10 >= t8Arr2.length) {
                    break;
                }
                T8 t82 = t8Arr2[i10];
                if (t82 != null) {
                    codedOutputByteBufferNano.writeMessage(1, t82);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final U8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag != 10) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                T8[] t8Arr = this.f19040a;
                int length = t8Arr == null ? 0 : t8Arr.length;
                int i10 = repeatedFieldArrayLength + length;
                T8[] t8Arr2 = new T8[i10];
                if (length != 0) {
                    System.arraycopy(t8Arr, 0, t8Arr2, 0, length);
                }
                while (length < i10 - 1) {
                    T8 t82 = new T8();
                    t8Arr2[length] = t82;
                    codedInputByteBufferNano.readMessage(t82);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                T8 t83 = new T8();
                t8Arr2[length] = t83;
                codedInputByteBufferNano.readMessage(t83);
                this.f19040a = t8Arr2;
            }
        }
    }

    public static U8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new U8().mergeFrom(codedInputByteBufferNano);
    }

    public static U8 a(byte[] bArr) {
        return (U8) MessageNano.mergeFrom(new U8(), bArr);
    }
}
