package io.appmetrica.analytics.screenshot.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class K extends MessageNano {

    /* renamed from: b  reason: collision with root package name */
    public static volatile K[] f21376b;

    /* renamed from: a  reason: collision with root package name */
    public boolean f21377a;

    public K() {
        a();
    }

    public static K[] b() {
        if (f21376b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f21376b == null) {
                    f21376b = new K[0];
                }
            }
        }
        return f21376b;
    }

    public final K a() {
        this.f21377a = true;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        boolean z10 = this.f21377a;
        if (!z10) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(1, z10);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        boolean z10 = this.f21377a;
        if (!z10) {
            codedOutputByteBufferNano.writeBool(1, z10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final K mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
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
                this.f21377a = codedInputByteBufferNano.readBool();
            }
        }
    }

    public static K a(byte[] bArr) {
        return (K) MessageNano.mergeFrom(new K(), bArr);
    }

    public static K b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new K().mergeFrom(codedInputByteBufferNano);
    }
}
