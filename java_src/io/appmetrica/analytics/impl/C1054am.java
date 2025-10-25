package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.am  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1054am extends MessageNano {

    /* renamed from: b  reason: collision with root package name */
    public static volatile C1054am[] f19405b;

    /* renamed from: a  reason: collision with root package name */
    public long f19406a;

    public C1054am() {
        a();
    }

    public static C1054am[] b() {
        if (f19405b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19405b == null) {
                    f19405b = new C1054am[0];
                }
            }
        }
        return f19405b;
    }

    public final C1054am a() {
        this.f19406a = 10000L;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        long j10 = this.f19406a;
        if (j10 != 10000) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(1, j10);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        long j10 = this.f19406a;
        if (j10 != 10000) {
            codedOutputByteBufferNano.writeInt64(1, j10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1054am mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
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
                this.f19406a = codedInputByteBufferNano.readInt64();
            }
        }
    }

    public static C1054am a(byte[] bArr) {
        return (C1054am) MessageNano.mergeFrom(new C1054am(), bArr);
    }

    public static C1054am b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1054am().mergeFrom(codedInputByteBufferNano);
    }
}
