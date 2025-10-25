package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class Nn extends MessageNano {

    /* renamed from: e  reason: collision with root package name */
    public static volatile Nn[] f18660e;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f18661a;

    /* renamed from: b  reason: collision with root package name */
    public double f18662b;

    /* renamed from: c  reason: collision with root package name */
    public double f18663c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f18664d;

    public Nn() {
        a();
    }

    public static Nn[] b() {
        if (f18660e == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18660e == null) {
                    f18660e = new Nn[0];
                }
            }
        }
        return f18660e;
    }

    public final Nn a() {
        this.f18661a = WireFormatNano.EMPTY_BYTES;
        this.f18662b = 0.0d;
        this.f18663c = 0.0d;
        this.f18664d = false;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!Arrays.equals(this.f18661a, WireFormatNano.EMPTY_BYTES)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f18661a);
        }
        if (Double.doubleToLongBits(this.f18662b) != Double.doubleToLongBits(0.0d)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeDoubleSize(2, this.f18662b);
        }
        if (Double.doubleToLongBits(this.f18663c) != Double.doubleToLongBits(0.0d)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeDoubleSize(3, this.f18663c);
        }
        boolean z10 = this.f18664d;
        if (z10) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(4, z10);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!Arrays.equals(this.f18661a, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(1, this.f18661a);
        }
        if (Double.doubleToLongBits(this.f18662b) != Double.doubleToLongBits(0.0d)) {
            codedOutputByteBufferNano.writeDouble(2, this.f18662b);
        }
        if (Double.doubleToLongBits(this.f18663c) != Double.doubleToLongBits(0.0d)) {
            codedOutputByteBufferNano.writeDouble(3, this.f18663c);
        }
        boolean z10 = this.f18664d;
        if (z10) {
            codedOutputByteBufferNano.writeBool(4, z10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final Nn mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f18661a = codedInputByteBufferNano.readBytes();
            } else if (readTag == 17) {
                this.f18662b = codedInputByteBufferNano.readDouble();
            } else if (readTag == 25) {
                this.f18663c = codedInputByteBufferNano.readDouble();
            } else if (readTag != 32) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f18664d = codedInputByteBufferNano.readBool();
            }
        }
    }

    public static Nn b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Nn().mergeFrom(codedInputByteBufferNano);
    }

    public static Nn a(byte[] bArr) {
        return (Nn) MessageNano.mergeFrom(new Nn(), bArr);
    }
}
