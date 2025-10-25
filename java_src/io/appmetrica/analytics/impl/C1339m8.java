package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;
/* renamed from: io.appmetrica.analytics.impl.m8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1339m8 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C1339m8[] f20096c;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f20097a;

    /* renamed from: b  reason: collision with root package name */
    public C1439q8 f20098b;

    public C1339m8() {
        a();
    }

    public static C1339m8[] b() {
        if (f20096c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20096c == null) {
                    f20096c = new C1339m8[0];
                }
            }
        }
        return f20096c;
    }

    public final C1339m8 a() {
        this.f20097a = WireFormatNano.EMPTY_BYTES;
        this.f20098b = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!Arrays.equals(this.f20097a, WireFormatNano.EMPTY_BYTES)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f20097a);
        }
        C1439q8 c1439q8 = this.f20098b;
        if (c1439q8 != null) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, c1439q8);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!Arrays.equals(this.f20097a, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(1, this.f20097a);
        }
        C1439q8 c1439q8 = this.f20098b;
        if (c1439q8 != null) {
            codedOutputByteBufferNano.writeMessage(2, c1439q8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1339m8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f20097a = codedInputByteBufferNano.readBytes();
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                if (this.f20098b == null) {
                    this.f20098b = new C1439q8();
                }
                codedInputByteBufferNano.readMessage(this.f20098b);
            }
        }
    }

    public static C1339m8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1339m8().mergeFrom(codedInputByteBufferNano);
    }

    public static C1339m8 a(byte[] bArr) {
        return (C1339m8) MessageNano.mergeFrom(new C1339m8(), bArr);
    }
}
