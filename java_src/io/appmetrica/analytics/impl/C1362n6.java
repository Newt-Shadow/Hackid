package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.n6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1362n6 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C1362n6[] f20160c;

    /* renamed from: a  reason: collision with root package name */
    public int f20161a;

    /* renamed from: b  reason: collision with root package name */
    public String f20162b;

    public C1362n6() {
        a();
    }

    public static C1362n6[] b() {
        if (f20160c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20160c == null) {
                    f20160c = new C1362n6[0];
                }
            }
        }
        return f20160c;
    }

    public final C1362n6 a() {
        this.f20161a = 0;
        this.f20162b = "";
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        int i10 = this.f20161a;
        if (i10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i10);
        }
        if (!this.f20162b.equals("")) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(2, this.f20162b);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        int i10 = this.f20161a;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeInt32(1, i10);
        }
        if (!this.f20162b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.f20162b);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1362n6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                int readInt32 = codedInputByteBufferNano.readInt32();
                if (readInt32 == 0 || readInt32 == 1 || readInt32 == 3) {
                    this.f20161a = readInt32;
                }
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f20162b = codedInputByteBufferNano.readString();
            }
        }
    }

    public static C1362n6 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1362n6().mergeFrom(codedInputByteBufferNano);
    }

    public static C1362n6 a(byte[] bArr) {
        return (C1362n6) MessageNano.mergeFrom(new C1362n6(), bArr);
    }
}
