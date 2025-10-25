package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.t8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1513t8 extends MessageNano {

    /* renamed from: b  reason: collision with root package name */
    public static volatile C1513t8[] f20660b;

    /* renamed from: a  reason: collision with root package name */
    public C1463r8 f20661a;

    public C1513t8() {
        a();
    }

    public static C1513t8[] b() {
        if (f20660b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20660b == null) {
                    f20660b = new C1513t8[0];
                }
            }
        }
        return f20660b;
    }

    public final C1513t8 a() {
        this.f20661a = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1463r8 c1463r8 = this.f20661a;
        if (c1463r8 != null) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(1, c1463r8);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1463r8 c1463r8 = this.f20661a;
        if (c1463r8 != null) {
            codedOutputByteBufferNano.writeMessage(1, c1463r8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1513t8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
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
                if (this.f20661a == null) {
                    this.f20661a = new C1463r8();
                }
                codedInputByteBufferNano.readMessage(this.f20661a);
            }
        }
    }

    public static C1513t8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1513t8().mergeFrom(codedInputByteBufferNano);
    }

    public static C1513t8 a(byte[] bArr) {
        return (C1513t8) MessageNano.mergeFrom(new C1513t8(), bArr);
    }
}
