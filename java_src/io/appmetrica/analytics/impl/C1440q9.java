package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.q9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1440q9 extends MessageNano {

    /* renamed from: d  reason: collision with root package name */
    public static final int f20427d = 0;

    /* renamed from: e  reason: collision with root package name */
    public static final int f20428e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f20429f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static volatile C1440q9[] f20430g;

    /* renamed from: a  reason: collision with root package name */
    public C1514t9 f20431a;

    /* renamed from: b  reason: collision with root package name */
    public String f20432b;

    /* renamed from: c  reason: collision with root package name */
    public int f20433c;

    public C1440q9() {
        a();
    }

    public static C1440q9[] b() {
        if (f20430g == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20430g == null) {
                    f20430g = new C1440q9[0];
                }
            }
        }
        return f20430g;
    }

    public final C1440q9 a() {
        this.f20431a = null;
        this.f20432b = "";
        this.f20433c = 0;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1514t9 c1514t9 = this.f20431a;
        if (c1514t9 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1514t9);
        }
        int computeStringSize = CodedOutputByteBufferNano.computeStringSize(2, this.f20432b) + computeSerializedSize;
        int i10 = this.f20433c;
        if (i10 != 0) {
            return computeStringSize + CodedOutputByteBufferNano.computeInt32Size(5, i10);
        }
        return computeStringSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1514t9 c1514t9 = this.f20431a;
        if (c1514t9 != null) {
            codedOutputByteBufferNano.writeMessage(1, c1514t9);
        }
        codedOutputByteBufferNano.writeString(2, this.f20432b);
        int i10 = this.f20433c;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeInt32(5, i10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1440q9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                if (this.f20431a == null) {
                    this.f20431a = new C1514t9();
                }
                codedInputByteBufferNano.readMessage(this.f20431a);
            } else if (readTag == 18) {
                this.f20432b = codedInputByteBufferNano.readString();
            } else if (readTag != 40) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int readInt32 = codedInputByteBufferNano.readInt32();
                if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2) {
                    this.f20433c = readInt32;
                }
            }
        }
    }

    public static C1440q9 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1440q9().mergeFrom(codedInputByteBufferNano);
    }

    public static C1440q9 a(byte[] bArr) {
        return (C1440q9) MessageNano.mergeFrom(new C1440q9(), bArr);
    }
}
