package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
/* loaded from: classes2.dex */
public final class Df extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public a[] f9911a;

    /* renamed from: b  reason: collision with root package name */
    public String[] f9912b;

    /* loaded from: classes2.dex */
    public static final class a extends MessageNano {

        /* renamed from: g  reason: collision with root package name */
        private static volatile a[] f9913g;

        /* renamed from: a  reason: collision with root package name */
        public String f9914a;

        /* renamed from: b  reason: collision with root package name */
        public String f9915b;

        /* renamed from: c  reason: collision with root package name */
        public String f9916c;

        /* renamed from: d  reason: collision with root package name */
        public C0121a[] f9917d;

        /* renamed from: e  reason: collision with root package name */
        public long f9918e;

        /* renamed from: f  reason: collision with root package name */
        public int[] f9919f;

        /* renamed from: com.yandex.metrica.impl.ob.Df$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0121a extends MessageNano {

            /* renamed from: c  reason: collision with root package name */
            private static volatile C0121a[] f9920c;

            /* renamed from: a  reason: collision with root package name */
            public String f9921a;

            /* renamed from: b  reason: collision with root package name */
            public String f9922b;

            public C0121a() {
                a();
            }

            public static C0121a[] b() {
                if (f9920c == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (f9920c == null) {
                            f9920c = new C0121a[0];
                        }
                    }
                }
                return f9920c;
            }

            public C0121a a() {
                this.f9921a = "";
                this.f9922b = "";
                this.cachedSize = -1;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.nano.ym.MessageNano
            public int computeSerializedSize() {
                return super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f9921a) + CodedOutputByteBufferNano.computeStringSize(2, this.f9922b);
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        break;
                    } else if (readTag != 10) {
                        if (readTag != 18) {
                            if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                break;
                            }
                        } else {
                            this.f9922b = codedInputByteBufferNano.readString();
                        }
                    } else {
                        this.f9921a = codedInputByteBufferNano.readString();
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
                codedOutputByteBufferNano.writeString(1, this.f9921a);
                codedOutputByteBufferNano.writeString(2, this.f9922b);
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        public a() {
            a();
        }

        public static a[] b() {
            if (f9913g == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f9913g == null) {
                        f9913g = new a[0];
                    }
                }
            }
            return f9913g;
        }

        public a a() {
            this.f9914a = "";
            this.f9915b = "";
            this.f9916c = "";
            this.f9917d = C0121a.b();
            this.f9918e = 0L;
            this.f9919f = WireFormatNano.EMPTY_INT_ARRAY;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f9914a) + CodedOutputByteBufferNano.computeStringSize(2, this.f9915b) + CodedOutputByteBufferNano.computeStringSize(3, this.f9916c);
            C0121a[] c0121aArr = this.f9917d;
            int i10 = 0;
            if (c0121aArr != null && c0121aArr.length > 0) {
                int i11 = 0;
                while (true) {
                    C0121a[] c0121aArr2 = this.f9917d;
                    if (i11 >= c0121aArr2.length) {
                        break;
                    }
                    C0121a c0121a = c0121aArr2[i11];
                    if (c0121a != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, c0121a);
                    }
                    i11++;
                }
            }
            int computeUInt64Size = computeSerializedSize + CodedOutputByteBufferNano.computeUInt64Size(5, this.f9918e);
            int[] iArr = this.f9919f;
            if (iArr != null && iArr.length > 0) {
                int i12 = 0;
                while (true) {
                    int[] iArr2 = this.f9919f;
                    if (i10 < iArr2.length) {
                        i12 += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr2[i10]);
                        i10++;
                    } else {
                        return computeUInt64Size + i12 + (iArr2.length * 1);
                    }
                }
            } else {
                return computeUInt64Size;
            }
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            int length;
            int length2;
            int length3;
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag != 10) {
                    if (readTag != 18) {
                        if (readTag != 26) {
                            if (readTag != 34) {
                                if (readTag != 40) {
                                    if (readTag != 48) {
                                        if (readTag != 50) {
                                            if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                                break;
                                            }
                                        } else {
                                            int pushLimit = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                                            int position = codedInputByteBufferNano.getPosition();
                                            int i10 = 0;
                                            while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                                                int readInt32 = codedInputByteBufferNano.readInt32();
                                                if (readInt32 == 1 || readInt32 == 2) {
                                                    i10++;
                                                }
                                            }
                                            if (i10 != 0) {
                                                codedInputByteBufferNano.rewindToPosition(position);
                                                int[] iArr = this.f9919f;
                                                if (iArr == null) {
                                                    length = 0;
                                                } else {
                                                    length = iArr.length;
                                                }
                                                int[] iArr2 = new int[i10 + length];
                                                if (length != 0) {
                                                    System.arraycopy(iArr, 0, iArr2, 0, length);
                                                }
                                                while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                                                    int readInt322 = codedInputByteBufferNano.readInt32();
                                                    if (readInt322 == 1 || readInt322 == 2) {
                                                        iArr2[length] = readInt322;
                                                        length++;
                                                    }
                                                }
                                                this.f9919f = iArr2;
                                            }
                                            codedInputByteBufferNano.popLimit(pushLimit);
                                        }
                                    } else {
                                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 48);
                                        int[] iArr3 = new int[repeatedFieldArrayLength];
                                        int i11 = 0;
                                        for (int i12 = 0; i12 < repeatedFieldArrayLength; i12++) {
                                            if (i12 != 0) {
                                                codedInputByteBufferNano.readTag();
                                            }
                                            int readInt323 = codedInputByteBufferNano.readInt32();
                                            if (readInt323 == 1 || readInt323 == 2) {
                                                iArr3[i11] = readInt323;
                                                i11++;
                                            }
                                        }
                                        if (i11 != 0) {
                                            int[] iArr4 = this.f9919f;
                                            if (iArr4 == null) {
                                                length2 = 0;
                                            } else {
                                                length2 = iArr4.length;
                                            }
                                            if (length2 == 0 && i11 == repeatedFieldArrayLength) {
                                                this.f9919f = iArr3;
                                            } else {
                                                int[] iArr5 = new int[length2 + i11];
                                                if (length2 != 0) {
                                                    System.arraycopy(iArr4, 0, iArr5, 0, length2);
                                                }
                                                System.arraycopy(iArr3, 0, iArr5, length2, i11);
                                                this.f9919f = iArr5;
                                            }
                                        }
                                    }
                                } else {
                                    this.f9918e = codedInputByteBufferNano.readUInt64();
                                }
                            } else {
                                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 34);
                                C0121a[] c0121aArr = this.f9917d;
                                if (c0121aArr == null) {
                                    length3 = 0;
                                } else {
                                    length3 = c0121aArr.length;
                                }
                                int i13 = repeatedFieldArrayLength2 + length3;
                                C0121a[] c0121aArr2 = new C0121a[i13];
                                if (length3 != 0) {
                                    System.arraycopy(c0121aArr, 0, c0121aArr2, 0, length3);
                                }
                                while (length3 < i13 - 1) {
                                    C0121a c0121a = new C0121a();
                                    c0121aArr2[length3] = c0121a;
                                    codedInputByteBufferNano.readMessage(c0121a);
                                    codedInputByteBufferNano.readTag();
                                    length3++;
                                }
                                C0121a c0121a2 = new C0121a();
                                c0121aArr2[length3] = c0121a2;
                                codedInputByteBufferNano.readMessage(c0121a2);
                                this.f9917d = c0121aArr2;
                            }
                        } else {
                            this.f9916c = codedInputByteBufferNano.readString();
                        }
                    } else {
                        this.f9915b = codedInputByteBufferNano.readString();
                    }
                } else {
                    this.f9914a = codedInputByteBufferNano.readString();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeString(1, this.f9914a);
            codedOutputByteBufferNano.writeString(2, this.f9915b);
            codedOutputByteBufferNano.writeString(3, this.f9916c);
            C0121a[] c0121aArr = this.f9917d;
            int i10 = 0;
            if (c0121aArr != null && c0121aArr.length > 0) {
                int i11 = 0;
                while (true) {
                    C0121a[] c0121aArr2 = this.f9917d;
                    if (i11 >= c0121aArr2.length) {
                        break;
                    }
                    C0121a c0121a = c0121aArr2[i11];
                    if (c0121a != null) {
                        codedOutputByteBufferNano.writeMessage(4, c0121a);
                    }
                    i11++;
                }
            }
            codedOutputByteBufferNano.writeUInt64(5, this.f9918e);
            int[] iArr = this.f9919f;
            if (iArr != null && iArr.length > 0) {
                while (true) {
                    int[] iArr2 = this.f9919f;
                    if (i10 >= iArr2.length) {
                        break;
                    }
                    codedOutputByteBufferNano.writeInt32(6, iArr2[i10]);
                    i10++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public Df() {
        a();
    }

    public Df a() {
        this.f9911a = a.b();
        this.f9912b = WireFormatNano.EMPTY_STRING_ARRAY;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        a[] aVarArr = this.f9911a;
        int i10 = 0;
        if (aVarArr != null && aVarArr.length > 0) {
            int i11 = 0;
            while (true) {
                a[] aVarArr2 = this.f9911a;
                if (i11 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i11];
                if (aVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, aVar);
                }
                i11++;
            }
        }
        String[] strArr = this.f9912b;
        if (strArr != null && strArr.length > 0) {
            int i12 = 0;
            int i13 = 0;
            while (true) {
                String[] strArr2 = this.f9912b;
                if (i10 < strArr2.length) {
                    String str = strArr2[i10];
                    if (str != null) {
                        i13++;
                        i12 += CodedOutputByteBufferNano.computeStringSizeNoTag(str);
                    }
                    i10++;
                } else {
                    return computeSerializedSize + i12 + (i13 * 1);
                }
            }
        } else {
            return computeSerializedSize;
        }
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        int length;
        int length2;
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                break;
            } else if (readTag != 10) {
                if (readTag != 18) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                    String[] strArr = this.f9912b;
                    if (strArr == null) {
                        length = 0;
                    } else {
                        length = strArr.length;
                    }
                    int i10 = repeatedFieldArrayLength + length;
                    String[] strArr2 = new String[i10];
                    if (length != 0) {
                        System.arraycopy(strArr, 0, strArr2, 0, length);
                    }
                    while (length < i10 - 1) {
                        strArr2[length] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    strArr2[length] = codedInputByteBufferNano.readString();
                    this.f9912b = strArr2;
                }
            } else {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                a[] aVarArr = this.f9911a;
                if (aVarArr == null) {
                    length2 = 0;
                } else {
                    length2 = aVarArr.length;
                }
                int i11 = repeatedFieldArrayLength2 + length2;
                a[] aVarArr2 = new a[i11];
                if (length2 != 0) {
                    System.arraycopy(aVarArr, 0, aVarArr2, 0, length2);
                }
                while (length2 < i11 - 1) {
                    a aVar = new a();
                    aVarArr2[length2] = aVar;
                    codedInputByteBufferNano.readMessage(aVar);
                    codedInputByteBufferNano.readTag();
                    length2++;
                }
                a aVar2 = new a();
                aVarArr2[length2] = aVar2;
                codedInputByteBufferNano.readMessage(aVar2);
                this.f9911a = aVarArr2;
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        a[] aVarArr = this.f9911a;
        int i10 = 0;
        if (aVarArr != null && aVarArr.length > 0) {
            int i11 = 0;
            while (true) {
                a[] aVarArr2 = this.f9911a;
                if (i11 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i11];
                if (aVar != null) {
                    codedOutputByteBufferNano.writeMessage(1, aVar);
                }
                i11++;
            }
        }
        String[] strArr = this.f9912b;
        if (strArr != null && strArr.length > 0) {
            while (true) {
                String[] strArr2 = this.f9912b;
                if (i10 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i10];
                if (str != null) {
                    codedOutputByteBufferNano.writeString(2, str);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
