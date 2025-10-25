package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class X1 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static final int f19206c = 0;

    /* renamed from: d  reason: collision with root package name */
    public static final int f19207d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f19208e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f19209f = 3;

    /* renamed from: g  reason: collision with root package name */
    public static final int f19210g = 4;

    /* renamed from: h  reason: collision with root package name */
    public static final int f19211h = 5;

    /* renamed from: i  reason: collision with root package name */
    public static final int f19212i = -1;

    /* renamed from: j  reason: collision with root package name */
    public static final int f19213j = 0;

    /* renamed from: k  reason: collision with root package name */
    public static final int f19214k = 1;

    /* renamed from: l  reason: collision with root package name */
    public static volatile X1[] f19215l;

    /* renamed from: a  reason: collision with root package name */
    public int f19216a;

    /* renamed from: b  reason: collision with root package name */
    public int f19217b;

    public X1() {
        a();
    }

    public static X1[] b() {
        if (f19215l == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19215l == null) {
                    f19215l = new X1[0];
                }
            }
        }
        return f19215l;
    }

    public final X1 a() {
        this.f19216a = 0;
        this.f19217b = -1;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        return CodedOutputByteBufferNano.computeInt32Size(3, this.f19217b) + CodedOutputByteBufferNano.computeInt32Size(2, this.f19216a) + super.computeSerializedSize();
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeInt32(2, this.f19216a);
        codedOutputByteBufferNano.writeInt32(3, this.f19217b);
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final X1 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 16) {
                int readInt32 = codedInputByteBufferNano.readInt32();
                if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3 || readInt32 == 4 || readInt32 == 5) {
                    this.f19216a = readInt32;
                }
            } else if (readTag != 24) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int readInt322 = codedInputByteBufferNano.readInt32();
                if (readInt322 == -1 || readInt322 == 0 || readInt322 == 1) {
                    this.f19217b = readInt322;
                }
            }
        }
    }

    public static X1 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new X1().mergeFrom(codedInputByteBufferNano);
    }

    public static X1 a(byte[] bArr) {
        return (X1) MessageNano.mergeFrom(new X1(), bArr);
    }
}
