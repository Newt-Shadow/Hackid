package io.appmetrica.analytics.remotepermissions.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class f extends MessageNano {

    /* renamed from: b  reason: collision with root package name */
    public static volatile f[] f21352b;

    /* renamed from: a  reason: collision with root package name */
    public byte[][] f21353a;

    public f() {
        a();
    }

    public static f[] b() {
        if (f21352b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f21352b == null) {
                    f21352b = new f[0];
                }
            }
        }
        return f21352b;
    }

    public final f a() {
        this.f21353a = WireFormatNano.EMPTY_BYTES_ARRAY;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        byte[][] bArr = this.f21353a;
        if (bArr != null && bArr.length > 0) {
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                byte[][] bArr2 = this.f21353a;
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
        byte[][] bArr = this.f21353a;
        if (bArr != null && bArr.length > 0) {
            int i10 = 0;
            while (true) {
                byte[][] bArr2 = this.f21353a;
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
    public final f mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
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
                byte[][] bArr = this.f21353a;
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
                this.f21353a = bArr2;
            }
        }
    }

    public static f b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new f().mergeFrom(codedInputByteBufferNano);
    }

    public static f a(byte[] bArr) {
        return (f) MessageNano.mergeFrom(new f(), bArr);
    }
}
