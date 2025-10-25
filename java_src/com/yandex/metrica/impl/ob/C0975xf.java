package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
/* renamed from: com.yandex.metrica.impl.ob.xf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0975xf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public a[] f13946a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f13947b;

    /* renamed from: com.yandex.metrica.impl.ob.xf$a */
    /* loaded from: classes2.dex */
    public static final class a extends MessageNano {

        /* renamed from: f  reason: collision with root package name */
        private static volatile a[] f13948f;

        /* renamed from: a  reason: collision with root package name */
        public int f13949a;

        /* renamed from: b  reason: collision with root package name */
        public String f13950b;

        /* renamed from: c  reason: collision with root package name */
        public String f13951c;

        /* renamed from: d  reason: collision with root package name */
        public long f13952d;

        /* renamed from: e  reason: collision with root package name */
        public long f13953e;

        public a() {
            a();
        }

        public static a[] b() {
            if (f13948f == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f13948f == null) {
                        f13948f = new a[0];
                    }
                }
            }
            return f13948f;
        }

        public a a() {
            this.f13949a = 1;
            this.f13950b = "";
            this.f13951c = "";
            this.f13952d = 0L;
            this.f13953e = 0L;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt32Size(1, this.f13949a) + CodedOutputByteBufferNano.computeStringSize(2, this.f13950b) + CodedOutputByteBufferNano.computeStringSize(3, this.f13951c) + CodedOutputByteBufferNano.computeUInt64Size(4, this.f13952d) + CodedOutputByteBufferNano.computeUInt64Size(5, this.f13953e);
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag != 8) {
                    if (readTag != 18) {
                        if (readTag != 26) {
                            if (readTag != 32) {
                                if (readTag != 40) {
                                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                        break;
                                    }
                                } else {
                                    this.f13953e = codedInputByteBufferNano.readUInt64();
                                }
                            } else {
                                this.f13952d = codedInputByteBufferNano.readUInt64();
                            }
                        } else {
                            this.f13951c = codedInputByteBufferNano.readString();
                        }
                    } else {
                        this.f13950b = codedInputByteBufferNano.readString();
                    }
                } else {
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                        this.f13949a = readInt32;
                    }
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeInt32(1, this.f13949a);
            codedOutputByteBufferNano.writeString(2, this.f13950b);
            codedOutputByteBufferNano.writeString(3, this.f13951c);
            codedOutputByteBufferNano.writeUInt64(4, this.f13952d);
            codedOutputByteBufferNano.writeUInt64(5, this.f13953e);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C0975xf() {
        a();
    }

    public C0975xf a() {
        this.f13946a = a.b();
        this.f13947b = false;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        a[] aVarArr = this.f13946a;
        if (aVarArr != null && aVarArr.length > 0) {
            int i10 = 0;
            while (true) {
                a[] aVarArr2 = this.f13946a;
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
        return computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(2, this.f13947b);
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        int length;
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
                    this.f13947b = codedInputByteBufferNano.readBool();
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                a[] aVarArr = this.f13946a;
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
                this.f13946a = aVarArr2;
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        a[] aVarArr = this.f13946a;
        if (aVarArr != null && aVarArr.length > 0) {
            int i10 = 0;
            while (true) {
                a[] aVarArr2 = this.f13946a;
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
        codedOutputByteBufferNano.writeBool(2, this.f13947b);
        super.writeTo(codedOutputByteBufferNano);
    }
}
