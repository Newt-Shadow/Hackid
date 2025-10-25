package io.appmetrica.analytics.screenshot.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class O extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile O[] f21389c;

    /* renamed from: a  reason: collision with root package name */
    public boolean f21390a;

    /* renamed from: b  reason: collision with root package name */
    public N f21391b;

    public O() {
        a();
    }

    public static O[] b() {
        if (f21389c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f21389c == null) {
                    f21389c = new O[0];
                }
            }
        }
        return f21389c;
    }

    public final O a() {
        this.f21390a = true;
        this.f21391b = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        boolean z10 = this.f21390a;
        if (!z10) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(1, z10);
        }
        N n10 = this.f21391b;
        if (n10 != null) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, n10);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        boolean z10 = this.f21390a;
        if (!z10) {
            codedOutputByteBufferNano.writeBool(1, z10);
        }
        N n10 = this.f21391b;
        if (n10 != null) {
            codedOutputByteBufferNano.writeMessage(2, n10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final O mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                this.f21390a = codedInputByteBufferNano.readBool();
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                if (this.f21391b == null) {
                    this.f21391b = new N();
                }
                codedInputByteBufferNano.readMessage(this.f21391b);
            }
        }
    }

    public static O b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new O().mergeFrom(codedInputByteBufferNano);
    }

    public static O a(byte[] bArr) {
        return (O) MessageNano.mergeFrom(new O(), bArr);
    }
}
