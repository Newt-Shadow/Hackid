package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.v8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1563v8 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C1563v8[] f20777c;

    /* renamed from: a  reason: collision with root package name */
    public C1538u8[] f20778a;

    /* renamed from: b  reason: collision with root package name */
    public int f20779b;

    public C1563v8() {
        a();
    }

    public static C1563v8[] b() {
        if (f20777c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20777c == null) {
                    f20777c = new C1563v8[0];
                }
            }
        }
        return f20777c;
    }

    public final C1563v8 a() {
        this.f20778a = C1538u8.b();
        this.f20779b = 0;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1538u8[] c1538u8Arr = this.f20778a;
        if (c1538u8Arr != null && c1538u8Arr.length > 0) {
            int i10 = 0;
            while (true) {
                C1538u8[] c1538u8Arr2 = this.f20778a;
                if (i10 >= c1538u8Arr2.length) {
                    break;
                }
                C1538u8 c1538u8 = c1538u8Arr2[i10];
                if (c1538u8 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1538u8);
                }
                i10++;
            }
        }
        int i11 = this.f20779b;
        if (i11 != 0) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeUInt32Size(2, i11);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1538u8[] c1538u8Arr = this.f20778a;
        if (c1538u8Arr != null && c1538u8Arr.length > 0) {
            int i10 = 0;
            while (true) {
                C1538u8[] c1538u8Arr2 = this.f20778a;
                if (i10 >= c1538u8Arr2.length) {
                    break;
                }
                C1538u8 c1538u8 = c1538u8Arr2[i10];
                if (c1538u8 != null) {
                    codedOutputByteBufferNano.writeMessage(1, c1538u8);
                }
                i10++;
            }
        }
        int i11 = this.f20779b;
        if (i11 != 0) {
            codedOutputByteBufferNano.writeUInt32(2, i11);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1563v8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                C1538u8[] c1538u8Arr = this.f20778a;
                int length = c1538u8Arr == null ? 0 : c1538u8Arr.length;
                int i10 = repeatedFieldArrayLength + length;
                C1538u8[] c1538u8Arr2 = new C1538u8[i10];
                if (length != 0) {
                    System.arraycopy(c1538u8Arr, 0, c1538u8Arr2, 0, length);
                }
                while (length < i10 - 1) {
                    C1538u8 c1538u8 = new C1538u8();
                    c1538u8Arr2[length] = c1538u8;
                    codedInputByteBufferNano.readMessage(c1538u8);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C1538u8 c1538u82 = new C1538u8();
                c1538u8Arr2[length] = c1538u82;
                codedInputByteBufferNano.readMessage(c1538u82);
                this.f20778a = c1538u8Arr2;
            } else if (readTag != 16) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f20779b = codedInputByteBufferNano.readUInt32();
            }
        }
    }

    public static C1563v8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1563v8().mergeFrom(codedInputByteBufferNano);
    }

    public static C1563v8 a(byte[] bArr) {
        return (C1563v8) MessageNano.mergeFrom(new C1563v8(), bArr);
    }
}
