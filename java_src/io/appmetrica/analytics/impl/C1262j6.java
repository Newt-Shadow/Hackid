package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;
/* renamed from: io.appmetrica.analytics.impl.j6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1262j6 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C1262j6[] f19840c;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f19841a;

    /* renamed from: b  reason: collision with root package name */
    public C1362n6 f19842b;

    public C1262j6() {
        a();
    }

    public static C1262j6[] b() {
        if (f19840c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19840c == null) {
                    f19840c = new C1262j6[0];
                }
            }
        }
        return f19840c;
    }

    public final C1262j6 a() {
        this.f19841a = WireFormatNano.EMPTY_BYTES;
        this.f19842b = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!Arrays.equals(this.f19841a, WireFormatNano.EMPTY_BYTES)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f19841a);
        }
        C1362n6 c1362n6 = this.f19842b;
        if (c1362n6 != null) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, c1362n6);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!Arrays.equals(this.f19841a, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(1, this.f19841a);
        }
        C1362n6 c1362n6 = this.f19842b;
        if (c1362n6 != null) {
            codedOutputByteBufferNano.writeMessage(2, c1362n6);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1262j6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f19841a = codedInputByteBufferNano.readBytes();
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                if (this.f19842b == null) {
                    this.f19842b = new C1362n6();
                }
                codedInputByteBufferNano.readMessage(this.f19842b);
            }
        }
    }

    public static C1262j6 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1262j6().mergeFrom(codedInputByteBufferNano);
    }

    public static C1262j6 a(byte[] bArr) {
        return (C1262j6) MessageNano.mergeFrom(new C1262j6(), bArr);
    }
}
