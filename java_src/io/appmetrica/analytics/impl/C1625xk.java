package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.xk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1625xk extends MessageNano {

    /* renamed from: b  reason: collision with root package name */
    public static volatile C1625xk[] f20940b;

    /* renamed from: a  reason: collision with root package name */
    public C1650yk[] f20941a;

    public C1625xk() {
        a();
    }

    public static C1625xk[] b() {
        if (f20940b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20940b == null) {
                    f20940b = new C1625xk[0];
                }
            }
        }
        return f20940b;
    }

    public final C1625xk a() {
        this.f20941a = C1650yk.b();
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1650yk[] c1650ykArr = this.f20941a;
        if (c1650ykArr != null && c1650ykArr.length > 0) {
            int i10 = 0;
            while (true) {
                C1650yk[] c1650ykArr2 = this.f20941a;
                if (i10 >= c1650ykArr2.length) {
                    break;
                }
                C1650yk c1650yk = c1650ykArr2[i10];
                if (c1650yk != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1650yk);
                }
                i10++;
            }
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1650yk[] c1650ykArr = this.f20941a;
        if (c1650ykArr != null && c1650ykArr.length > 0) {
            int i10 = 0;
            while (true) {
                C1650yk[] c1650ykArr2 = this.f20941a;
                if (i10 >= c1650ykArr2.length) {
                    break;
                }
                C1650yk c1650yk = c1650ykArr2[i10];
                if (c1650yk != null) {
                    codedOutputByteBufferNano.writeMessage(1, c1650yk);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1625xk mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
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
                C1650yk[] c1650ykArr = this.f20941a;
                int length = c1650ykArr == null ? 0 : c1650ykArr.length;
                int i10 = repeatedFieldArrayLength + length;
                C1650yk[] c1650ykArr2 = new C1650yk[i10];
                if (length != 0) {
                    System.arraycopy(c1650ykArr, 0, c1650ykArr2, 0, length);
                }
                while (length < i10 - 1) {
                    C1650yk c1650yk = new C1650yk();
                    c1650ykArr2[length] = c1650yk;
                    codedInputByteBufferNano.readMessage(c1650yk);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C1650yk c1650yk2 = new C1650yk();
                c1650ykArr2[length] = c1650yk2;
                codedInputByteBufferNano.readMessage(c1650yk2);
                this.f20941a = c1650ykArr2;
            }
        }
    }

    public static C1625xk b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1625xk().mergeFrom(codedInputByteBufferNano);
    }

    public static C1625xk a(byte[] bArr) {
        return (C1625xk) MessageNano.mergeFrom(new C1625xk(), bArr);
    }
}
