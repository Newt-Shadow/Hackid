package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class T8 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile T8[] f18963c;

    /* renamed from: a  reason: collision with root package name */
    public String f18964a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f18965b;

    public T8() {
        a();
    }

    public static T8[] b() {
        if (f18963c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18963c == null) {
                    f18963c = new T8[0];
                }
            }
        }
        return f18963c;
    }

    public final T8 a() {
        this.f18964a = "";
        this.f18965b = WireFormatNano.EMPTY_BYTES;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.f18964a.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f18964a);
        }
        if (!Arrays.equals(this.f18965b, WireFormatNano.EMPTY_BYTES)) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(2, this.f18965b);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!this.f18964a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.f18964a);
        }
        if (!Arrays.equals(this.f18965b, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(2, this.f18965b);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final T8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f18964a = codedInputByteBufferNano.readString();
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f18965b = codedInputByteBufferNano.readBytes();
            }
        }
    }

    public static T8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new T8().mergeFrom(codedInputByteBufferNano);
    }

    public static T8 a(byte[] bArr) {
        return (T8) MessageNano.mergeFrom(new T8(), bArr);
    }
}
