package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.l9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1315l9 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C1315l9[] f20014c;

    /* renamed from: a  reason: collision with root package name */
    public String f20015a;

    /* renamed from: b  reason: collision with root package name */
    public long f20016b;

    public C1315l9() {
        a();
    }

    public static C1315l9[] b() {
        if (f20014c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20014c == null) {
                    f20014c = new C1315l9[0];
                }
            }
        }
        return f20014c;
    }

    public final C1315l9 a() {
        this.f20015a = "";
        this.f20016b = 0L;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        return CodedOutputByteBufferNano.computeUInt64Size(2, this.f20016b) + CodedOutputByteBufferNano.computeStringSize(1, this.f20015a) + super.computeSerializedSize();
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeString(1, this.f20015a);
        codedOutputByteBufferNano.writeUInt64(2, this.f20016b);
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1315l9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f20015a = codedInputByteBufferNano.readString();
            } else if (readTag != 16) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f20016b = codedInputByteBufferNano.readUInt64();
            }
        }
    }

    public static C1315l9 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1315l9().mergeFrom(codedInputByteBufferNano);
    }

    public static C1315l9 a(byte[] bArr) {
        return (C1315l9) MessageNano.mergeFrom(new C1315l9(), bArr);
    }
}
