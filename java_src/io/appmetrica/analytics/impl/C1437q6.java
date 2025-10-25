package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.q6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1437q6 extends MessageNano {

    /* renamed from: f  reason: collision with root package name */
    public static volatile C1437q6[] f20411f;

    /* renamed from: a  reason: collision with root package name */
    public String f20412a;

    /* renamed from: b  reason: collision with root package name */
    public String f20413b;

    /* renamed from: c  reason: collision with root package name */
    public C1387o6[] f20414c;

    /* renamed from: d  reason: collision with root package name */
    public C1437q6 f20415d;

    /* renamed from: e  reason: collision with root package name */
    public C1437q6[] f20416e;

    public C1437q6() {
        a();
    }

    public static C1437q6[] b() {
        if (f20411f == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20411f == null) {
                    f20411f = new C1437q6[0];
                }
            }
        }
        return f20411f;
    }

    public final C1437q6 a() {
        this.f20412a = "";
        this.f20413b = "";
        this.f20414c = C1387o6.b();
        this.f20415d = null;
        this.f20416e = b();
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeStringSize = CodedOutputByteBufferNano.computeStringSize(1, this.f20412a) + super.computeSerializedSize();
        if (!this.f20413b.equals("")) {
            computeStringSize += CodedOutputByteBufferNano.computeStringSize(2, this.f20413b);
        }
        C1387o6[] c1387o6Arr = this.f20414c;
        int i10 = 0;
        if (c1387o6Arr != null && c1387o6Arr.length > 0) {
            int i11 = 0;
            while (true) {
                C1387o6[] c1387o6Arr2 = this.f20414c;
                if (i11 >= c1387o6Arr2.length) {
                    break;
                }
                C1387o6 c1387o6 = c1387o6Arr2[i11];
                if (c1387o6 != null) {
                    computeStringSize += CodedOutputByteBufferNano.computeMessageSize(3, c1387o6);
                }
                i11++;
            }
        }
        C1437q6 c1437q6 = this.f20415d;
        if (c1437q6 != null) {
            computeStringSize += CodedOutputByteBufferNano.computeMessageSize(4, c1437q6);
        }
        C1437q6[] c1437q6Arr = this.f20416e;
        if (c1437q6Arr != null && c1437q6Arr.length > 0) {
            while (true) {
                C1437q6[] c1437q6Arr2 = this.f20416e;
                if (i10 >= c1437q6Arr2.length) {
                    break;
                }
                C1437q6 c1437q62 = c1437q6Arr2[i10];
                if (c1437q62 != null) {
                    computeStringSize += CodedOutputByteBufferNano.computeMessageSize(5, c1437q62);
                }
                i10++;
            }
        }
        return computeStringSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeString(1, this.f20412a);
        if (!this.f20413b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.f20413b);
        }
        C1387o6[] c1387o6Arr = this.f20414c;
        int i10 = 0;
        if (c1387o6Arr != null && c1387o6Arr.length > 0) {
            int i11 = 0;
            while (true) {
                C1387o6[] c1387o6Arr2 = this.f20414c;
                if (i11 >= c1387o6Arr2.length) {
                    break;
                }
                C1387o6 c1387o6 = c1387o6Arr2[i11];
                if (c1387o6 != null) {
                    codedOutputByteBufferNano.writeMessage(3, c1387o6);
                }
                i11++;
            }
        }
        C1437q6 c1437q6 = this.f20415d;
        if (c1437q6 != null) {
            codedOutputByteBufferNano.writeMessage(4, c1437q6);
        }
        C1437q6[] c1437q6Arr = this.f20416e;
        if (c1437q6Arr != null && c1437q6Arr.length > 0) {
            while (true) {
                C1437q6[] c1437q6Arr2 = this.f20416e;
                if (i10 >= c1437q6Arr2.length) {
                    break;
                }
                C1437q6 c1437q62 = c1437q6Arr2[i10];
                if (c1437q62 != null) {
                    codedOutputByteBufferNano.writeMessage(5, c1437q62);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1437q6 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1437q6().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1437q6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f20412a = codedInputByteBufferNano.readString();
            } else if (readTag == 18) {
                this.f20413b = codedInputByteBufferNano.readString();
            } else if (readTag == 26) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                C1387o6[] c1387o6Arr = this.f20414c;
                int length = c1387o6Arr == null ? 0 : c1387o6Arr.length;
                int i10 = repeatedFieldArrayLength + length;
                C1387o6[] c1387o6Arr2 = new C1387o6[i10];
                if (length != 0) {
                    System.arraycopy(c1387o6Arr, 0, c1387o6Arr2, 0, length);
                }
                while (length < i10 - 1) {
                    C1387o6 c1387o6 = new C1387o6();
                    c1387o6Arr2[length] = c1387o6;
                    codedInputByteBufferNano.readMessage(c1387o6);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C1387o6 c1387o62 = new C1387o6();
                c1387o6Arr2[length] = c1387o62;
                codedInputByteBufferNano.readMessage(c1387o62);
                this.f20414c = c1387o6Arr2;
            } else if (readTag == 34) {
                if (this.f20415d == null) {
                    this.f20415d = new C1437q6();
                }
                codedInputByteBufferNano.readMessage(this.f20415d);
            } else if (readTag != 42) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 42);
                C1437q6[] c1437q6Arr = this.f20416e;
                int length2 = c1437q6Arr == null ? 0 : c1437q6Arr.length;
                int i11 = repeatedFieldArrayLength2 + length2;
                C1437q6[] c1437q6Arr2 = new C1437q6[i11];
                if (length2 != 0) {
                    System.arraycopy(c1437q6Arr, 0, c1437q6Arr2, 0, length2);
                }
                while (length2 < i11 - 1) {
                    C1437q6 c1437q6 = new C1437q6();
                    c1437q6Arr2[length2] = c1437q6;
                    codedInputByteBufferNano.readMessage(c1437q6);
                    codedInputByteBufferNano.readTag();
                    length2++;
                }
                C1437q6 c1437q62 = new C1437q6();
                c1437q6Arr2[length2] = c1437q62;
                codedInputByteBufferNano.readMessage(c1437q62);
                this.f20416e = c1437q6Arr2;
            }
        }
    }

    public static C1437q6 a(byte[] bArr) {
        return (C1437q6) MessageNano.mergeFrom(new C1437q6(), bArr);
    }
}
