package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.kf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1296kf extends MessageNano {

    /* renamed from: d  reason: collision with root package name */
    public static volatile C1296kf[] f19968d;

    /* renamed from: a  reason: collision with root package name */
    public String f19969a;

    /* renamed from: b  reason: collision with root package name */
    public String f19970b;

    /* renamed from: c  reason: collision with root package name */
    public int f19971c;

    public C1296kf() {
        a();
    }

    public static C1296kf[] b() {
        if (f19968d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19968d == null) {
                    f19968d = new C1296kf[0];
                }
            }
        }
        return f19968d;
    }

    public final C1296kf a() {
        this.f19969a = "";
        this.f19970b = "";
        this.f19971c = 0;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.f19969a.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f19969a);
        }
        if (!this.f19970b.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f19970b);
        }
        return CodedOutputByteBufferNano.computeInt32Size(3, this.f19971c) + computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!this.f19969a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.f19969a);
        }
        if (!this.f19970b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.f19970b);
        }
        codedOutputByteBufferNano.writeInt32(3, this.f19971c);
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1296kf mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f19969a = codedInputByteBufferNano.readString();
            } else if (readTag == 18) {
                this.f19970b = codedInputByteBufferNano.readString();
            } else if (readTag != 24) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int readInt32 = codedInputByteBufferNano.readInt32();
                if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                    this.f19971c = readInt32;
                }
            }
        }
    }

    public static C1296kf b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1296kf().mergeFrom(codedInputByteBufferNano);
    }

    public static C1296kf a(byte[] bArr) {
        return (C1296kf) MessageNano.mergeFrom(new C1296kf(), bArr);
    }
}
