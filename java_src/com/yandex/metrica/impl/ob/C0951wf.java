package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
/* renamed from: com.yandex.metrica.impl.ob.wf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0951wf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public b[] f13879a;

    /* renamed from: b  reason: collision with root package name */
    public a f13880b;

    /* renamed from: c  reason: collision with root package name */
    public String[] f13881c;

    /* renamed from: com.yandex.metrica.impl.ob.wf$a */
    /* loaded from: classes2.dex */
    public static final class a extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public int f13882a;

        /* renamed from: b  reason: collision with root package name */
        public int f13883b;

        public a() {
            a();
        }

        public a a() {
            this.f13882a = 0;
            this.f13883b = -1;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt32Size(2, this.f13882a) + CodedOutputByteBufferNano.computeInt32Size(3, this.f13883b);
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag != 16) {
                    if (readTag != 24) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        int readInt32 = codedInputByteBufferNano.readInt32();
                        if (readInt32 == -1 || readInt32 == 0 || readInt32 == 1) {
                            this.f13883b = readInt32;
                        }
                    }
                } else {
                    int readInt322 = codedInputByteBufferNano.readInt32();
                    if (readInt322 == 0 || readInt322 == 1 || readInt322 == 2 || readInt322 == 3 || readInt322 == 4 || readInt322 == 5) {
                        this.f13882a = readInt322;
                    }
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeInt32(2, this.f13882a);
            codedOutputByteBufferNano.writeInt32(3, this.f13883b);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.wf$b */
    /* loaded from: classes2.dex */
    public static final class b extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile b[] f13884c;

        /* renamed from: a  reason: collision with root package name */
        public String f13885a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f13886b;

        public b() {
            a();
        }

        public static b[] b() {
            if (f13884c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f13884c == null) {
                        f13884c = new b[0];
                    }
                }
            }
            return f13884c;
        }

        public b a() {
            this.f13885a = "";
            this.f13886b = false;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f13885a) + CodedOutputByteBufferNano.computeBoolSize(2, this.f13886b);
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag != 10) {
                    if (readTag != 16) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        this.f13886b = codedInputByteBufferNano.readBool();
                    }
                } else {
                    this.f13885a = codedInputByteBufferNano.readString();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeString(1, this.f13885a);
            codedOutputByteBufferNano.writeBool(2, this.f13886b);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C0951wf() {
        a();
    }

    public C0951wf a() {
        this.f13879a = b.b();
        this.f13880b = null;
        this.f13881c = WireFormatNano.EMPTY_STRING_ARRAY;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        b[] bVarArr = this.f13879a;
        int i10 = 0;
        if (bVarArr != null && bVarArr.length > 0) {
            int i11 = 0;
            while (true) {
                b[] bVarArr2 = this.f13879a;
                if (i11 >= bVarArr2.length) {
                    break;
                }
                b bVar = bVarArr2[i11];
                if (bVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, bVar);
                }
                i11++;
            }
        }
        a aVar = this.f13880b;
        if (aVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, aVar);
        }
        String[] strArr = this.f13881c;
        if (strArr != null && strArr.length > 0) {
            int i12 = 0;
            int i13 = 0;
            while (true) {
                String[] strArr2 = this.f13881c;
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
                    if (readTag != 26) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                        String[] strArr = this.f13881c;
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
                        this.f13881c = strArr2;
                    }
                } else {
                    if (this.f13880b == null) {
                        this.f13880b = new a();
                    }
                    codedInputByteBufferNano.readMessage(this.f13880b);
                }
            } else {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                b[] bVarArr = this.f13879a;
                if (bVarArr == null) {
                    length2 = 0;
                } else {
                    length2 = bVarArr.length;
                }
                int i11 = repeatedFieldArrayLength2 + length2;
                b[] bVarArr2 = new b[i11];
                if (length2 != 0) {
                    System.arraycopy(bVarArr, 0, bVarArr2, 0, length2);
                }
                while (length2 < i11 - 1) {
                    b bVar = new b();
                    bVarArr2[length2] = bVar;
                    codedInputByteBufferNano.readMessage(bVar);
                    codedInputByteBufferNano.readTag();
                    length2++;
                }
                b bVar2 = new b();
                bVarArr2[length2] = bVar2;
                codedInputByteBufferNano.readMessage(bVar2);
                this.f13879a = bVarArr2;
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        b[] bVarArr = this.f13879a;
        int i10 = 0;
        if (bVarArr != null && bVarArr.length > 0) {
            int i11 = 0;
            while (true) {
                b[] bVarArr2 = this.f13879a;
                if (i11 >= bVarArr2.length) {
                    break;
                }
                b bVar = bVarArr2[i11];
                if (bVar != null) {
                    codedOutputByteBufferNano.writeMessage(1, bVar);
                }
                i11++;
            }
        }
        a aVar = this.f13880b;
        if (aVar != null) {
            codedOutputByteBufferNano.writeMessage(2, aVar);
        }
        String[] strArr = this.f13881c;
        if (strArr != null && strArr.length > 0) {
            while (true) {
                String[] strArr2 = this.f13881c;
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
}
