package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class Gi extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile Gi[] f18275c;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f18276a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f18277b;

    public Gi() {
        a();
    }

    public static Gi[] b() {
        if (f18275c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18275c == null) {
                    f18275c = new Gi[0];
                }
            }
        }
        return f18275c;
    }

    public final Gi a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f18276a = bArr;
        this.f18277b = bArr;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        byte[] bArr = this.f18276a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f18276a);
        }
        if (!Arrays.equals(this.f18277b, bArr2)) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(2, this.f18277b);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        byte[] bArr = this.f18276a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(1, this.f18276a);
        }
        if (!Arrays.equals(this.f18277b, bArr2)) {
            codedOutputByteBufferNano.writeBytes(2, this.f18277b);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final Gi mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f18276a = codedInputByteBufferNano.readBytes();
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f18277b = codedInputByteBufferNano.readBytes();
            }
        }
    }

    public static Gi b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Gi().mergeFrom(codedInputByteBufferNano);
    }

    public static Gi a(byte[] bArr) {
        return (Gi) MessageNano.mergeFrom(new Gi(), bArr);
    }
}
