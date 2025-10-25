package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
/* loaded from: classes2.dex */
public final class Bf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public a[] f9789a;

    /* loaded from: classes2.dex */
    public static final class a extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile a[] f9790c;

        /* renamed from: a  reason: collision with root package name */
        public String f9791a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f9792b;

        public a() {
            a();
        }

        public static a[] b() {
            if (f9790c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f9790c == null) {
                        f9790c = new a[0];
                    }
                }
            }
            return f9790c;
        }

        public a a() {
            this.f9791a = "";
            this.f9792b = false;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f9791a) + CodedOutputByteBufferNano.computeBoolSize(2, this.f9792b);
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
                        this.f9792b = codedInputByteBufferNano.readBool();
                    }
                } else {
                    this.f9791a = codedInputByteBufferNano.readString();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeString(1, this.f9791a);
            codedOutputByteBufferNano.writeBool(2, this.f9792b);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public Bf() {
        a();
    }

    public Bf a() {
        this.f9789a = a.b();
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        a[] aVarArr = this.f9789a;
        if (aVarArr != null && aVarArr.length > 0) {
            int i10 = 0;
            while (true) {
                a[] aVarArr2 = this.f9789a;
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
                a[] aVarArr = this.f9789a;
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
                this.f9789a = aVarArr2;
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        a[] aVarArr = this.f9789a;
        if (aVarArr != null && aVarArr.length > 0) {
            int i10 = 0;
            while (true) {
                a[] aVarArr2 = this.f9789a;
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
