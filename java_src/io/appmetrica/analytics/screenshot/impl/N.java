package io.appmetrica.analytics.screenshot.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class N extends MessageNano {

    /* renamed from: d  reason: collision with root package name */
    public static volatile N[] f21385d;

    /* renamed from: a  reason: collision with root package name */
    public K f21386a;

    /* renamed from: b  reason: collision with root package name */
    public M f21387b;

    /* renamed from: c  reason: collision with root package name */
    public L f21388c;

    public N() {
        a();
    }

    public static N[] b() {
        if (f21385d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f21385d == null) {
                    f21385d = new N[0];
                }
            }
        }
        return f21385d;
    }

    public final N a() {
        this.f21386a = null;
        this.f21387b = null;
        this.f21388c = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        K k10 = this.f21386a;
        if (k10 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, k10);
        }
        M m10 = this.f21387b;
        if (m10 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, m10);
        }
        L l10 = this.f21388c;
        if (l10 != null) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(3, l10);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        K k10 = this.f21386a;
        if (k10 != null) {
            codedOutputByteBufferNano.writeMessage(1, k10);
        }
        M m10 = this.f21387b;
        if (m10 != null) {
            codedOutputByteBufferNano.writeMessage(2, m10);
        }
        L l10 = this.f21388c;
        if (l10 != null) {
            codedOutputByteBufferNano.writeMessage(3, l10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final N mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                if (this.f21386a == null) {
                    this.f21386a = new K();
                }
                codedInputByteBufferNano.readMessage(this.f21386a);
            } else if (readTag == 18) {
                if (this.f21387b == null) {
                    this.f21387b = new M();
                }
                codedInputByteBufferNano.readMessage(this.f21387b);
            } else if (readTag != 26) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                if (this.f21388c == null) {
                    this.f21388c = new L();
                }
                codedInputByteBufferNano.readMessage(this.f21388c);
            }
        }
    }

    public static N b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new N().mergeFrom(codedInputByteBufferNano);
    }

    public static N a(byte[] bArr) {
        return (N) MessageNano.mergeFrom(new N(), bArr);
    }
}
