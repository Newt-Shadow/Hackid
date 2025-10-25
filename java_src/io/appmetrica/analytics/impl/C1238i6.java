package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;
/* renamed from: io.appmetrica.analytics.impl.i6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1238i6 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C1238i6[] f19776c;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f19777a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f19778b;

    public C1238i6() {
        a();
    }

    public static C1238i6[] b() {
        if (f19776c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19776c == null) {
                    f19776c = new C1238i6[0];
                }
            }
        }
        return f19776c;
    }

    public final C1238i6 a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f19777a = bArr;
        this.f19778b = bArr;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        byte[] bArr = this.f19777a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f19777a);
        }
        if (!Arrays.equals(this.f19778b, bArr2)) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(2, this.f19778b);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        byte[] bArr = this.f19777a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(1, this.f19777a);
        }
        if (!Arrays.equals(this.f19778b, bArr2)) {
            codedOutputByteBufferNano.writeBytes(2, this.f19778b);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1238i6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f19777a = codedInputByteBufferNano.readBytes();
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f19778b = codedInputByteBufferNano.readBytes();
            }
        }
    }

    public static C1238i6 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1238i6().mergeFrom(codedInputByteBufferNano);
    }

    public static C1238i6 a(byte[] bArr) {
        return (C1238i6) MessageNano.mergeFrom(new C1238i6(), bArr);
    }
}
