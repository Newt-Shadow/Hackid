package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class On extends MessageNano {

    /* renamed from: b  reason: collision with root package name */
    public static volatile On[] f18745b;

    /* renamed from: a  reason: collision with root package name */
    public Ln[] f18746a;

    public On() {
        a();
    }

    public static On[] b() {
        if (f18745b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18745b == null) {
                    f18745b = new On[0];
                }
            }
        }
        return f18745b;
    }

    public final On a() {
        this.f18746a = Ln.b();
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        Ln[] lnArr = this.f18746a;
        if (lnArr != null && lnArr.length > 0) {
            int i10 = 0;
            while (true) {
                Ln[] lnArr2 = this.f18746a;
                if (i10 >= lnArr2.length) {
                    break;
                }
                Ln ln = lnArr2[i10];
                if (ln != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, ln);
                }
                i10++;
            }
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        Ln[] lnArr = this.f18746a;
        if (lnArr != null && lnArr.length > 0) {
            int i10 = 0;
            while (true) {
                Ln[] lnArr2 = this.f18746a;
                if (i10 >= lnArr2.length) {
                    break;
                }
                Ln ln = lnArr2[i10];
                if (ln != null) {
                    codedOutputByteBufferNano.writeMessage(1, ln);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final On mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
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
                Ln[] lnArr = this.f18746a;
                int length = lnArr == null ? 0 : lnArr.length;
                int i10 = repeatedFieldArrayLength + length;
                Ln[] lnArr2 = new Ln[i10];
                if (length != 0) {
                    System.arraycopy(lnArr, 0, lnArr2, 0, length);
                }
                while (length < i10 - 1) {
                    Ln ln = new Ln();
                    lnArr2[length] = ln;
                    codedInputByteBufferNano.readMessage(ln);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                Ln ln2 = new Ln();
                lnArr2[length] = ln2;
                codedInputByteBufferNano.readMessage(ln2);
                this.f18746a = lnArr2;
            }
        }
    }

    public static On b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new On().mergeFrom(codedInputByteBufferNano);
    }

    public static On a(byte[] bArr) {
        return (On) MessageNano.mergeFrom(new On(), bArr);
    }
}
