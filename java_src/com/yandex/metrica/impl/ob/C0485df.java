package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
/* renamed from: com.yandex.metrica.impl.ob.df  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0485df extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public C0659kf f12214a;

    /* renamed from: b  reason: collision with root package name */
    public C0659kf[] f12215b;

    /* renamed from: c  reason: collision with root package name */
    public String f12216c;

    public C0485df() {
        a();
    }

    public C0485df a() {
        this.f12214a = null;
        this.f12215b = C0659kf.b();
        this.f12216c = "";
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C0659kf c0659kf = this.f12214a;
        if (c0659kf != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c0659kf);
        }
        C0659kf[] c0659kfArr = this.f12215b;
        if (c0659kfArr != null && c0659kfArr.length > 0) {
            int i10 = 0;
            while (true) {
                C0659kf[] c0659kfArr2 = this.f12215b;
                if (i10 >= c0659kfArr2.length) {
                    break;
                }
                C0659kf c0659kf2 = c0659kfArr2[i10];
                if (c0659kf2 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c0659kf2);
                }
                i10++;
            }
        }
        if (!this.f12216c.equals("")) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(3, this.f12216c);
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
                    if (readTag != 26) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        this.f12216c = codedInputByteBufferNano.readString();
                    }
                } else {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                    C0659kf[] c0659kfArr = this.f12215b;
                    if (c0659kfArr == null) {
                        length = 0;
                    } else {
                        length = c0659kfArr.length;
                    }
                    int i10 = repeatedFieldArrayLength + length;
                    C0659kf[] c0659kfArr2 = new C0659kf[i10];
                    if (length != 0) {
                        System.arraycopy(c0659kfArr, 0, c0659kfArr2, 0, length);
                    }
                    while (length < i10 - 1) {
                        C0659kf c0659kf = new C0659kf();
                        c0659kfArr2[length] = c0659kf;
                        codedInputByteBufferNano.readMessage(c0659kf);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    C0659kf c0659kf2 = new C0659kf();
                    c0659kfArr2[length] = c0659kf2;
                    codedInputByteBufferNano.readMessage(c0659kf2);
                    this.f12215b = c0659kfArr2;
                }
            } else {
                if (this.f12214a == null) {
                    this.f12214a = new C0659kf();
                }
                codedInputByteBufferNano.readMessage(this.f12214a);
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C0659kf c0659kf = this.f12214a;
        if (c0659kf != null) {
            codedOutputByteBufferNano.writeMessage(1, c0659kf);
        }
        C0659kf[] c0659kfArr = this.f12215b;
        if (c0659kfArr != null && c0659kfArr.length > 0) {
            int i10 = 0;
            while (true) {
                C0659kf[] c0659kfArr2 = this.f12215b;
                if (i10 >= c0659kfArr2.length) {
                    break;
                }
                C0659kf c0659kf2 = c0659kfArr2[i10];
                if (c0659kf2 != null) {
                    codedOutputByteBufferNano.writeMessage(2, c0659kf2);
                }
                i10++;
            }
        }
        if (!this.f12216c.equals("")) {
            codedOutputByteBufferNano.writeString(3, this.f12216c);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
