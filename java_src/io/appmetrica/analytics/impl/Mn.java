package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class Mn extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile Mn[] f18622c;

    /* renamed from: a  reason: collision with root package name */
    public boolean f18623a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f18624b;

    public Mn() {
        a();
    }

    public static Mn[] b() {
        if (f18622c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18622c == null) {
                    f18622c = new Mn[0];
                }
            }
        }
        return f18622c;
    }

    public final Mn a() {
        this.f18623a = false;
        this.f18624b = false;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        boolean z10 = this.f18623a;
        if (z10) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(1, z10);
        }
        boolean z11 = this.f18624b;
        if (z11) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(2, z11);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        boolean z10 = this.f18623a;
        if (z10) {
            codedOutputByteBufferNano.writeBool(1, z10);
        }
        boolean z11 = this.f18624b;
        if (z11) {
            codedOutputByteBufferNano.writeBool(2, z11);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final Mn mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                this.f18623a = codedInputByteBufferNano.readBool();
            } else if (readTag != 16) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f18624b = codedInputByteBufferNano.readBool();
            }
        }
    }

    public static Mn b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Mn().mergeFrom(codedInputByteBufferNano);
    }

    public static Mn a(byte[] bArr) {
        return (Mn) MessageNano.mergeFrom(new Mn(), bArr);
    }
}
