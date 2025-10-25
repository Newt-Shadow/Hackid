package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.p6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1412p6 extends MessageNano {

    /* renamed from: g  reason: collision with root package name */
    public static volatile C1412p6[] f20323g;

    /* renamed from: a  reason: collision with root package name */
    public String f20324a;

    /* renamed from: b  reason: collision with root package name */
    public int f20325b;

    /* renamed from: c  reason: collision with root package name */
    public long f20326c;

    /* renamed from: d  reason: collision with root package name */
    public String f20327d;

    /* renamed from: e  reason: collision with root package name */
    public int f20328e;

    /* renamed from: f  reason: collision with root package name */
    public C1387o6[] f20329f;

    public C1412p6() {
        a();
    }

    public static C1412p6[] b() {
        if (f20323g == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20323g == null) {
                    f20323g = new C1412p6[0];
                }
            }
        }
        return f20323g;
    }

    public final C1412p6 a() {
        this.f20324a = "";
        this.f20325b = 0;
        this.f20326c = 0L;
        this.f20327d = "";
        this.f20328e = 0;
        this.f20329f = C1387o6.b();
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSInt64Size = CodedOutputByteBufferNano.computeSInt64Size(3, this.f20326c) + CodedOutputByteBufferNano.computeSInt32Size(2, this.f20325b) + CodedOutputByteBufferNano.computeStringSize(1, this.f20324a) + super.computeSerializedSize();
        if (!this.f20327d.equals("")) {
            computeSInt64Size += CodedOutputByteBufferNano.computeStringSize(4, this.f20327d);
        }
        int i10 = this.f20328e;
        if (i10 != 0) {
            computeSInt64Size += CodedOutputByteBufferNano.computeUInt32Size(5, i10);
        }
        C1387o6[] c1387o6Arr = this.f20329f;
        if (c1387o6Arr != null && c1387o6Arr.length > 0) {
            int i11 = 0;
            while (true) {
                C1387o6[] c1387o6Arr2 = this.f20329f;
                if (i11 >= c1387o6Arr2.length) {
                    break;
                }
                C1387o6 c1387o6 = c1387o6Arr2[i11];
                if (c1387o6 != null) {
                    computeSInt64Size += CodedOutputByteBufferNano.computeMessageSize(6, c1387o6);
                }
                i11++;
            }
        }
        return computeSInt64Size;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeString(1, this.f20324a);
        codedOutputByteBufferNano.writeSInt32(2, this.f20325b);
        codedOutputByteBufferNano.writeSInt64(3, this.f20326c);
        if (!this.f20327d.equals("")) {
            codedOutputByteBufferNano.writeString(4, this.f20327d);
        }
        int i10 = this.f20328e;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeUInt32(5, i10);
        }
        C1387o6[] c1387o6Arr = this.f20329f;
        if (c1387o6Arr != null && c1387o6Arr.length > 0) {
            int i11 = 0;
            while (true) {
                C1387o6[] c1387o6Arr2 = this.f20329f;
                if (i11 >= c1387o6Arr2.length) {
                    break;
                }
                C1387o6 c1387o6 = c1387o6Arr2[i11];
                if (c1387o6 != null) {
                    codedOutputByteBufferNano.writeMessage(6, c1387o6);
                }
                i11++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1412p6 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1412p6().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1412p6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f20324a = codedInputByteBufferNano.readString();
            } else if (readTag == 16) {
                this.f20325b = codedInputByteBufferNano.readSInt32();
            } else if (readTag == 24) {
                this.f20326c = codedInputByteBufferNano.readSInt64();
            } else if (readTag == 34) {
                this.f20327d = codedInputByteBufferNano.readString();
            } else if (readTag == 40) {
                this.f20328e = codedInputByteBufferNano.readUInt32();
            } else if (readTag != 50) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 50);
                C1387o6[] c1387o6Arr = this.f20329f;
                int length = c1387o6Arr == null ? 0 : c1387o6Arr.length;
                int i10 = repeatedFieldArrayLength + length;
                C1387o6[] c1387o6Arr2 = new C1387o6[i10];
                if (length != 0) {
                    System.arraycopy(c1387o6Arr, 0, c1387o6Arr2, 0, length);
                }
                while (length < i10 - 1) {
                    C1387o6 c1387o6 = new C1387o6();
                    c1387o6Arr2[length] = c1387o6;
                    codedInputByteBufferNano.readMessage(c1387o6);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C1387o6 c1387o62 = new C1387o6();
                c1387o6Arr2[length] = c1387o62;
                codedInputByteBufferNano.readMessage(c1387o62);
                this.f20329f = c1387o6Arr2;
            }
        }
    }

    public static C1412p6 a(byte[] bArr) {
        return (C1412p6) MessageNano.mergeFrom(new C1412p6(), bArr);
    }
}
