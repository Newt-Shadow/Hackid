package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class Z1 extends MessageNano {

    /* renamed from: d  reason: collision with root package name */
    public static volatile Z1[] f19314d;

    /* renamed from: a  reason: collision with root package name */
    public Y1[] f19315a;

    /* renamed from: b  reason: collision with root package name */
    public X1 f19316b;

    /* renamed from: c  reason: collision with root package name */
    public String[] f19317c;

    public Z1() {
        a();
    }

    public static Z1[] b() {
        if (f19314d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19314d == null) {
                    f19314d = new Z1[0];
                }
            }
        }
        return f19314d;
    }

    public final Z1 a() {
        this.f19315a = Y1.b();
        this.f19316b = null;
        this.f19317c = WireFormatNano.EMPTY_STRING_ARRAY;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        Y1[] y1Arr = this.f19315a;
        int i10 = 0;
        if (y1Arr != null && y1Arr.length > 0) {
            int i11 = 0;
            while (true) {
                Y1[] y1Arr2 = this.f19315a;
                if (i11 >= y1Arr2.length) {
                    break;
                }
                Y1 y12 = y1Arr2[i11];
                if (y12 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, y12);
                }
                i11++;
            }
        }
        X1 x12 = this.f19316b;
        if (x12 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, x12);
        }
        String[] strArr = this.f19317c;
        if (strArr != null && strArr.length > 0) {
            int i12 = 0;
            int i13 = 0;
            while (true) {
                String[] strArr2 = this.f19317c;
                if (i10 < strArr2.length) {
                    String str = strArr2[i10];
                    if (str != null) {
                        i13++;
                        i12 = CodedOutputByteBufferNano.computeStringSizeNoTag(str) + i12;
                    }
                    i10++;
                } else {
                    return computeSerializedSize + i12 + i13;
                }
            }
        } else {
            return computeSerializedSize;
        }
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        Y1[] y1Arr = this.f19315a;
        int i10 = 0;
        if (y1Arr != null && y1Arr.length > 0) {
            int i11 = 0;
            while (true) {
                Y1[] y1Arr2 = this.f19315a;
                if (i11 >= y1Arr2.length) {
                    break;
                }
                Y1 y12 = y1Arr2[i11];
                if (y12 != null) {
                    codedOutputByteBufferNano.writeMessage(1, y12);
                }
                i11++;
            }
        }
        X1 x12 = this.f19316b;
        if (x12 != null) {
            codedOutputByteBufferNano.writeMessage(2, x12);
        }
        String[] strArr = this.f19317c;
        if (strArr != null && strArr.length > 0) {
            while (true) {
                String[] strArr2 = this.f19317c;
                if (i10 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i10];
                if (str != null) {
                    codedOutputByteBufferNano.writeString(3, str);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final Z1 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                Y1[] y1Arr = this.f19315a;
                int length = y1Arr == null ? 0 : y1Arr.length;
                int i10 = repeatedFieldArrayLength + length;
                Y1[] y1Arr2 = new Y1[i10];
                if (length != 0) {
                    System.arraycopy(y1Arr, 0, y1Arr2, 0, length);
                }
                while (length < i10 - 1) {
                    Y1 y12 = new Y1();
                    y1Arr2[length] = y12;
                    codedInputByteBufferNano.readMessage(y12);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                Y1 y13 = new Y1();
                y1Arr2[length] = y13;
                codedInputByteBufferNano.readMessage(y13);
                this.f19315a = y1Arr2;
            } else if (readTag == 18) {
                if (this.f19316b == null) {
                    this.f19316b = new X1();
                }
                codedInputByteBufferNano.readMessage(this.f19316b);
            } else if (readTag != 26) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                String[] strArr = this.f19317c;
                int length2 = strArr == null ? 0 : strArr.length;
                int i11 = repeatedFieldArrayLength2 + length2;
                String[] strArr2 = new String[i11];
                if (length2 != 0) {
                    System.arraycopy(strArr, 0, strArr2, 0, length2);
                }
                while (length2 < i11 - 1) {
                    strArr2[length2] = codedInputByteBufferNano.readString();
                    codedInputByteBufferNano.readTag();
                    length2++;
                }
                strArr2[length2] = codedInputByteBufferNano.readString();
                this.f19317c = strArr2;
            }
        }
    }

    public static Z1 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Z1().mergeFrom(codedInputByteBufferNano);
    }

    public static Z1 a(byte[] bArr) {
        return (Z1) MessageNano.mergeFrom(new Z1(), bArr);
    }
}
