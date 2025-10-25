package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.h6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1213h6 extends MessageNano {

    /* renamed from: d  reason: collision with root package name */
    public static volatile C1213h6[] f19718d;

    /* renamed from: a  reason: collision with root package name */
    public C1188g6 f19719a;

    /* renamed from: b  reason: collision with root package name */
    public String f19720b;

    /* renamed from: c  reason: collision with root package name */
    public int f19721c;

    public C1213h6() {
        a();
    }

    public static C1213h6[] b() {
        if (f19718d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19718d == null) {
                    f19718d = new C1213h6[0];
                }
            }
        }
        return f19718d;
    }

    public final C1213h6 a() {
        this.f19719a = null;
        this.f19720b = "";
        this.f19721c = -1;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1188g6 c1188g6 = this.f19719a;
        if (c1188g6 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1188g6);
        }
        if (!this.f19720b.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f19720b);
        }
        int i10 = this.f19721c;
        if (i10 != -1) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, i10);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1188g6 c1188g6 = this.f19719a;
        if (c1188g6 != null) {
            codedOutputByteBufferNano.writeMessage(1, c1188g6);
        }
        if (!this.f19720b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.f19720b);
        }
        int i10 = this.f19721c;
        if (i10 != -1) {
            codedOutputByteBufferNano.writeInt32(3, i10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1213h6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                if (this.f19719a == null) {
                    this.f19719a = new C1188g6();
                }
                codedInputByteBufferNano.readMessage(this.f19719a);
            } else if (readTag == 18) {
                this.f19720b = codedInputByteBufferNano.readString();
            } else if (readTag != 24) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int readInt32 = codedInputByteBufferNano.readInt32();
                if (readInt32 == -1 || readInt32 == 0 || readInt32 == 1) {
                    this.f19721c = readInt32;
                }
            }
        }
    }

    public static C1213h6 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1213h6().mergeFrom(codedInputByteBufferNano);
    }

    public static C1213h6 a(byte[] bArr) {
        return (C1213h6) MessageNano.mergeFrom(new C1213h6(), bArr);
    }
}
