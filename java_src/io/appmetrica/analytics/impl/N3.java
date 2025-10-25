package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class N3 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile N3[] f18632c;

    /* renamed from: a  reason: collision with root package name */
    public String f18633a;

    /* renamed from: b  reason: collision with root package name */
    public String f18634b;

    public N3() {
        a();
    }

    public static N3[] b() {
        if (f18632c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18632c == null) {
                    f18632c = new N3[0];
                }
            }
        }
        return f18632c;
    }

    public final N3 a() {
        this.f18633a = "";
        this.f18634b = "";
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.f18633a.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f18633a);
        }
        if (!this.f18634b.equals("")) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(2, this.f18634b);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!this.f18633a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.f18633a);
        }
        if (!this.f18634b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.f18634b);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final N3 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f18633a = codedInputByteBufferNano.readString();
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f18634b = codedInputByteBufferNano.readString();
            }
        }
    }

    public static N3 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new N3().mergeFrom(codedInputByteBufferNano);
    }

    public static N3 a(byte[] bArr) {
        return (N3) MessageNano.mergeFrom(new N3(), bArr);
    }
}
