package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
/* loaded from: classes2.dex */
public final class Cf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public a f9844a;

    /* renamed from: b  reason: collision with root package name */
    public b[] f9845b;

    /* loaded from: classes2.dex */
    public static final class a extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public String f9846a;

        /* renamed from: b  reason: collision with root package name */
        public String f9847b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f9848c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f9849d;

        /* renamed from: e  reason: collision with root package name */
        public int f9850e;

        public a() {
            a();
        }

        public a a() {
            this.f9846a = "";
            this.f9847b = "";
            this.f9848c = false;
            this.f9849d = false;
            this.f9850e = 0;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!this.f9846a.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f9846a);
            }
            if (!this.f9847b.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f9847b);
            }
            boolean z10 = this.f9848c;
            if (z10) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(3, z10);
            }
            boolean z11 = this.f9849d;
            if (z11) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(4, z11);
            }
            return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(5, this.f9850e);
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
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
                                    int readInt32 = codedInputByteBufferNano.readInt32();
                                    if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                                        this.f9850e = readInt32;
                                    }
                                }
                            } else {
                                this.f9849d = codedInputByteBufferNano.readBool();
                            }
                        } else {
                            this.f9848c = codedInputByteBufferNano.readBool();
                        }
                    } else {
                        this.f9847b = codedInputByteBufferNano.readString();
                    }
                } else {
                    this.f9846a = codedInputByteBufferNano.readString();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            if (!this.f9846a.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.f9846a);
            }
            if (!this.f9847b.equals("")) {
                codedOutputByteBufferNano.writeString(2, this.f9847b);
            }
            boolean z10 = this.f9848c;
            if (z10) {
                codedOutputByteBufferNano.writeBool(3, z10);
            }
            boolean z11 = this.f9849d;
            if (z11) {
                codedOutputByteBufferNano.writeBool(4, z11);
            }
            codedOutputByteBufferNano.writeInt32(5, this.f9850e);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends MessageNano {

        /* renamed from: d  reason: collision with root package name */
        private static volatile b[] f9851d;

        /* renamed from: a  reason: collision with root package name */
        public String f9852a;

        /* renamed from: b  reason: collision with root package name */
        public String f9853b;

        /* renamed from: c  reason: collision with root package name */
        public int f9854c;

        public b() {
            a();
        }

        public static b[] b() {
            if (f9851d == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f9851d == null) {
                        f9851d = new b[0];
                    }
                }
            }
            return f9851d;
        }

        public b a() {
            this.f9852a = "";
            this.f9853b = "";
            this.f9854c = 0;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!this.f9852a.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f9852a);
            }
            if (!this.f9853b.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f9853b);
            }
            return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, this.f9854c);
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag != 10) {
                    if (readTag != 18) {
                        if (readTag != 24) {
                            if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                break;
                            }
                        } else {
                            int readInt32 = codedInputByteBufferNano.readInt32();
                            if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                                this.f9854c = readInt32;
                            }
                        }
                    } else {
                        this.f9853b = codedInputByteBufferNano.readString();
                    }
                } else {
                    this.f9852a = codedInputByteBufferNano.readString();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            if (!this.f9852a.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.f9852a);
            }
            if (!this.f9853b.equals("")) {
                codedOutputByteBufferNano.writeString(2, this.f9853b);
            }
            codedOutputByteBufferNano.writeInt32(3, this.f9854c);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public Cf() {
        a();
    }

    public Cf a() {
        this.f9844a = null;
        this.f9845b = b.b();
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        a aVar = this.f9844a;
        if (aVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, aVar);
        }
        b[] bVarArr = this.f9845b;
        if (bVarArr != null && bVarArr.length > 0) {
            int i10 = 0;
            while (true) {
                b[] bVarArr2 = this.f9845b;
                if (i10 >= bVarArr2.length) {
                    break;
                }
                b bVar = bVarArr2[i10];
                if (bVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, bVar);
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
                    b[] bVarArr = this.f9845b;
                    if (bVarArr == null) {
                        length = 0;
                    } else {
                        length = bVarArr.length;
                    }
                    int i10 = repeatedFieldArrayLength + length;
                    b[] bVarArr2 = new b[i10];
                    if (length != 0) {
                        System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                    }
                    while (length < i10 - 1) {
                        b bVar = new b();
                        bVarArr2[length] = bVar;
                        codedInputByteBufferNano.readMessage(bVar);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    b bVar2 = new b();
                    bVarArr2[length] = bVar2;
                    codedInputByteBufferNano.readMessage(bVar2);
                    this.f9845b = bVarArr2;
                }
            } else {
                if (this.f9844a == null) {
                    this.f9844a = new a();
                }
                codedInputByteBufferNano.readMessage(this.f9844a);
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        a aVar = this.f9844a;
        if (aVar != null) {
            codedOutputByteBufferNano.writeMessage(1, aVar);
        }
        b[] bVarArr = this.f9845b;
        if (bVarArr != null && bVarArr.length > 0) {
            int i10 = 0;
            while (true) {
                b[] bVarArr2 = this.f9845b;
                if (i10 >= bVarArr2.length) {
                    break;
                }
                b bVar = bVarArr2[i10];
                if (bVar != null) {
                    codedOutputByteBufferNano.writeMessage(2, bVar);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
