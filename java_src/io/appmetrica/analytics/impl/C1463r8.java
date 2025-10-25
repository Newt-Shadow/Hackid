package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;
/* renamed from: io.appmetrica.analytics.impl.r8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1463r8 extends MessageNano {

    /* renamed from: f  reason: collision with root package name */
    public static volatile C1463r8[] f20499f;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f20500a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f20501b;

    /* renamed from: c  reason: collision with root package name */
    public C1563v8 f20502c;

    /* renamed from: d  reason: collision with root package name */
    public C1488s8[] f20503d;

    /* renamed from: e  reason: collision with root package name */
    public int f20504e;

    public C1463r8() {
        a();
    }

    public static C1463r8[] b() {
        if (f20499f == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20499f == null) {
                    f20499f = new C1463r8[0];
                }
            }
        }
        return f20499f;
    }

    public final C1463r8 a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f20500a = bArr;
        this.f20501b = bArr;
        this.f20502c = null;
        this.f20503d = C1488s8.b();
        this.f20504e = 0;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        byte[] bArr = this.f20500a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f20500a);
        }
        if (!Arrays.equals(this.f20501b, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(2, this.f20501b);
        }
        C1563v8 c1563v8 = this.f20502c;
        if (c1563v8 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, c1563v8);
        }
        C1488s8[] c1488s8Arr = this.f20503d;
        if (c1488s8Arr != null && c1488s8Arr.length > 0) {
            int i10 = 0;
            while (true) {
                C1488s8[] c1488s8Arr2 = this.f20503d;
                if (i10 >= c1488s8Arr2.length) {
                    break;
                }
                C1488s8 c1488s8 = c1488s8Arr2[i10];
                if (c1488s8 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, c1488s8);
                }
                i10++;
            }
        }
        int i11 = this.f20504e;
        if (i11 != 0) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeUInt32Size(5, i11);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        byte[] bArr = this.f20500a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(1, this.f20500a);
        }
        if (!Arrays.equals(this.f20501b, bArr2)) {
            codedOutputByteBufferNano.writeBytes(2, this.f20501b);
        }
        C1563v8 c1563v8 = this.f20502c;
        if (c1563v8 != null) {
            codedOutputByteBufferNano.writeMessage(3, c1563v8);
        }
        C1488s8[] c1488s8Arr = this.f20503d;
        if (c1488s8Arr != null && c1488s8Arr.length > 0) {
            int i10 = 0;
            while (true) {
                C1488s8[] c1488s8Arr2 = this.f20503d;
                if (i10 >= c1488s8Arr2.length) {
                    break;
                }
                C1488s8 c1488s8 = c1488s8Arr2[i10];
                if (c1488s8 != null) {
                    codedOutputByteBufferNano.writeMessage(4, c1488s8);
                }
                i10++;
            }
        }
        int i11 = this.f20504e;
        if (i11 != 0) {
            codedOutputByteBufferNano.writeUInt32(5, i11);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1463r8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1463r8().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1463r8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f20500a = codedInputByteBufferNano.readBytes();
            } else if (readTag == 18) {
                this.f20501b = codedInputByteBufferNano.readBytes();
            } else if (readTag == 26) {
                if (this.f20502c == null) {
                    this.f20502c = new C1563v8();
                }
                codedInputByteBufferNano.readMessage(this.f20502c);
            } else if (readTag == 34) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 34);
                C1488s8[] c1488s8Arr = this.f20503d;
                int length = c1488s8Arr == null ? 0 : c1488s8Arr.length;
                int i10 = repeatedFieldArrayLength + length;
                C1488s8[] c1488s8Arr2 = new C1488s8[i10];
                if (length != 0) {
                    System.arraycopy(c1488s8Arr, 0, c1488s8Arr2, 0, length);
                }
                while (length < i10 - 1) {
                    C1488s8 c1488s8 = new C1488s8();
                    c1488s8Arr2[length] = c1488s8;
                    codedInputByteBufferNano.readMessage(c1488s8);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C1488s8 c1488s82 = new C1488s8();
                c1488s8Arr2[length] = c1488s82;
                codedInputByteBufferNano.readMessage(c1488s82);
                this.f20503d = c1488s8Arr2;
            } else if (readTag != 40) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f20504e = codedInputByteBufferNano.readUInt32();
            }
        }
    }

    public static C1463r8 a(byte[] bArr) {
        return (C1463r8) MessageNano.mergeFrom(new C1463r8(), bArr);
    }
}
