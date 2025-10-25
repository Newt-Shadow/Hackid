package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class C8 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C8[] f18043c;

    /* renamed from: a  reason: collision with root package name */
    public C1613x8 f18044a;

    /* renamed from: b  reason: collision with root package name */
    public C1663z8 f18045b;

    public C8() {
        a();
    }

    public static C8[] b() {
        if (f18043c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18043c == null) {
                    f18043c = new C8[0];
                }
            }
        }
        return f18043c;
    }

    public final C8 a() {
        this.f18044a = null;
        this.f18045b = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1613x8 c1613x8 = this.f18044a;
        if (c1613x8 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1613x8);
        }
        C1663z8 c1663z8 = this.f18045b;
        if (c1663z8 != null) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, c1663z8);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1613x8 c1613x8 = this.f18044a;
        if (c1613x8 != null) {
            codedOutputByteBufferNano.writeMessage(1, c1613x8);
        }
        C1663z8 c1663z8 = this.f18045b;
        if (c1663z8 != null) {
            codedOutputByteBufferNano.writeMessage(2, c1663z8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                if (this.f18044a == null) {
                    this.f18044a = new C1613x8();
                }
                codedInputByteBufferNano.readMessage(this.f18044a);
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                if (this.f18045b == null) {
                    this.f18045b = new C1663z8();
                }
                codedInputByteBufferNano.readMessage(this.f18045b);
            }
        }
    }

    public static C8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C8().mergeFrom(codedInputByteBufferNano);
    }

    public static C8 a(byte[] bArr) {
        return (C8) MessageNano.mergeFrom(new C8(), bArr);
    }
}
