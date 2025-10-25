package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.ff  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0535ff extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    private static volatile C0535ff[] f12415c;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f12416a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f12417b;

    public C0535ff() {
        a();
    }

    public static C0535ff[] b() {
        if (f12415c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f12415c == null) {
                    f12415c = new C0535ff[0];
                }
            }
        }
        return f12415c;
    }

    public C0535ff a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f12416a = bArr;
        this.f12417b = bArr;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        byte[] bArr = this.f12416a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f12416a);
        }
        if (!Arrays.equals(this.f12417b, bArr2)) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(2, this.f12417b);
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
                    this.f12417b = codedInputByteBufferNano.readBytes();
                }
            } else {
                this.f12416a = codedInputByteBufferNano.readBytes();
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        byte[] bArr = this.f12416a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(1, this.f12416a);
        }
        if (!Arrays.equals(this.f12417b, bArr2)) {
            codedOutputByteBufferNano.writeBytes(2, this.f12417b);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
