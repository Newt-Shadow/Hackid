package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class Ii extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static final int f18396c = 0;

    /* renamed from: d  reason: collision with root package name */
    public static final int f18397d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f18398e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f18399f = 3;

    /* renamed from: g  reason: collision with root package name */
    public static final int f18400g = 4;

    /* renamed from: h  reason: collision with root package name */
    public static volatile Ii[] f18401h;

    /* renamed from: a  reason: collision with root package name */
    public int f18402a;

    /* renamed from: b  reason: collision with root package name */
    public int f18403b;

    public Ii() {
        a();
    }

    public static Ii[] b() {
        if (f18401h == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18401h == null) {
                    f18401h = new Ii[0];
                }
            }
        }
        return f18401h;
    }

    public final Ii a() {
        this.f18402a = 0;
        this.f18403b = 0;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        int i10 = this.f18402a;
        if (i10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(1, i10);
        }
        int i11 = this.f18403b;
        if (i11 != 0) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i11);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        int i10 = this.f18402a;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeUInt32(1, i10);
        }
        int i11 = this.f18403b;
        if (i11 != 0) {
            codedOutputByteBufferNano.writeInt32(2, i11);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final Ii mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                this.f18402a = codedInputByteBufferNano.readUInt32();
            } else if (readTag != 16) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int readInt32 = codedInputByteBufferNano.readInt32();
                if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3 || readInt32 == 4) {
                    this.f18403b = readInt32;
                }
            }
        }
    }

    public static Ii b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Ii().mergeFrom(codedInputByteBufferNano);
    }

    public static Ii a(byte[] bArr) {
        return (Ii) MessageNano.mergeFrom(new Ii(), bArr);
    }
}
