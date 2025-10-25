package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
/* loaded from: classes2.dex */
public final class Ff extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public a[] f10084a;

    /* renamed from: b  reason: collision with root package name */
    public String f10085b;

    /* renamed from: c  reason: collision with root package name */
    public long f10086c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f10087d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f10088e;

    /* loaded from: classes2.dex */
    public static final class a extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile a[] f10089c;

        /* renamed from: a  reason: collision with root package name */
        public String f10090a;

        /* renamed from: b  reason: collision with root package name */
        public String[] f10091b;

        public a() {
            a();
        }

        public static a[] b() {
            if (f10089c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f10089c == null) {
                        f10089c = new a[0];
                    }
                }
            }
            return f10089c;
        }

        public a a() {
            this.f10090a = "";
            this.f10091b = WireFormatNano.EMPTY_STRING_ARRAY;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f10090a);
            String[] strArr = this.f10091b;
            if (strArr != null && strArr.length > 0) {
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    String[] strArr2 = this.f10091b;
                    if (i10 < strArr2.length) {
                        String str = strArr2[i10];
                        if (str != null) {
                            i12++;
                            i11 += CodedOutputByteBufferNano.computeStringSizeNoTag(str);
                        }
                        i10++;
                    } else {
                        return computeSerializedSize + i11 + (i12 * 1);
                    }
                }
            } else {
                return computeSerializedSize;
            }
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            int length;
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
                        String[] strArr = this.f10091b;
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
                        this.f10091b = strArr2;
                    }
                } else {
                    this.f10090a = codedInputByteBufferNano.readString();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeString(1, this.f10090a);
            String[] strArr = this.f10091b;
            if (strArr != null && strArr.length > 0) {
                int i10 = 0;
                while (true) {
                    String[] strArr2 = this.f10091b;
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

    public Ff() {
        a();
    }

    public Ff a() {
        this.f10084a = a.b();
        this.f10085b = "";
        this.f10086c = 0L;
        this.f10087d = false;
        this.f10088e = false;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        a[] aVarArr = this.f10084a;
        if (aVarArr != null && aVarArr.length > 0) {
            int i10 = 0;
            while (true) {
                a[] aVarArr2 = this.f10084a;
                if (i10 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i10];
                if (aVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, aVar);
                }
                i10++;
            }
        }
        return computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(2, this.f10085b) + CodedOutputByteBufferNano.computeInt64Size(3, this.f10086c) + CodedOutputByteBufferNano.computeBoolSize(4, this.f10087d) + CodedOutputByteBufferNano.computeBoolSize(5, this.f10088e);
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        int length;
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                break;
            } else if (readTag != 10) {
                if (readTag != 18) {
                    if (readTag != 24) {
                        if (readTag != 32) {
                            if (readTag != 40) {
                                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                    break;
                                }
                            } else {
                                this.f10088e = codedInputByteBufferNano.readBool();
                            }
                        } else {
                            this.f10087d = codedInputByteBufferNano.readBool();
                        }
                    } else {
                        this.f10086c = codedInputByteBufferNano.readInt64();
                    }
                } else {
                    this.f10085b = codedInputByteBufferNano.readString();
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                a[] aVarArr = this.f10084a;
                if (aVarArr == null) {
                    length = 0;
                } else {
                    length = aVarArr.length;
                }
                int i10 = repeatedFieldArrayLength + length;
                a[] aVarArr2 = new a[i10];
                if (length != 0) {
                    System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                }
                while (length < i10 - 1) {
                    a aVar = new a();
                    aVarArr2[length] = aVar;
                    codedInputByteBufferNano.readMessage(aVar);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                a aVar2 = new a();
                aVarArr2[length] = aVar2;
                codedInputByteBufferNano.readMessage(aVar2);
                this.f10084a = aVarArr2;
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        a[] aVarArr = this.f10084a;
        if (aVarArr != null && aVarArr.length > 0) {
            int i10 = 0;
            while (true) {
                a[] aVarArr2 = this.f10084a;
                if (i10 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i10];
                if (aVar != null) {
                    codedOutputByteBufferNano.writeMessage(1, aVar);
                }
                i10++;
            }
        }
        codedOutputByteBufferNano.writeString(2, this.f10085b);
        codedOutputByteBufferNano.writeInt64(3, this.f10086c);
        codedOutputByteBufferNano.writeBool(4, this.f10087d);
        codedOutputByteBufferNano.writeBool(5, this.f10088e);
        super.writeTo(codedOutputByteBufferNano);
    }
}
