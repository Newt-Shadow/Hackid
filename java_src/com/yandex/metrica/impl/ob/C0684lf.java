package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
/* renamed from: com.yandex.metrica.impl.ob.lf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0684lf extends MessageNano {

    /* renamed from: f  reason: collision with root package name */
    private static volatile C0684lf[] f12802f;

    /* renamed from: a  reason: collision with root package name */
    public String f12803a;

    /* renamed from: b  reason: collision with root package name */
    public String f12804b;

    /* renamed from: c  reason: collision with root package name */
    public C0634jf[] f12805c;

    /* renamed from: d  reason: collision with root package name */
    public C0684lf f12806d;

    /* renamed from: e  reason: collision with root package name */
    public C0684lf[] f12807e;

    public C0684lf() {
        a();
    }

    public C0684lf a() {
        this.f12803a = "";
        this.f12804b = "";
        this.f12805c = C0634jf.b();
        this.f12806d = null;
        if (f12802f == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f12802f == null) {
                    f12802f = new C0684lf[0];
                }
            }
        }
        this.f12807e = f12802f;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f12803a);
        if (!this.f12804b.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f12804b);
        }
        C0634jf[] c0634jfArr = this.f12805c;
        int i10 = 0;
        if (c0634jfArr != null && c0634jfArr.length > 0) {
            int i11 = 0;
            while (true) {
                C0634jf[] c0634jfArr2 = this.f12805c;
                if (i11 >= c0634jfArr2.length) {
                    break;
                }
                C0634jf c0634jf = c0634jfArr2[i11];
                if (c0634jf != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, c0634jf);
                }
                i11++;
            }
        }
        C0684lf c0684lf = this.f12806d;
        if (c0684lf != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, c0684lf);
        }
        C0684lf[] c0684lfArr = this.f12807e;
        if (c0684lfArr != null && c0684lfArr.length > 0) {
            while (true) {
                C0684lf[] c0684lfArr2 = this.f12807e;
                if (i10 >= c0684lfArr2.length) {
                    break;
                }
                C0684lf c0684lf2 = c0684lfArr2[i10];
                if (c0684lf2 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, c0684lf2);
                }
                i10++;
            }
        }
        return computeSerializedSize;
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
                        if (readTag != 34) {
                            if (readTag != 42) {
                                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                    break;
                                }
                            } else {
                                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 42);
                                C0684lf[] c0684lfArr = this.f12807e;
                                if (c0684lfArr == null) {
                                    length = 0;
                                } else {
                                    length = c0684lfArr.length;
                                }
                                int i10 = repeatedFieldArrayLength + length;
                                C0684lf[] c0684lfArr2 = new C0684lf[i10];
                                if (length != 0) {
                                    System.arraycopy(c0684lfArr, 0, c0684lfArr2, 0, length);
                                }
                                while (length < i10 - 1) {
                                    C0684lf c0684lf = new C0684lf();
                                    c0684lfArr2[length] = c0684lf;
                                    codedInputByteBufferNano.readMessage(c0684lf);
                                    codedInputByteBufferNano.readTag();
                                    length++;
                                }
                                C0684lf c0684lf2 = new C0684lf();
                                c0684lfArr2[length] = c0684lf2;
                                codedInputByteBufferNano.readMessage(c0684lf2);
                                this.f12807e = c0684lfArr2;
                            }
                        } else {
                            if (this.f12806d == null) {
                                this.f12806d = new C0684lf();
                            }
                            codedInputByteBufferNano.readMessage(this.f12806d);
                        }
                    } else {
                        int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                        C0634jf[] c0634jfArr = this.f12805c;
                        if (c0634jfArr == null) {
                            length2 = 0;
                        } else {
                            length2 = c0634jfArr.length;
                        }
                        int i11 = repeatedFieldArrayLength2 + length2;
                        C0634jf[] c0634jfArr2 = new C0634jf[i11];
                        if (length2 != 0) {
                            System.arraycopy(c0634jfArr, 0, c0634jfArr2, 0, length2);
                        }
                        while (length2 < i11 - 1) {
                            C0634jf c0634jf = new C0634jf();
                            c0634jfArr2[length2] = c0634jf;
                            codedInputByteBufferNano.readMessage(c0634jf);
                            codedInputByteBufferNano.readTag();
                            length2++;
                        }
                        C0634jf c0634jf2 = new C0634jf();
                        c0634jfArr2[length2] = c0634jf2;
                        codedInputByteBufferNano.readMessage(c0634jf2);
                        this.f12805c = c0634jfArr2;
                    }
                } else {
                    this.f12804b = codedInputByteBufferNano.readString();
                }
            } else {
                this.f12803a = codedInputByteBufferNano.readString();
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeString(1, this.f12803a);
        if (!this.f12804b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.f12804b);
        }
        C0634jf[] c0634jfArr = this.f12805c;
        int i10 = 0;
        if (c0634jfArr != null && c0634jfArr.length > 0) {
            int i11 = 0;
            while (true) {
                C0634jf[] c0634jfArr2 = this.f12805c;
                if (i11 >= c0634jfArr2.length) {
                    break;
                }
                C0634jf c0634jf = c0634jfArr2[i11];
                if (c0634jf != null) {
                    codedOutputByteBufferNano.writeMessage(3, c0634jf);
                }
                i11++;
            }
        }
        C0684lf c0684lf = this.f12806d;
        if (c0684lf != null) {
            codedOutputByteBufferNano.writeMessage(4, c0684lf);
        }
        C0684lf[] c0684lfArr = this.f12807e;
        if (c0684lfArr != null && c0684lfArr.length > 0) {
            while (true) {
                C0684lf[] c0684lfArr2 = this.f12807e;
                if (i10 >= c0684lfArr2.length) {
                    break;
                }
                C0684lf c0684lf2 = c0684lfArr2[i10];
                if (c0684lf2 != null) {
                    codedOutputByteBufferNano.writeMessage(5, c0684lf2);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
