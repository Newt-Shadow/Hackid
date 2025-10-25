package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;
/* renamed from: io.appmetrica.analytics.impl.n9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1365n9 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C1365n9[] f20167c;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f20168a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f20169b;

    public C1365n9() {
        a();
    }

    public static C1365n9[] b() {
        if (f20167c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20167c == null) {
                    f20167c = new C1365n9[0];
                }
            }
        }
        return f20167c;
    }

    public final C1365n9 a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f20168a = bArr;
        this.f20169b = bArr;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        byte[] bArr = this.f20168a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f20168a);
        }
        if (!Arrays.equals(this.f20169b, bArr2)) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(2, this.f20169b);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        byte[] bArr = this.f20168a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(1, this.f20168a);
        }
        if (!Arrays.equals(this.f20169b, bArr2)) {
            codedOutputByteBufferNano.writeBytes(2, this.f20169b);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1365n9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f20168a = codedInputByteBufferNano.readBytes();
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f20169b = codedInputByteBufferNano.readBytes();
            }
        }
    }

    public static C1365n9 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1365n9().mergeFrom(codedInputByteBufferNano);
    }

    public static C1365n9 a(byte[] bArr) {
        return (C1365n9) MessageNano.mergeFrom(new C1365n9(), bArr);
    }
}
