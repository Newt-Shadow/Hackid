package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;
/* renamed from: io.appmetrica.analytics.impl.u8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1538u8 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C1538u8[] f20715c;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f20716a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f20717b;

    public C1538u8() {
        a();
    }

    public static C1538u8[] b() {
        if (f20715c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20715c == null) {
                    f20715c = new C1538u8[0];
                }
            }
        }
        return f20715c;
    }

    public final C1538u8 a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f20716a = bArr;
        this.f20717b = bArr;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        byte[] bArr = this.f20716a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f20716a);
        }
        if (!Arrays.equals(this.f20717b, bArr2)) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(2, this.f20717b);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        byte[] bArr = this.f20716a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(1, this.f20716a);
        }
        if (!Arrays.equals(this.f20717b, bArr2)) {
            codedOutputByteBufferNano.writeBytes(2, this.f20717b);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1538u8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f20716a = codedInputByteBufferNano.readBytes();
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f20717b = codedInputByteBufferNano.readBytes();
            }
        }
    }

    public static C1538u8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1538u8().mergeFrom(codedInputByteBufferNano);
    }

    public static C1538u8 a(byte[] bArr) {
        return (C1538u8) MessageNano.mergeFrom(new C1538u8(), bArr);
    }
}
