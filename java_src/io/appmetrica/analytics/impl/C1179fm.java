package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.fm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1179fm extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C1179fm[] f19652c;

    /* renamed from: a  reason: collision with root package name */
    public long f19653a;

    /* renamed from: b  reason: collision with root package name */
    public long f19654b;

    public C1179fm() {
        a();
    }

    public static C1179fm[] b() {
        if (f19652c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19652c == null) {
                    f19652c = new C1179fm[0];
                }
            }
        }
        return f19652c;
    }

    public final C1179fm a() {
        this.f19653a = 86400L;
        this.f19654b = 432000L;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        return CodedOutputByteBufferNano.computeInt64Size(2, this.f19654b) + CodedOutputByteBufferNano.computeInt64Size(1, this.f19653a) + super.computeSerializedSize();
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeInt64(1, this.f19653a);
        codedOutputByteBufferNano.writeInt64(2, this.f19654b);
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1179fm mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                this.f19653a = codedInputByteBufferNano.readInt64();
            } else if (readTag != 16) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f19654b = codedInputByteBufferNano.readInt64();
            }
        }
    }

    public static C1179fm b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1179fm().mergeFrom(codedInputByteBufferNano);
    }

    public static C1179fm a(byte[] bArr) {
        return (C1179fm) MessageNano.mergeFrom(new C1179fm(), bArr);
    }
}
