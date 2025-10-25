package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.u9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1539u9 extends MessageNano {

    /* renamed from: f  reason: collision with root package name */
    public static final int f20718f = -1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f20719g = 0;

    /* renamed from: h  reason: collision with root package name */
    public static final int f20720h = 1;

    /* renamed from: i  reason: collision with root package name */
    public static volatile C1539u9[] f20721i;

    /* renamed from: a  reason: collision with root package name */
    public C1464r9[] f20722a;

    /* renamed from: b  reason: collision with root package name */
    public C1340m9 f20723b;

    /* renamed from: c  reason: collision with root package name */
    public C1265j9[] f20724c;

    /* renamed from: d  reason: collision with root package name */
    public C1489s9[] f20725d;

    /* renamed from: e  reason: collision with root package name */
    public String[] f20726e;

    public C1539u9() {
        a();
    }

    public static C1539u9[] b() {
        if (f20721i == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20721i == null) {
                    f20721i = new C1539u9[0];
                }
            }
        }
        return f20721i;
    }

    public final C1539u9 a() {
        this.f20722a = C1464r9.b();
        this.f20723b = null;
        this.f20724c = C1265j9.b();
        this.f20725d = C1489s9.b();
        this.f20726e = WireFormatNano.EMPTY_STRING_ARRAY;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1464r9[] c1464r9Arr = this.f20722a;
        int i10 = 0;
        if (c1464r9Arr != null && c1464r9Arr.length > 0) {
            int i11 = 0;
            while (true) {
                C1464r9[] c1464r9Arr2 = this.f20722a;
                if (i11 >= c1464r9Arr2.length) {
                    break;
                }
                C1464r9 c1464r9 = c1464r9Arr2[i11];
                if (c1464r9 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, c1464r9);
                }
                i11++;
            }
        }
        C1340m9 c1340m9 = this.f20723b;
        if (c1340m9 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, c1340m9);
        }
        C1265j9[] c1265j9Arr = this.f20724c;
        if (c1265j9Arr != null && c1265j9Arr.length > 0) {
            int i12 = 0;
            while (true) {
                C1265j9[] c1265j9Arr2 = this.f20724c;
                if (i12 >= c1265j9Arr2.length) {
                    break;
                }
                C1265j9 c1265j9 = c1265j9Arr2[i12];
                if (c1265j9 != null) {
                    computeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(7, c1265j9) + computeSerializedSize;
                }
                i12++;
            }
        }
        C1489s9[] c1489s9Arr = this.f20725d;
        if (c1489s9Arr != null && c1489s9Arr.length > 0) {
            int i13 = 0;
            while (true) {
                C1489s9[] c1489s9Arr2 = this.f20725d;
                if (i13 >= c1489s9Arr2.length) {
                    break;
                }
                C1489s9 c1489s9 = c1489s9Arr2[i13];
                if (c1489s9 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(10, c1489s9);
                }
                i13++;
            }
        }
        String[] strArr = this.f20726e;
        if (strArr != null && strArr.length > 0) {
            int i14 = 0;
            int i15 = 0;
            while (true) {
                String[] strArr2 = this.f20726e;
                if (i10 < strArr2.length) {
                    String str = strArr2[i10];
                    if (str != null) {
                        i15++;
                        i14 = CodedOutputByteBufferNano.computeStringSizeNoTag(str) + i14;
                    }
                    i10++;
                } else {
                    return computeSerializedSize + i14 + i15;
                }
            }
        } else {
            return computeSerializedSize;
        }
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1464r9[] c1464r9Arr = this.f20722a;
        int i10 = 0;
        if (c1464r9Arr != null && c1464r9Arr.length > 0) {
            int i11 = 0;
            while (true) {
                C1464r9[] c1464r9Arr2 = this.f20722a;
                if (i11 >= c1464r9Arr2.length) {
                    break;
                }
                C1464r9 c1464r9 = c1464r9Arr2[i11];
                if (c1464r9 != null) {
                    codedOutputByteBufferNano.writeMessage(3, c1464r9);
                }
                i11++;
            }
        }
        C1340m9 c1340m9 = this.f20723b;
        if (c1340m9 != null) {
            codedOutputByteBufferNano.writeMessage(4, c1340m9);
        }
        C1265j9[] c1265j9Arr = this.f20724c;
        if (c1265j9Arr != null && c1265j9Arr.length > 0) {
            int i12 = 0;
            while (true) {
                C1265j9[] c1265j9Arr2 = this.f20724c;
                if (i12 >= c1265j9Arr2.length) {
                    break;
                }
                C1265j9 c1265j9 = c1265j9Arr2[i12];
                if (c1265j9 != null) {
                    codedOutputByteBufferNano.writeMessage(7, c1265j9);
                }
                i12++;
            }
        }
        C1489s9[] c1489s9Arr = this.f20725d;
        if (c1489s9Arr != null && c1489s9Arr.length > 0) {
            int i13 = 0;
            while (true) {
                C1489s9[] c1489s9Arr2 = this.f20725d;
                if (i13 >= c1489s9Arr2.length) {
                    break;
                }
                C1489s9 c1489s9 = c1489s9Arr2[i13];
                if (c1489s9 != null) {
                    codedOutputByteBufferNano.writeMessage(10, c1489s9);
                }
                i13++;
            }
        }
        String[] strArr = this.f20726e;
        if (strArr != null && strArr.length > 0) {
            while (true) {
                String[] strArr2 = this.f20726e;
                if (i10 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i10];
                if (str != null) {
                    codedOutputByteBufferNano.writeString(11, str);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1539u9 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1539u9().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1539u9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 26) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                C1464r9[] c1464r9Arr = this.f20722a;
                int length = c1464r9Arr == null ? 0 : c1464r9Arr.length;
                int i10 = repeatedFieldArrayLength + length;
                C1464r9[] c1464r9Arr2 = new C1464r9[i10];
                if (length != 0) {
                    System.arraycopy(c1464r9Arr, 0, c1464r9Arr2, 0, length);
                }
                while (length < i10 - 1) {
                    C1464r9 c1464r9 = new C1464r9();
                    c1464r9Arr2[length] = c1464r9;
                    codedInputByteBufferNano.readMessage(c1464r9);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C1464r9 c1464r92 = new C1464r9();
                c1464r9Arr2[length] = c1464r92;
                codedInputByteBufferNano.readMessage(c1464r92);
                this.f20722a = c1464r9Arr2;
            } else if (readTag == 34) {
                if (this.f20723b == null) {
                    this.f20723b = new C1340m9();
                }
                codedInputByteBufferNano.readMessage(this.f20723b);
            } else if (readTag == 58) {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 58);
                C1265j9[] c1265j9Arr = this.f20724c;
                int length2 = c1265j9Arr == null ? 0 : c1265j9Arr.length;
                int i11 = repeatedFieldArrayLength2 + length2;
                C1265j9[] c1265j9Arr2 = new C1265j9[i11];
                if (length2 != 0) {
                    System.arraycopy(c1265j9Arr, 0, c1265j9Arr2, 0, length2);
                }
                while (length2 < i11 - 1) {
                    C1265j9 c1265j9 = new C1265j9();
                    c1265j9Arr2[length2] = c1265j9;
                    codedInputByteBufferNano.readMessage(c1265j9);
                    codedInputByteBufferNano.readTag();
                    length2++;
                }
                C1265j9 c1265j92 = new C1265j9();
                c1265j9Arr2[length2] = c1265j92;
                codedInputByteBufferNano.readMessage(c1265j92);
                this.f20724c = c1265j9Arr2;
            } else if (readTag == 82) {
                int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 82);
                C1489s9[] c1489s9Arr = this.f20725d;
                int length3 = c1489s9Arr == null ? 0 : c1489s9Arr.length;
                int i12 = repeatedFieldArrayLength3 + length3;
                C1489s9[] c1489s9Arr2 = new C1489s9[i12];
                if (length3 != 0) {
                    System.arraycopy(c1489s9Arr, 0, c1489s9Arr2, 0, length3);
                }
                while (length3 < i12 - 1) {
                    C1489s9 c1489s9 = new C1489s9();
                    c1489s9Arr2[length3] = c1489s9;
                    codedInputByteBufferNano.readMessage(c1489s9);
                    codedInputByteBufferNano.readTag();
                    length3++;
                }
                C1489s9 c1489s92 = new C1489s9();
                c1489s9Arr2[length3] = c1489s92;
                codedInputByteBufferNano.readMessage(c1489s92);
                this.f20725d = c1489s9Arr2;
            } else if (readTag != 90) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength4 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 90);
                String[] strArr = this.f20726e;
                int length4 = strArr == null ? 0 : strArr.length;
                int i13 = repeatedFieldArrayLength4 + length4;
                String[] strArr2 = new String[i13];
                if (length4 != 0) {
                    System.arraycopy(strArr, 0, strArr2, 0, length4);
                }
                while (length4 < i13 - 1) {
                    strArr2[length4] = codedInputByteBufferNano.readString();
                    codedInputByteBufferNano.readTag();
                    length4++;
                }
                strArr2[length4] = codedInputByteBufferNano.readString();
                this.f20726e = strArr2;
            }
        }
    }

    public static C1539u9 a(byte[] bArr) {
        return (C1539u9) MessageNano.mergeFrom(new C1539u9(), bArr);
    }
}
