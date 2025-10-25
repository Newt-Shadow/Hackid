package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class Hf extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    private static volatile Hf[] f10204c;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f10205a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f10206b;

    public Hf() {
        a();
    }

    public static Hf[] b() {
        if (f10204c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f10204c == null) {
                    f10204c = new Hf[0];
                }
            }
        }
        return f10204c;
    }

    public Hf a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f10205a = bArr;
        this.f10206b = bArr;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        byte[] bArr = this.f10205a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f10205a);
        }
        if (!Arrays.equals(this.f10206b, bArr2)) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(2, this.f10206b);
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
                    this.f10206b = codedInputByteBufferNano.readBytes();
                }
            } else {
                this.f10205a = codedInputByteBufferNano.readBytes();
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        byte[] bArr = this.f10205a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(1, this.f10205a);
        }
        if (!Arrays.equals(this.f10206b, bArr2)) {
            codedOutputByteBufferNano.writeBytes(2, this.f10206b);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
