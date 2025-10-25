package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class E8 extends MessageNano {

    /* renamed from: g  reason: collision with root package name */
    public static final int f18148g = 0;

    /* renamed from: h  reason: collision with root package name */
    public static final int f18149h = 1;

    /* renamed from: i  reason: collision with root package name */
    public static final int f18150i = 2;

    /* renamed from: j  reason: collision with root package name */
    public static final int f18151j = 3;

    /* renamed from: k  reason: collision with root package name */
    public static final int f18152k = 4;

    /* renamed from: l  reason: collision with root package name */
    public static final int f18153l = 5;

    /* renamed from: m  reason: collision with root package name */
    public static final int f18154m = 6;

    /* renamed from: n  reason: collision with root package name */
    public static final int f18155n = 7;

    /* renamed from: o  reason: collision with root package name */
    public static volatile E8[] f18156o;

    /* renamed from: a  reason: collision with root package name */
    public int f18157a;

    /* renamed from: b  reason: collision with root package name */
    public D8 f18158b;

    /* renamed from: c  reason: collision with root package name */
    public B8 f18159c;

    /* renamed from: d  reason: collision with root package name */
    public C8 f18160d;

    /* renamed from: e  reason: collision with root package name */
    public C1364n8 f18161e;

    /* renamed from: f  reason: collision with root package name */
    public C1513t8 f18162f;

    public E8() {
        a();
    }

    public static E8[] b() {
        if (f18156o == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18156o == null) {
                    f18156o = new E8[0];
                }
            }
        }
        return f18156o;
    }

    public final E8 a() {
        this.f18157a = 0;
        this.f18158b = null;
        this.f18159c = null;
        this.f18160d = null;
        this.f18161e = null;
        this.f18162f = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        int i10 = this.f18157a;
        if (i10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i10);
        }
        D8 d82 = this.f18158b;
        if (d82 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, d82);
        }
        B8 b82 = this.f18159c;
        if (b82 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, b82);
        }
        C8 c82 = this.f18160d;
        if (c82 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, c82);
        }
        C1364n8 c1364n8 = this.f18161e;
        if (c1364n8 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, c1364n8);
        }
        C1513t8 c1513t8 = this.f18162f;
        if (c1513t8 != null) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(6, c1513t8);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        int i10 = this.f18157a;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeInt32(1, i10);
        }
        D8 d82 = this.f18158b;
        if (d82 != null) {
            codedOutputByteBufferNano.writeMessage(2, d82);
        }
        B8 b82 = this.f18159c;
        if (b82 != null) {
            codedOutputByteBufferNano.writeMessage(3, b82);
        }
        C8 c82 = this.f18160d;
        if (c82 != null) {
            codedOutputByteBufferNano.writeMessage(4, c82);
        }
        C1364n8 c1364n8 = this.f18161e;
        if (c1364n8 != null) {
            codedOutputByteBufferNano.writeMessage(5, c1364n8);
        }
        C1513t8 c1513t8 = this.f18162f;
        if (c1513t8 != null) {
            codedOutputByteBufferNano.writeMessage(6, c1513t8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static E8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new E8().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final E8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                int readInt32 = codedInputByteBufferNano.readInt32();
                switch (readInt32) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                        this.f18157a = readInt32;
                        continue;
                }
            } else if (readTag == 18) {
                if (this.f18158b == null) {
                    this.f18158b = new D8();
                }
                codedInputByteBufferNano.readMessage(this.f18158b);
            } else if (readTag == 26) {
                if (this.f18159c == null) {
                    this.f18159c = new B8();
                }
                codedInputByteBufferNano.readMessage(this.f18159c);
            } else if (readTag == 34) {
                if (this.f18160d == null) {
                    this.f18160d = new C8();
                }
                codedInputByteBufferNano.readMessage(this.f18160d);
            } else if (readTag == 42) {
                if (this.f18161e == null) {
                    this.f18161e = new C1364n8();
                }
                codedInputByteBufferNano.readMessage(this.f18161e);
            } else if (readTag != 50) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                if (this.f18162f == null) {
                    this.f18162f = new C1513t8();
                }
                codedInputByteBufferNano.readMessage(this.f18162f);
            }
        }
    }

    public static E8 a(byte[] bArr) {
        return (E8) MessageNano.mergeFrom(new E8(), bArr);
    }
}
