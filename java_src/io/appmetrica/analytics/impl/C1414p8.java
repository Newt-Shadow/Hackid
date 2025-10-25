package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.p8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1414p8 extends MessageNano {

    /* renamed from: b  reason: collision with root package name */
    public static volatile C1414p8[] f20348b;

    /* renamed from: a  reason: collision with root package name */
    public byte[][] f20349a;

    public C1414p8() {
        a();
    }

    public static C1414p8[] b() {
        if (f20348b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20348b == null) {
                    f20348b = new C1414p8[0];
                }
            }
        }
        return f20348b;
    }

    public final C1414p8 a() {
        this.f20349a = WireFormatNano.EMPTY_BYTES_ARRAY;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        byte[][] bArr = this.f20349a;
        if (bArr != null && bArr.length > 0) {
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                byte[][] bArr2 = this.f20349a;
                if (i10 < bArr2.length) {
                    byte[] bArr3 = bArr2[i10];
                    if (bArr3 != null) {
                        i12++;
                        i11 = CodedOutputByteBufferNano.computeBytesSizeNoTag(bArr3) + i11;
                    }
                    i10++;
                } else {
                    return computeSerializedSize + i11 + i12;
                }
            }
        } else {
            return computeSerializedSize;
        }
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        byte[][] bArr = this.f20349a;
        if (bArr != null && bArr.length > 0) {
            int i10 = 0;
            while (true) {
                byte[][] bArr2 = this.f20349a;
                if (i10 >= bArr2.length) {
                    break;
                }
                byte[] bArr3 = bArr2[i10];
                if (bArr3 != null) {
                    codedOutputByteBufferNano.writeBytes(1, bArr3);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1414p8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag != 10) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                byte[][] bArr = this.f20349a;
                int length = bArr == null ? 0 : bArr.length;
                int i10 = repeatedFieldArrayLength + length;
                byte[][] bArr2 = new byte[i10];
                if (length != 0) {
                    System.arraycopy(bArr, 0, bArr2, 0, length);
                }
                while (length < i10 - 1) {
                    bArr2[length] = codedInputByteBufferNano.readBytes();
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                bArr2[length] = codedInputByteBufferNano.readBytes();
                this.f20349a = bArr2;
            }
        }
    }

    public static C1414p8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1414p8().mergeFrom(codedInputByteBufferNano);
    }

    public static C1414p8 a(byte[] bArr) {
        return (C1414p8) MessageNano.mergeFrom(new C1414p8(), bArr);
    }
}
