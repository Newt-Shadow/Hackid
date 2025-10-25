package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.hm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1229hm extends MessageNano {

    /* renamed from: b  reason: collision with root package name */
    public static volatile C1229hm[] f19758b;

    /* renamed from: a  reason: collision with root package name */
    public long f19759a;

    public C1229hm() {
        a();
    }

    public static C1229hm[] b() {
        if (f19758b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19758b == null) {
                    f19758b = new C1229hm[0];
                }
            }
        }
        return f19758b;
    }

    public final C1229hm a() {
        this.f19759a = 18000000L;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        return CodedOutputByteBufferNano.computeInt64Size(1, this.f19759a) + super.computeSerializedSize();
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeInt64(1, this.f19759a);
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1229hm mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag != 8) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f19759a = codedInputByteBufferNano.readInt64();
            }
        }
    }

    public static C1229hm a(byte[] bArr) {
        return (C1229hm) MessageNano.mergeFrom(new C1229hm(), bArr);
    }

    public static C1229hm b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1229hm().mergeFrom(codedInputByteBufferNano);
    }
}
