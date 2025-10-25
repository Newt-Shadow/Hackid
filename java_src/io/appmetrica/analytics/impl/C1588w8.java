package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.w8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1588w8 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C1588w8[] f20852c;

    /* renamed from: a  reason: collision with root package name */
    public C1339m8 f20853a;

    /* renamed from: b  reason: collision with root package name */
    public C1339m8[] f20854b;

    public C1588w8() {
        a();
    }

    public static C1588w8[] b() {
        if (f20852c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20852c == null) {
                    f20852c = new C1588w8[0];
                }
            }
        }
        return f20852c;
    }

    public final C1588w8 a() {
        this.f20853a = null;
        this.f20854b = C1339m8.b();
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1339m8 c1339m8 = this.f20853a;
        if (c1339m8 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1339m8);
        }
        C1339m8[] c1339m8Arr = this.f20854b;
        if (c1339m8Arr != null && c1339m8Arr.length > 0) {
            int i10 = 0;
            while (true) {
                C1339m8[] c1339m8Arr2 = this.f20854b;
                if (i10 >= c1339m8Arr2.length) {
                    break;
                }
                C1339m8 c1339m82 = c1339m8Arr2[i10];
                if (c1339m82 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c1339m82);
                }
                i10++;
            }
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1339m8 c1339m8 = this.f20853a;
        if (c1339m8 != null) {
            codedOutputByteBufferNano.writeMessage(1, c1339m8);
        }
        C1339m8[] c1339m8Arr = this.f20854b;
        if (c1339m8Arr != null && c1339m8Arr.length > 0) {
            int i10 = 0;
            while (true) {
                C1339m8[] c1339m8Arr2 = this.f20854b;
                if (i10 >= c1339m8Arr2.length) {
                    break;
                }
                C1339m8 c1339m82 = c1339m8Arr2[i10];
                if (c1339m82 != null) {
                    codedOutputByteBufferNano.writeMessage(2, c1339m82);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1588w8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                if (this.f20853a == null) {
                    this.f20853a = new C1339m8();
                }
                codedInputByteBufferNano.readMessage(this.f20853a);
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                C1339m8[] c1339m8Arr = this.f20854b;
                int length = c1339m8Arr == null ? 0 : c1339m8Arr.length;
                int i10 = repeatedFieldArrayLength + length;
                C1339m8[] c1339m8Arr2 = new C1339m8[i10];
                if (length != 0) {
                    System.arraycopy(c1339m8Arr, 0, c1339m8Arr2, 0, length);
                }
                while (length < i10 - 1) {
                    C1339m8 c1339m8 = new C1339m8();
                    c1339m8Arr2[length] = c1339m8;
                    codedInputByteBufferNano.readMessage(c1339m8);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C1339m8 c1339m82 = new C1339m8();
                c1339m8Arr2[length] = c1339m82;
                codedInputByteBufferNano.readMessage(c1339m82);
                this.f20854b = c1339m8Arr2;
            }
        }
    }

    public static C1588w8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1588w8().mergeFrom(codedInputByteBufferNano);
    }

    public static C1588w8 a(byte[] bArr) {
        return (C1588w8) MessageNano.mergeFrom(new C1588w8(), bArr);
    }
}
