package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.l6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1312l6 extends MessageNano {

    /* renamed from: b  reason: collision with root package name */
    public static volatile C1312l6[] f20009b;

    /* renamed from: a  reason: collision with root package name */
    public String f20010a;

    public C1312l6() {
        a();
    }

    public static C1312l6[] b() {
        if (f20009b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20009b == null) {
                    f20009b = new C1312l6[0];
                }
            }
        }
        return f20009b;
    }

    public final C1312l6 a() {
        this.f20010a = "";
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        return CodedOutputByteBufferNano.computeStringSize(1, this.f20010a) + super.computeSerializedSize();
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeString(1, this.f20010a);
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1312l6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
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
                this.f20010a = codedInputByteBufferNano.readString();
            }
        }
    }

    public static C1312l6 a(byte[] bArr) {
        return (C1312l6) MessageNano.mergeFrom(new C1312l6(), bArr);
    }

    public static C1312l6 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1312l6().mergeFrom(codedInputByteBufferNano);
    }
}
