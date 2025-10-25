package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
/* loaded from: classes2.dex */
public final class Ef extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public a f9990a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f9991b;

    /* loaded from: classes2.dex */
    public static final class a extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public C0122a[] f9992a;

        /* renamed from: com.yandex.metrica.impl.ob.Ef$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0122a extends MessageNano {

            /* renamed from: c  reason: collision with root package name */
            private static volatile C0122a[] f9993c;

            /* renamed from: a  reason: collision with root package name */
            public String f9994a;

            /* renamed from: b  reason: collision with root package name */
            public String f9995b;

            public C0122a() {
                a();
            }

            public static C0122a[] b() {
                if (f9993c == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (f9993c == null) {
                            f9993c = new C0122a[0];
                        }
                    }
                }
                return f9993c;
            }

            public C0122a a() {
                this.f9994a = "";
                this.f9995b = "";
                this.cachedSize = -1;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.nano.ym.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f9994a);
                if (!this.f9995b.equals("")) {
                    return computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(2, this.f9995b);
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
                            this.f9995b = codedInputByteBufferNano.readString();
                        }
                    } else {
                        this.f9994a = codedInputByteBufferNano.readString();
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
                codedOutputByteBufferNano.writeString(1, this.f9994a);
                if (!this.f9995b.equals("")) {
                    codedOutputByteBufferNano.writeString(2, this.f9995b);
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        public a() {
            a();
        }

        public a a() {
            this.f9992a = C0122a.b();
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            C0122a[] c0122aArr = this.f9992a;
            if (c0122aArr != null && c0122aArr.length > 0) {
                int i10 = 0;
                while (true) {
                    C0122a[] c0122aArr2 = this.f9992a;
                    if (i10 >= c0122aArr2.length) {
                        break;
                    }
                    C0122a c0122a = c0122aArr2[i10];
                    if (c0122a != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c0122a);
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
                    C0122a[] c0122aArr = this.f9992a;
                    if (c0122aArr == null) {
                        length = 0;
                    } else {
                        length = c0122aArr.length;
                    }
                    int i10 = repeatedFieldArrayLength + length;
                    C0122a[] c0122aArr2 = new C0122a[i10];
                    if (length != 0) {
                        System.arraycopy(c0122aArr, 0, c0122aArr2, 0, length);
                    }
                    while (length < i10 - 1) {
                        C0122a c0122a = new C0122a();
                        c0122aArr2[length] = c0122a;
                        codedInputByteBufferNano.readMessage(c0122a);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    C0122a c0122a2 = new C0122a();
                    c0122aArr2[length] = c0122a2;
                    codedInputByteBufferNano.readMessage(c0122a2);
                    this.f9992a = c0122aArr2;
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            C0122a[] c0122aArr = this.f9992a;
            if (c0122aArr != null && c0122aArr.length > 0) {
                int i10 = 0;
                while (true) {
                    C0122a[] c0122aArr2 = this.f9992a;
                    if (i10 >= c0122aArr2.length) {
                        break;
                    }
                    C0122a c0122a = c0122aArr2[i10];
                    if (c0122a != null) {
                        codedOutputByteBufferNano.writeMessage(1, c0122a);
                    }
                    i10++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public Ef() {
        a();
    }

    public Ef a() {
        this.f9990a = null;
        this.f9991b = false;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        a aVar = this.f9990a;
        if (aVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, aVar);
        }
        boolean z10 = this.f9991b;
        if (z10) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(2, z10);
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
                    this.f9991b = codedInputByteBufferNano.readBool();
                }
            } else {
                if (this.f9990a == null) {
                    this.f9990a = new a();
                }
                codedInputByteBufferNano.readMessage(this.f9990a);
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        a aVar = this.f9990a;
        if (aVar != null) {
            codedOutputByteBufferNano.writeMessage(1, aVar);
        }
        boolean z10 = this.f9991b;
        if (z10) {
            codedOutputByteBufferNano.writeBool(2, z10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
