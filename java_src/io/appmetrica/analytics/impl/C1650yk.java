package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;
/* renamed from: io.appmetrica.analytics.impl.yk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1650yk extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C1650yk[] f20994c;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f20995a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f20996b;

    public C1650yk() {
        a();
    }

    public static C1650yk[] b() {
        if (f20994c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20994c == null) {
                    f20994c = new C1650yk[0];
                }
            }
        }
        return f20994c;
    }

    public final C1650yk a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f20995a = bArr;
        this.f20996b = bArr;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        byte[] bArr = this.f20995a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f20995a);
        }
        if (!Arrays.equals(this.f20996b, bArr2)) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(2, this.f20996b);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        byte[] bArr = this.f20995a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(1, this.f20995a);
        }
        if (!Arrays.equals(this.f20996b, bArr2)) {
            codedOutputByteBufferNano.writeBytes(2, this.f20996b);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1650yk mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f20995a = codedInputByteBufferNano.readBytes();
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f20996b = codedInputByteBufferNano.readBytes();
            }
        }
    }

    public static C1650yk b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1650yk().mergeFrom(codedInputByteBufferNano);
    }

    public static C1650yk a(byte[] bArr) {
        return (C1650yk) MessageNano.mergeFrom(new C1650yk(), bArr);
    }
}
