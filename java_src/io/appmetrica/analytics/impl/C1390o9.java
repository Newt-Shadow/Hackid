package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.o9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1390o9 extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C1390o9[] f20287c;

    /* renamed from: a  reason: collision with root package name */
    public int f20288a;

    /* renamed from: b  reason: collision with root package name */
    public String f20289b;

    public C1390o9() {
        a();
    }

    public static C1390o9[] b() {
        if (f20287c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20287c == null) {
                    f20287c = new C1390o9[0];
                }
            }
        }
        return f20287c;
    }

    public final C1390o9 a() {
        this.f20288a = 2;
        this.f20289b = "";
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        int i10 = this.f20288a;
        if (i10 != 2) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i10);
        }
        if (!this.f20289b.equals("")) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(4, this.f20289b);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        int i10 = this.f20288a;
        if (i10 != 2) {
            codedOutputByteBufferNano.writeInt32(3, i10);
        }
        if (!this.f20289b.equals("")) {
            codedOutputByteBufferNano.writeString(4, this.f20289b);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1390o9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 24) {
                int readInt32 = codedInputByteBufferNano.readInt32();
                switch (readInt32) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                        this.f20288a = readInt32;
                        continue;
                }
            } else if (readTag != 34) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f20289b = codedInputByteBufferNano.readString();
            }
        }
    }

    public static C1390o9 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1390o9().mergeFrom(codedInputByteBufferNano);
    }

    public static C1390o9 a(byte[] bArr) {
        return (C1390o9) MessageNano.mergeFrom(new C1390o9(), bArr);
    }
}
