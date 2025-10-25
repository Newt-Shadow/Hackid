package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class Yl extends MessageNano {

    /* renamed from: b  reason: collision with root package name */
    public static volatile Yl[] f19305b;

    /* renamed from: a  reason: collision with root package name */
    public Xl[] f19306a;

    public Yl() {
        a();
    }

    public static Yl[] b() {
        if (f19305b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19305b == null) {
                    f19305b = new Yl[0];
                }
            }
        }
        return f19305b;
    }

    public final Yl a() {
        this.f19306a = Xl.b();
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        Xl[] xlArr = this.f19306a;
        if (xlArr != null && xlArr.length > 0) {
            int i10 = 0;
            while (true) {
                Xl[] xlArr2 = this.f19306a;
                if (i10 >= xlArr2.length) {
                    break;
                }
                Xl xl = xlArr2[i10];
                if (xl != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, xl);
                }
                i10++;
            }
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        Xl[] xlArr = this.f19306a;
        if (xlArr != null && xlArr.length > 0) {
            int i10 = 0;
            while (true) {
                Xl[] xlArr2 = this.f19306a;
                if (i10 >= xlArr2.length) {
                    break;
                }
                Xl xl = xlArr2[i10];
                if (xl != null) {
                    codedOutputByteBufferNano.writeMessage(1, xl);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final Yl mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
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
                Xl[] xlArr = this.f19306a;
                int length = xlArr == null ? 0 : xlArr.length;
                int i10 = repeatedFieldArrayLength + length;
                Xl[] xlArr2 = new Xl[i10];
                if (length != 0) {
                    System.arraycopy(xlArr, 0, xlArr2, 0, length);
                }
                while (length < i10 - 1) {
                    Xl xl = new Xl();
                    xlArr2[length] = xl;
                    codedInputByteBufferNano.readMessage(xl);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                Xl xl2 = new Xl();
                xlArr2[length] = xl2;
                codedInputByteBufferNano.readMessage(xl2);
                this.f19306a = xlArr2;
            }
        }
    }

    public static Yl b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Yl().mergeFrom(codedInputByteBufferNano);
    }

    public static Yl a(byte[] bArr) {
        return (Yl) MessageNano.mergeFrom(new Yl(), bArr);
    }
}
