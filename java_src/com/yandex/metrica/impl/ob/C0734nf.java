package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.nf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0734nf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f12984a;

    public C0734nf() {
        a();
    }

    public C0734nf a() {
        this.f12984a = WireFormatNano.EMPTY_BYTES;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!Arrays.equals(this.f12984a, WireFormatNano.EMPTY_BYTES)) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(1, this.f12984a);
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
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    break;
                }
            } else {
                this.f12984a = codedInputByteBufferNano.readBytes();
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!Arrays.equals(this.f12984a, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(1, this.f12984a);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
