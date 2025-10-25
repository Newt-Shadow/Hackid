package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.j9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1265j9 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C1265j9[] f19846c;

    /* renamed from: a  reason: collision with root package name */
    public String f19847a;

    /* renamed from: b  reason: collision with root package name */
    public String f19848b;

    public C1265j9() {
        a();
    }

    public static C1265j9[] b() {
        if (f19846c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19846c == null) {
                    f19846c = new C1265j9[0];
                }
            }
        }
        return f19846c;
    }

    public final C1265j9 a() {
        this.f19847a = "";
        this.f19848b = "";
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        return CodedOutputByteBufferNano.computeStringSize(2, this.f19848b) + CodedOutputByteBufferNano.computeStringSize(1, this.f19847a) + super.computeSerializedSize();
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeString(1, this.f19847a);
        codedOutputByteBufferNano.writeString(2, this.f19848b);
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1265j9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f19847a = codedInputByteBufferNano.readString();
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f19848b = codedInputByteBufferNano.readString();
            }
        }
    }

    public static C1265j9 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1265j9().mergeFrom(codedInputByteBufferNano);
    }

    public static C1265j9 a(byte[] bArr) {
        return (C1265j9) MessageNano.mergeFrom(new C1265j9(), bArr);
    }
}
