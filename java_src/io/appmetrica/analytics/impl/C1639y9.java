package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;
/* renamed from: io.appmetrica.analytics.impl.y9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1639y9 extends MessageNano {

    /* renamed from: b  reason: collision with root package name */
    public static volatile C1639y9[] f20980b;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f20981a;

    public C1639y9() {
        a();
    }

    public static C1639y9[] b() {
        if (f20980b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20980b == null) {
                    f20980b = new C1639y9[0];
                }
            }
        }
        return f20980b;
    }

    public final C1639y9 a() {
        this.f20981a = WireFormatNano.EMPTY_BYTES;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!Arrays.equals(this.f20981a, WireFormatNano.EMPTY_BYTES)) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(1, this.f20981a);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!Arrays.equals(this.f20981a, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(1, this.f20981a);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1639y9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
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
                this.f20981a = codedInputByteBufferNano.readBytes();
            }
        }
    }

    public static C1639y9 a(byte[] bArr) {
        return (C1639y9) MessageNano.mergeFrom(new C1639y9(), bArr);
    }

    public static C1639y9 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1639y9().mergeFrom(codedInputByteBufferNano);
    }
}
