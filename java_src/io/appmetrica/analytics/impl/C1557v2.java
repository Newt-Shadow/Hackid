package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.v2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1557v2 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static final int f20767c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f20768d = 2;

    /* renamed from: e  reason: collision with root package name */
    public static final int f20769e = 3;

    /* renamed from: f  reason: collision with root package name */
    public static volatile C1557v2[] f20770f;

    /* renamed from: a  reason: collision with root package name */
    public C1532u2[] f20771a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f20772b;

    public C1557v2() {
        a();
    }

    public static C1557v2[] b() {
        if (f20770f == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20770f == null) {
                    f20770f = new C1557v2[0];
                }
            }
        }
        return f20770f;
    }

    public final C1557v2 a() {
        this.f20771a = C1532u2.b();
        this.f20772b = false;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1532u2[] c1532u2Arr = this.f20771a;
        if (c1532u2Arr != null && c1532u2Arr.length > 0) {
            int i10 = 0;
            while (true) {
                C1532u2[] c1532u2Arr2 = this.f20771a;
                if (i10 >= c1532u2Arr2.length) {
                    break;
                }
                C1532u2 c1532u2 = c1532u2Arr2[i10];
                if (c1532u2 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1532u2);
                }
                i10++;
            }
        }
        return CodedOutputByteBufferNano.computeBoolSize(2, this.f20772b) + computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1532u2[] c1532u2Arr = this.f20771a;
        if (c1532u2Arr != null && c1532u2Arr.length > 0) {
            int i10 = 0;
            while (true) {
                C1532u2[] c1532u2Arr2 = this.f20771a;
                if (i10 >= c1532u2Arr2.length) {
                    break;
                }
                C1532u2 c1532u2 = c1532u2Arr2[i10];
                if (c1532u2 != null) {
                    codedOutputByteBufferNano.writeMessage(1, c1532u2);
                }
                i10++;
            }
        }
        codedOutputByteBufferNano.writeBool(2, this.f20772b);
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1557v2 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                C1532u2[] c1532u2Arr = this.f20771a;
                int length = c1532u2Arr == null ? 0 : c1532u2Arr.length;
                int i10 = repeatedFieldArrayLength + length;
                C1532u2[] c1532u2Arr2 = new C1532u2[i10];
                if (length != 0) {
                    System.arraycopy(c1532u2Arr, 0, c1532u2Arr2, 0, length);
                }
                while (length < i10 - 1) {
                    C1532u2 c1532u2 = new C1532u2();
                    c1532u2Arr2[length] = c1532u2;
                    codedInputByteBufferNano.readMessage(c1532u2);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C1532u2 c1532u22 = new C1532u2();
                c1532u2Arr2[length] = c1532u22;
                codedInputByteBufferNano.readMessage(c1532u22);
                this.f20771a = c1532u2Arr2;
            } else if (readTag != 16) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f20772b = codedInputByteBufferNano.readBool();
            }
        }
    }

    public static C1557v2 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1557v2().mergeFrom(codedInputByteBufferNano);
    }

    public static C1557v2 a(byte[] bArr) {
        return (C1557v2) MessageNano.mergeFrom(new C1557v2(), bArr);
    }
}
