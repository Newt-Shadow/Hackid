package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class Wl extends MessageNano {

    /* renamed from: b  reason: collision with root package name */
    public static volatile Wl[] f19199b;

    /* renamed from: a  reason: collision with root package name */
    public String f19200a;

    public Wl() {
        a();
    }

    public static Wl[] b() {
        if (f19199b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19199b == null) {
                    f19199b = new Wl[0];
                }
            }
        }
        return f19199b;
    }

    public final Wl a() {
        this.f19200a = "";
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.f19200a.equals("")) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(1, this.f19200a);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!this.f19200a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.f19200a);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final Wl mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
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
                this.f19200a = codedInputByteBufferNano.readString();
            }
        }
    }

    public static Wl a(byte[] bArr) {
        return (Wl) MessageNano.mergeFrom(new Wl(), bArr);
    }

    public static Wl b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Wl().mergeFrom(codedInputByteBufferNano);
    }
}
