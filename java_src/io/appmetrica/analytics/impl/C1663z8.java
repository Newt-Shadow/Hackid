package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;
/* renamed from: io.appmetrica.analytics.impl.z8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1663z8 extends MessageNano {

    /* renamed from: d  reason: collision with root package name */
    public static volatile C1663z8[] f21032d;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f21033a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f21034b;

    /* renamed from: c  reason: collision with root package name */
    public A8 f21035c;

    public C1663z8() {
        a();
    }

    public static C1663z8[] b() {
        if (f21032d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f21032d == null) {
                    f21032d = new C1663z8[0];
                }
            }
        }
        return f21032d;
    }

    public final C1663z8 a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f21033a = bArr;
        this.f21034b = bArr;
        this.f21035c = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        byte[] bArr = this.f21033a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f21033a);
        }
        if (!Arrays.equals(this.f21034b, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(2, this.f21034b);
        }
        A8 a82 = this.f21035c;
        if (a82 != null) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(3, a82);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        byte[] bArr = this.f21033a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(1, this.f21033a);
        }
        if (!Arrays.equals(this.f21034b, bArr2)) {
            codedOutputByteBufferNano.writeBytes(2, this.f21034b);
        }
        A8 a82 = this.f21035c;
        if (a82 != null) {
            codedOutputByteBufferNano.writeMessage(3, a82);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1663z8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f21033a = codedInputByteBufferNano.readBytes();
            } else if (readTag == 18) {
                this.f21034b = codedInputByteBufferNano.readBytes();
            } else if (readTag != 26) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                if (this.f21035c == null) {
                    this.f21035c = new A8();
                }
                codedInputByteBufferNano.readMessage(this.f21035c);
            }
        }
    }

    public static C1663z8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1663z8().mergeFrom(codedInputByteBufferNano);
    }

    public static C1663z8 a(byte[] bArr) {
        return (C1663z8) MessageNano.mergeFrom(new C1663z8(), bArr);
    }
}
