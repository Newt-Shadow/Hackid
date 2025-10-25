package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class P3 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static final int f18752c = 0;

    /* renamed from: d  reason: collision with root package name */
    public static final int f18753d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f18754e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f18755f = 3;

    /* renamed from: g  reason: collision with root package name */
    public static volatile P3[] f18756g;

    /* renamed from: a  reason: collision with root package name */
    public M3 f18757a;

    /* renamed from: b  reason: collision with root package name */
    public M3[] f18758b;

    public P3() {
        a();
    }

    public static P3[] b() {
        if (f18756g == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18756g == null) {
                    f18756g = new P3[0];
                }
            }
        }
        return f18756g;
    }

    public final P3 a() {
        this.f18757a = null;
        this.f18758b = M3.b();
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        M3 m32 = this.f18757a;
        if (m32 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, m32);
        }
        M3[] m3Arr = this.f18758b;
        if (m3Arr != null && m3Arr.length > 0) {
            int i10 = 0;
            while (true) {
                M3[] m3Arr2 = this.f18758b;
                if (i10 >= m3Arr2.length) {
                    break;
                }
                M3 m33 = m3Arr2[i10];
                if (m33 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, m33);
                }
                i10++;
            }
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        M3 m32 = this.f18757a;
        if (m32 != null) {
            codedOutputByteBufferNano.writeMessage(1, m32);
        }
        M3[] m3Arr = this.f18758b;
        if (m3Arr != null && m3Arr.length > 0) {
            int i10 = 0;
            while (true) {
                M3[] m3Arr2 = this.f18758b;
                if (i10 >= m3Arr2.length) {
                    break;
                }
                M3 m33 = m3Arr2[i10];
                if (m33 != null) {
                    codedOutputByteBufferNano.writeMessage(2, m33);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final P3 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                if (this.f18757a == null) {
                    this.f18757a = new M3();
                }
                codedInputByteBufferNano.readMessage(this.f18757a);
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                M3[] m3Arr = this.f18758b;
                int length = m3Arr == null ? 0 : m3Arr.length;
                int i10 = repeatedFieldArrayLength + length;
                M3[] m3Arr2 = new M3[i10];
                if (length != 0) {
                    System.arraycopy(m3Arr, 0, m3Arr2, 0, length);
                }
                while (length < i10 - 1) {
                    M3 m32 = new M3();
                    m3Arr2[length] = m32;
                    codedInputByteBufferNano.readMessage(m32);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                M3 m33 = new M3();
                m3Arr2[length] = m33;
                codedInputByteBufferNano.readMessage(m33);
                this.f18758b = m3Arr2;
            }
        }
    }

    public static P3 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new P3().mergeFrom(codedInputByteBufferNano);
    }

    public static P3 a(byte[] bArr) {
        return (P3) MessageNano.mergeFrom(new P3(), bArr);
    }
}
