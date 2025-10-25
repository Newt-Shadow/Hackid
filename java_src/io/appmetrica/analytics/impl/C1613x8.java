package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;
/* renamed from: io.appmetrica.analytics.impl.x8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1613x8 extends MessageNano {

    /* renamed from: h  reason: collision with root package name */
    public static volatile C1613x8[] f20919h;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f20920a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f20921b;

    /* renamed from: c  reason: collision with root package name */
    public C1414p8 f20922c;

    /* renamed from: d  reason: collision with root package name */
    public C1563v8 f20923d;

    /* renamed from: e  reason: collision with root package name */
    public C1588w8 f20924e;

    /* renamed from: f  reason: collision with root package name */
    public C1588w8 f20925f;

    /* renamed from: g  reason: collision with root package name */
    public C1638y8[] f20926g;

    public C1613x8() {
        a();
    }

    public static C1613x8[] b() {
        if (f20919h == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20919h == null) {
                    f20919h = new C1613x8[0];
                }
            }
        }
        return f20919h;
    }

    public final C1613x8 a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f20920a = bArr;
        this.f20921b = bArr;
        this.f20922c = null;
        this.f20923d = null;
        this.f20924e = null;
        this.f20925f = null;
        this.f20926g = C1638y8.b();
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        byte[] bArr = this.f20920a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f20920a);
        }
        if (!Arrays.equals(this.f20921b, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(2, this.f20921b);
        }
        C1414p8 c1414p8 = this.f20922c;
        if (c1414p8 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, c1414p8);
        }
        C1563v8 c1563v8 = this.f20923d;
        if (c1563v8 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, c1563v8);
        }
        C1588w8 c1588w8 = this.f20924e;
        if (c1588w8 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, c1588w8);
        }
        C1588w8 c1588w82 = this.f20925f;
        if (c1588w82 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(6, c1588w82);
        }
        C1638y8[] c1638y8Arr = this.f20926g;
        if (c1638y8Arr != null && c1638y8Arr.length > 0) {
            int i10 = 0;
            while (true) {
                C1638y8[] c1638y8Arr2 = this.f20926g;
                if (i10 >= c1638y8Arr2.length) {
                    break;
                }
                C1638y8 c1638y8 = c1638y8Arr2[i10];
                if (c1638y8 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(7, c1638y8);
                }
                i10++;
            }
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        byte[] bArr = this.f20920a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(1, this.f20920a);
        }
        if (!Arrays.equals(this.f20921b, bArr2)) {
            codedOutputByteBufferNano.writeBytes(2, this.f20921b);
        }
        C1414p8 c1414p8 = this.f20922c;
        if (c1414p8 != null) {
            codedOutputByteBufferNano.writeMessage(3, c1414p8);
        }
        C1563v8 c1563v8 = this.f20923d;
        if (c1563v8 != null) {
            codedOutputByteBufferNano.writeMessage(4, c1563v8);
        }
        C1588w8 c1588w8 = this.f20924e;
        if (c1588w8 != null) {
            codedOutputByteBufferNano.writeMessage(5, c1588w8);
        }
        C1588w8 c1588w82 = this.f20925f;
        if (c1588w82 != null) {
            codedOutputByteBufferNano.writeMessage(6, c1588w82);
        }
        C1638y8[] c1638y8Arr = this.f20926g;
        if (c1638y8Arr != null && c1638y8Arr.length > 0) {
            int i10 = 0;
            while (true) {
                C1638y8[] c1638y8Arr2 = this.f20926g;
                if (i10 >= c1638y8Arr2.length) {
                    break;
                }
                C1638y8 c1638y8 = c1638y8Arr2[i10];
                if (c1638y8 != null) {
                    codedOutputByteBufferNano.writeMessage(7, c1638y8);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1613x8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1613x8().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1613x8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f20920a = codedInputByteBufferNano.readBytes();
            } else if (readTag == 18) {
                this.f20921b = codedInputByteBufferNano.readBytes();
            } else if (readTag == 26) {
                if (this.f20922c == null) {
                    this.f20922c = new C1414p8();
                }
                codedInputByteBufferNano.readMessage(this.f20922c);
            } else if (readTag == 34) {
                if (this.f20923d == null) {
                    this.f20923d = new C1563v8();
                }
                codedInputByteBufferNano.readMessage(this.f20923d);
            } else if (readTag == 42) {
                if (this.f20924e == null) {
                    this.f20924e = new C1588w8();
                }
                codedInputByteBufferNano.readMessage(this.f20924e);
            } else if (readTag == 50) {
                if (this.f20925f == null) {
                    this.f20925f = new C1588w8();
                }
                codedInputByteBufferNano.readMessage(this.f20925f);
            } else if (readTag != 58) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 58);
                C1638y8[] c1638y8Arr = this.f20926g;
                int length = c1638y8Arr == null ? 0 : c1638y8Arr.length;
                int i10 = repeatedFieldArrayLength + length;
                C1638y8[] c1638y8Arr2 = new C1638y8[i10];
                if (length != 0) {
                    System.arraycopy(c1638y8Arr, 0, c1638y8Arr2, 0, length);
                }
                while (length < i10 - 1) {
                    C1638y8 c1638y8 = new C1638y8();
                    c1638y8Arr2[length] = c1638y8;
                    codedInputByteBufferNano.readMessage(c1638y8);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C1638y8 c1638y82 = new C1638y8();
                c1638y8Arr2[length] = c1638y82;
                codedInputByteBufferNano.readMessage(c1638y82);
                this.f20926g = c1638y8Arr2;
            }
        }
    }

    public static C1613x8 a(byte[] bArr) {
        return (C1613x8) MessageNano.mergeFrom(new C1613x8(), bArr);
    }
}
