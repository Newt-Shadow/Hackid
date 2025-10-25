package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class Xl extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile Xl[] f19266c;

    /* renamed from: a  reason: collision with root package name */
    public String f19267a;

    /* renamed from: b  reason: collision with root package name */
    public Wl f19268b;

    public Xl() {
        a();
    }

    public static Xl[] b() {
        if (f19266c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19266c == null) {
                    f19266c = new Xl[0];
                }
            }
        }
        return f19266c;
    }

    public final Xl a() {
        this.f19267a = "";
        this.f19268b = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.f19267a.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f19267a);
        }
        Wl wl = this.f19268b;
        if (wl != null) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, wl);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!this.f19267a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.f19267a);
        }
        Wl wl = this.f19268b;
        if (wl != null) {
            codedOutputByteBufferNano.writeMessage(2, wl);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final Xl mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f19267a = codedInputByteBufferNano.readString();
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                if (this.f19268b == null) {
                    this.f19268b = new Wl();
                }
                codedInputByteBufferNano.readMessage(this.f19268b);
            }
        }
    }

    public static Xl b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Xl().mergeFrom(codedInputByteBufferNano);
    }

    public static Xl a(byte[] bArr) {
        return (Xl) MessageNano.mergeFrom(new Xl(), bArr);
    }
}
