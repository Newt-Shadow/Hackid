package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class O3 extends MessageNano {

    /* renamed from: b  reason: collision with root package name */
    public static volatile O3[] f18681b;

    /* renamed from: a  reason: collision with root package name */
    public N3[] f18682a;

    public O3() {
        a();
    }

    public static O3[] b() {
        if (f18681b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18681b == null) {
                    f18681b = new O3[0];
                }
            }
        }
        return f18681b;
    }

    public final O3 a() {
        this.f18682a = N3.b();
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        N3[] n3Arr = this.f18682a;
        if (n3Arr != null && n3Arr.length > 0) {
            int i10 = 0;
            while (true) {
                N3[] n3Arr2 = this.f18682a;
                if (i10 >= n3Arr2.length) {
                    break;
                }
                N3 n32 = n3Arr2[i10];
                if (n32 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, n32);
                }
                i10++;
            }
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        N3[] n3Arr = this.f18682a;
        if (n3Arr != null && n3Arr.length > 0) {
            int i10 = 0;
            while (true) {
                N3[] n3Arr2 = this.f18682a;
                if (i10 >= n3Arr2.length) {
                    break;
                }
                N3 n32 = n3Arr2[i10];
                if (n32 != null) {
                    codedOutputByteBufferNano.writeMessage(1, n32);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final O3 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
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
                N3[] n3Arr = this.f18682a;
                int length = n3Arr == null ? 0 : n3Arr.length;
                int i10 = repeatedFieldArrayLength + length;
                N3[] n3Arr2 = new N3[i10];
                if (length != 0) {
                    System.arraycopy(n3Arr, 0, n3Arr2, 0, length);
                }
                while (length < i10 - 1) {
                    N3 n32 = new N3();
                    n3Arr2[length] = n32;
                    codedInputByteBufferNano.readMessage(n32);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                N3 n33 = new N3();
                n3Arr2[length] = n33;
                codedInputByteBufferNano.readMessage(n33);
                this.f18682a = n3Arr2;
            }
        }
    }

    public static O3 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new O3().mergeFrom(codedInputByteBufferNano);
    }

    public static O3 a(byte[] bArr) {
        return (O3) MessageNano.mergeFrom(new O3(), bArr);
    }
}
