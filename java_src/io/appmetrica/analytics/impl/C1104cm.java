package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.cm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1104cm extends MessageNano {

    /* renamed from: b  reason: collision with root package name */
    public static volatile C1104cm[] f19486b;

    /* renamed from: a  reason: collision with root package name */
    public long f19487a;

    public C1104cm() {
        a();
    }

    public static C1104cm[] b() {
        if (f19486b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19486b == null) {
                    f19486b = new C1104cm[0];
                }
            }
        }
        return f19486b;
    }

    public final C1104cm a() {
        this.f19487a = 864000000L;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        long j10 = this.f19487a;
        if (j10 != 864000000) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(1, j10);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        long j10 = this.f19487a;
        if (j10 != 864000000) {
            codedOutputByteBufferNano.writeInt64(1, j10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1104cm mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
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
                this.f19487a = codedInputByteBufferNano.readInt64();
            }
        }
    }

    public static C1104cm a(byte[] bArr) {
        return (C1104cm) MessageNano.mergeFrom(new C1104cm(), bArr);
    }

    public static C1104cm b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1104cm().mergeFrom(codedInputByteBufferNano);
    }
}
