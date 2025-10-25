package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
/* renamed from: com.yandex.metrica.impl.ob.if  reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cif extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public int f12613a;

    /* renamed from: b  reason: collision with root package name */
    public String f12614b;

    public Cif() {
        a();
    }

    public Cif a() {
        this.f12613a = 0;
        this.f12614b = "";
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        int i10 = this.f12613a;
        if (i10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i10);
        }
        if (!this.f12614b.equals("")) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(2, this.f12614b);
        }
        return computeSerializedSize;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                break;
            } else if (readTag != 8) {
                if (readTag != 18) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f12614b = codedInputByteBufferNano.readString();
                }
            } else {
                int readInt32 = codedInputByteBufferNano.readInt32();
                if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                    this.f12613a = readInt32;
                }
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        int i10 = this.f12613a;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeInt32(1, i10);
        }
        if (!this.f12614b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.f12614b);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
