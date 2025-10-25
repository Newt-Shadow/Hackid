package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
/* renamed from: com.yandex.metrica.impl.ob.yf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0999yf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public a f14002a;

    /* renamed from: b  reason: collision with root package name */
    public a[] f14003b;

    /* renamed from: com.yandex.metrica.impl.ob.yf$a */
    /* loaded from: classes2.dex */
    public static final class a extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile a[] f14004c;

        /* renamed from: a  reason: collision with root package name */
        public b f14005a;

        /* renamed from: b  reason: collision with root package name */
        public int f14006b;

        public a() {
            a();
        }

        public static a[] b() {
            if (f14004c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f14004c == null) {
                        f14004c = new a[0];
                    }
                }
            }
            return f14004c;
        }

        public a a() {
            this.f14005a = null;
            this.f14006b = 0;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            b bVar = this.f14005a;
            if (bVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, bVar);
            }
            int i10 = this.f14006b;
            if (i10 != 0) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i10);
            }
            return computeSerializedSize;
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
                        int readInt32 = codedInputByteBufferNano.readInt32();
                        if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                            this.f14006b = readInt32;
                        }
                    }
                } else {
                    if (this.f14005a == null) {
                        this.f14005a = new b();
                    }
                    codedInputByteBufferNano.readMessage(this.f14005a);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            b bVar = this.f14005a;
            if (bVar != null) {
                codedOutputByteBufferNano.writeMessage(1, bVar);
            }
            int i10 = this.f14006b;
            if (i10 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i10);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.yf$b */
    /* loaded from: classes2.dex */
    public static final class b extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public a[] f14007a;

        /* renamed from: com.yandex.metrica.impl.ob.yf$b$a */
        /* loaded from: classes2.dex */
        public static final class a extends MessageNano {

            /* renamed from: c  reason: collision with root package name */
            private static volatile a[] f14008c;

            /* renamed from: a  reason: collision with root package name */
            public String f14009a;

            /* renamed from: b  reason: collision with root package name */
            public String f14010b;

            public a() {
                a();
            }

            public static a[] b() {
                if (f14008c == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (f14008c == null) {
                            f14008c = new a[0];
                        }
                    }
                }
                return f14008c;
            }

            public a a() {
                this.f14009a = "";
                this.f14010b = "";
                this.cachedSize = -1;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.nano.ym.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                if (!this.f14009a.equals("")) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f14009a);
                }
                if (!this.f14010b.equals("")) {
                    return computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(2, this.f14010b);
                }
                return computeSerializedSize;
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
                            this.f14010b = codedInputByteBufferNano.readString();
                        }
                    } else {
                        this.f14009a = codedInputByteBufferNano.readString();
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
                if (!this.f14009a.equals("")) {
                    codedOutputByteBufferNano.writeString(1, this.f14009a);
                }
                if (!this.f14010b.equals("")) {
                    codedOutputByteBufferNano.writeString(2, this.f14010b);
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        public b() {
            a();
        }

        public b a() {
            this.f14007a = a.b();
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            a[] aVarArr = this.f14007a;
            if (aVarArr != null && aVarArr.length > 0) {
                int i10 = 0;
                while (true) {
                    a[] aVarArr2 = this.f14007a;
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
            return computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            int length;
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag != 10) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                    a[] aVarArr = this.f14007a;
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
                    this.f14007a = aVarArr2;
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            a[] aVarArr = this.f14007a;
            if (aVarArr != null && aVarArr.length > 0) {
                int i10 = 0;
                while (true) {
                    a[] aVarArr2 = this.f14007a;
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
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C0999yf() {
        a();
    }

    public C0999yf a() {
        this.f14002a = null;
        this.f14003b = a.b();
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        a aVar = this.f14002a;
        if (aVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, aVar);
        }
        a[] aVarArr = this.f14003b;
        if (aVarArr != null && aVarArr.length > 0) {
            int i10 = 0;
            while (true) {
                a[] aVarArr2 = this.f14003b;
                if (i10 >= aVarArr2.length) {
                    break;
                }
                a aVar2 = aVarArr2[i10];
                if (aVar2 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, aVar2);
                }
                i10++;
            }
        }
        return computeSerializedSize;
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
                    a[] aVarArr = this.f14003b;
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
                    this.f14003b = aVarArr2;
                }
            } else {
                if (this.f14002a == null) {
                    this.f14002a = new a();
                }
                codedInputByteBufferNano.readMessage(this.f14002a);
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        a aVar = this.f14002a;
        if (aVar != null) {
            codedOutputByteBufferNano.writeMessage(1, aVar);
        }
        a[] aVarArr = this.f14003b;
        if (aVarArr != null && aVarArr.length > 0) {
            int i10 = 0;
            while (true) {
                a[] aVarArr2 = this.f14003b;
                if (i10 >= aVarArr2.length) {
                    break;
                }
                a aVar2 = aVarArr2[i10];
                if (aVar2 != null) {
                    codedOutputByteBufferNano.writeMessage(2, aVar2);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
