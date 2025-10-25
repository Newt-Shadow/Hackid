package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class Ji extends MessageNano {

    /* renamed from: d  reason: collision with root package name */
    public static volatile Ji[] f18443d;

    /* renamed from: a  reason: collision with root package name */
    public boolean f18444a;

    /* renamed from: b  reason: collision with root package name */
    public Ii f18445b;

    /* renamed from: c  reason: collision with root package name */
    public Hi f18446c;

    public Ji() {
        a();
    }

    public static Ji[] b() {
        if (f18443d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18443d == null) {
                    f18443d = new Ji[0];
                }
            }
        }
        return f18443d;
    }

    public final Ji a() {
        this.f18444a = false;
        this.f18445b = null;
        this.f18446c = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        boolean z10 = this.f18444a;
        if (z10) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(1, z10);
        }
        Ii ii = this.f18445b;
        if (ii != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, ii);
        }
        Hi hi = this.f18446c;
        if (hi != null) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(3, hi);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        boolean z10 = this.f18444a;
        if (z10) {
            codedOutputByteBufferNano.writeBool(1, z10);
        }
        Ii ii = this.f18445b;
        if (ii != null) {
            codedOutputByteBufferNano.writeMessage(2, ii);
        }
        Hi hi = this.f18446c;
        if (hi != null) {
            codedOutputByteBufferNano.writeMessage(3, hi);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final Ji mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                this.f18444a = codedInputByteBufferNano.readBool();
            } else if (readTag == 18) {
                if (this.f18445b == null) {
                    this.f18445b = new Ii();
                }
                codedInputByteBufferNano.readMessage(this.f18445b);
            } else if (readTag != 26) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                if (this.f18446c == null) {
                    this.f18446c = new Hi();
                }
                codedInputByteBufferNano.readMessage(this.f18446c);
            }
        }
    }

    public static Ji b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Ji().mergeFrom(codedInputByteBufferNano);
    }

    public static Ji a(byte[] bArr) {
        return (Ji) MessageNano.mergeFrom(new Ji(), bArr);
    }
}
