package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.g6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1188g6 extends MessageNano {

    /* renamed from: d  reason: collision with root package name */
    public static volatile C1188g6[] f19669d;

    /* renamed from: a  reason: collision with root package name */
    public C1412p6 f19670a;

    /* renamed from: b  reason: collision with root package name */
    public C1412p6[] f19671b;

    /* renamed from: c  reason: collision with root package name */
    public String f19672c;

    public C1188g6() {
        a();
    }

    public static C1188g6[] b() {
        if (f19669d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19669d == null) {
                    f19669d = new C1188g6[0];
                }
            }
        }
        return f19669d;
    }

    public final C1188g6 a() {
        this.f19670a = null;
        this.f19671b = C1412p6.b();
        this.f19672c = "";
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1412p6 c1412p6 = this.f19670a;
        if (c1412p6 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1412p6);
        }
        C1412p6[] c1412p6Arr = this.f19671b;
        if (c1412p6Arr != null && c1412p6Arr.length > 0) {
            int i10 = 0;
            while (true) {
                C1412p6[] c1412p6Arr2 = this.f19671b;
                if (i10 >= c1412p6Arr2.length) {
                    break;
                }
                C1412p6 c1412p62 = c1412p6Arr2[i10];
                if (c1412p62 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c1412p62);
                }
                i10++;
            }
        }
        if (!this.f19672c.equals("")) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(3, this.f19672c);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1412p6 c1412p6 = this.f19670a;
        if (c1412p6 != null) {
            codedOutputByteBufferNano.writeMessage(1, c1412p6);
        }
        C1412p6[] c1412p6Arr = this.f19671b;
        if (c1412p6Arr != null && c1412p6Arr.length > 0) {
            int i10 = 0;
            while (true) {
                C1412p6[] c1412p6Arr2 = this.f19671b;
                if (i10 >= c1412p6Arr2.length) {
                    break;
                }
                C1412p6 c1412p62 = c1412p6Arr2[i10];
                if (c1412p62 != null) {
                    codedOutputByteBufferNano.writeMessage(2, c1412p62);
                }
                i10++;
            }
        }
        if (!this.f19672c.equals("")) {
            codedOutputByteBufferNano.writeString(3, this.f19672c);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1188g6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                if (this.f19670a == null) {
                    this.f19670a = new C1412p6();
                }
                codedInputByteBufferNano.readMessage(this.f19670a);
            } else if (readTag == 18) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                C1412p6[] c1412p6Arr = this.f19671b;
                int length = c1412p6Arr == null ? 0 : c1412p6Arr.length;
                int i10 = repeatedFieldArrayLength + length;
                C1412p6[] c1412p6Arr2 = new C1412p6[i10];
                if (length != 0) {
                    System.arraycopy(c1412p6Arr, 0, c1412p6Arr2, 0, length);
                }
                while (length < i10 - 1) {
                    C1412p6 c1412p6 = new C1412p6();
                    c1412p6Arr2[length] = c1412p6;
                    codedInputByteBufferNano.readMessage(c1412p6);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C1412p6 c1412p62 = new C1412p6();
                c1412p6Arr2[length] = c1412p62;
                codedInputByteBufferNano.readMessage(c1412p62);
                this.f19671b = c1412p6Arr2;
            } else if (readTag != 26) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f19672c = codedInputByteBufferNano.readString();
            }
        }
    }

    public static C1188g6 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1188g6().mergeFrom(codedInputByteBufferNano);
    }

    public static C1188g6 a(byte[] bArr) {
        return (C1188g6) MessageNano.mergeFrom(new C1188g6(), bArr);
    }
}
