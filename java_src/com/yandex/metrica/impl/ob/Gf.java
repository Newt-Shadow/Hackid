package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
/* loaded from: classes2.dex */
public final class Gf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public Hf[] f10129a;

    public Gf() {
        a();
    }

    public Gf a() {
        this.f10129a = Hf.b();
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        Hf[] hfArr = this.f10129a;
        if (hfArr != null && hfArr.length > 0) {
            int i10 = 0;
            while (true) {
                Hf[] hfArr2 = this.f10129a;
                if (i10 >= hfArr2.length) {
                    break;
                }
                Hf hf2 = hfArr2[i10];
                if (hf2 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, hf2);
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
                Hf[] hfArr = this.f10129a;
                if (hfArr == null) {
                    length = 0;
                } else {
                    length = hfArr.length;
                }
                int i10 = repeatedFieldArrayLength + length;
                Hf[] hfArr2 = new Hf[i10];
                if (length != 0) {
                    System.arraycopy(hfArr, 0, hfArr2, 0, length);
                }
                while (length < i10 - 1) {
                    Hf hf2 = new Hf();
                    hfArr2[length] = hf2;
                    codedInputByteBufferNano.readMessage(hf2);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                Hf hf3 = new Hf();
                hfArr2[length] = hf3;
                codedInputByteBufferNano.readMessage(hf3);
                this.f10129a = hfArr2;
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        Hf[] hfArr = this.f10129a;
        if (hfArr != null && hfArr.length > 0) {
            int i10 = 0;
            while (true) {
                Hf[] hfArr2 = this.f10129a;
                if (i10 >= hfArr2.length) {
                    break;
                }
                Hf hf2 = hfArr2[i10];
                if (hf2 != null) {
                    codedOutputByteBufferNano.writeMessage(1, hf2);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
