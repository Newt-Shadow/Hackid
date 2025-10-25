package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.r9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1464r9 extends MessageNano {

    /* renamed from: d  reason: collision with root package name */
    public static final int f20505d = 0;

    /* renamed from: e  reason: collision with root package name */
    public static final int f20506e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f20507f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f20508g = 3;

    /* renamed from: h  reason: collision with root package name */
    public static final int f20509h = 4;

    /* renamed from: i  reason: collision with root package name */
    public static final int f20510i = 5;

    /* renamed from: j  reason: collision with root package name */
    public static final int f20511j = 6;

    /* renamed from: k  reason: collision with root package name */
    public static final int f20512k = 7;

    /* renamed from: l  reason: collision with root package name */
    public static final int f20513l = 8;

    /* renamed from: m  reason: collision with root package name */
    public static final int f20514m = 9;

    /* renamed from: n  reason: collision with root package name */
    public static final int f20515n = 10;

    /* renamed from: o  reason: collision with root package name */
    public static final int f20516o = 11;

    /* renamed from: p  reason: collision with root package name */
    public static final int f20517p = 12;

    /* renamed from: q  reason: collision with root package name */
    public static volatile C1464r9[] f20518q;

    /* renamed from: a  reason: collision with root package name */
    public long f20519a;

    /* renamed from: b  reason: collision with root package name */
    public C1440q9 f20520b;

    /* renamed from: c  reason: collision with root package name */
    public C1415p9[] f20521c;

    public C1464r9() {
        a();
    }

    public static C1464r9[] b() {
        if (f20518q == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20518q == null) {
                    f20518q = new C1464r9[0];
                }
            }
        }
        return f20518q;
    }

    public final C1464r9 a() {
        this.f20519a = 0L;
        this.f20520b = null;
        this.f20521c = C1415p9.b();
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeUInt64Size = CodedOutputByteBufferNano.computeUInt64Size(1, this.f20519a) + super.computeSerializedSize();
        C1440q9 c1440q9 = this.f20520b;
        if (c1440q9 != null) {
            computeUInt64Size += CodedOutputByteBufferNano.computeMessageSize(2, c1440q9);
        }
        C1415p9[] c1415p9Arr = this.f20521c;
        if (c1415p9Arr != null && c1415p9Arr.length > 0) {
            int i10 = 0;
            while (true) {
                C1415p9[] c1415p9Arr2 = this.f20521c;
                if (i10 >= c1415p9Arr2.length) {
                    break;
                }
                C1415p9 c1415p9 = c1415p9Arr2[i10];
                if (c1415p9 != null) {
                    computeUInt64Size += CodedOutputByteBufferNano.computeMessageSize(3, c1415p9);
                }
                i10++;
            }
        }
        return computeUInt64Size;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeUInt64(1, this.f20519a);
        C1440q9 c1440q9 = this.f20520b;
        if (c1440q9 != null) {
            codedOutputByteBufferNano.writeMessage(2, c1440q9);
        }
        C1415p9[] c1415p9Arr = this.f20521c;
        if (c1415p9Arr != null && c1415p9Arr.length > 0) {
            int i10 = 0;
            while (true) {
                C1415p9[] c1415p9Arr2 = this.f20521c;
                if (i10 >= c1415p9Arr2.length) {
                    break;
                }
                C1415p9 c1415p9 = c1415p9Arr2[i10];
                if (c1415p9 != null) {
                    codedOutputByteBufferNano.writeMessage(3, c1415p9);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1464r9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                this.f20519a = codedInputByteBufferNano.readUInt64();
            } else if (readTag == 18) {
                if (this.f20520b == null) {
                    this.f20520b = new C1440q9();
                }
                codedInputByteBufferNano.readMessage(this.f20520b);
            } else if (readTag != 26) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                C1415p9[] c1415p9Arr = this.f20521c;
                int length = c1415p9Arr == null ? 0 : c1415p9Arr.length;
                int i10 = repeatedFieldArrayLength + length;
                C1415p9[] c1415p9Arr2 = new C1415p9[i10];
                if (length != 0) {
                    System.arraycopy(c1415p9Arr, 0, c1415p9Arr2, 0, length);
                }
                while (length < i10 - 1) {
                    C1415p9 c1415p9 = new C1415p9();
                    c1415p9Arr2[length] = c1415p9;
                    codedInputByteBufferNano.readMessage(c1415p9);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C1415p9 c1415p92 = new C1415p9();
                c1415p9Arr2[length] = c1415p92;
                codedInputByteBufferNano.readMessage(c1415p92);
                this.f20521c = c1415p9Arr2;
            }
        }
    }

    public static C1464r9 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1464r9().mergeFrom(codedInputByteBufferNano);
    }

    public static C1464r9 a(byte[] bArr) {
        return (C1464r9) MessageNano.mergeFrom(new C1464r9(), bArr);
    }
}
