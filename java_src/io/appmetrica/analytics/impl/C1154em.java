package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;
/* renamed from: io.appmetrica.analytics.impl.em  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1154em extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C1154em[] f19600c;

    /* renamed from: a  reason: collision with root package name */
    public String f19601a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f19602b;

    public C1154em() {
        a();
    }

    public static C1154em[] b() {
        if (f19600c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19600c == null) {
                    f19600c = new C1154em[0];
                }
            }
        }
        return f19600c;
    }

    public final C1154em a() {
        this.f19601a = "";
        this.f19602b = WireFormatNano.EMPTY_BYTES;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.f19601a.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f19601a);
        }
        if (!Arrays.equals(this.f19602b, WireFormatNano.EMPTY_BYTES)) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(2, this.f19602b);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!this.f19601a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.f19601a);
        }
        if (!Arrays.equals(this.f19602b, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(2, this.f19602b);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1154em mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f19601a = codedInputByteBufferNano.readString();
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f19602b = codedInputByteBufferNano.readBytes();
            }
        }
    }

    public static C1154em b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1154em().mergeFrom(codedInputByteBufferNano);
    }

    public static C1154em a(byte[] bArr) {
        return (C1154em) MessageNano.mergeFrom(new C1154em(), bArr);
    }
}
