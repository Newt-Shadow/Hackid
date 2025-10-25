package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.o8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1389o8 extends MessageNano {

    /* renamed from: e  reason: collision with root package name */
    public static volatile C1389o8[] f20282e;

    /* renamed from: a  reason: collision with root package name */
    public C1613x8 f20283a;

    /* renamed from: b  reason: collision with root package name */
    public C1663z8 f20284b;

    /* renamed from: c  reason: collision with root package name */
    public C1439q8 f20285c;

    /* renamed from: d  reason: collision with root package name */
    public C1588w8 f20286d;

    public C1389o8() {
        a();
    }

    public static C1389o8[] b() {
        if (f20282e == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20282e == null) {
                    f20282e = new C1389o8[0];
                }
            }
        }
        return f20282e;
    }

    public final C1389o8 a() {
        this.f20283a = null;
        this.f20284b = null;
        this.f20285c = null;
        this.f20286d = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1613x8 c1613x8 = this.f20283a;
        if (c1613x8 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1613x8);
        }
        C1663z8 c1663z8 = this.f20284b;
        if (c1663z8 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c1663z8);
        }
        C1439q8 c1439q8 = this.f20285c;
        if (c1439q8 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, c1439q8);
        }
        C1588w8 c1588w8 = this.f20286d;
        if (c1588w8 != null) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(4, c1588w8);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1613x8 c1613x8 = this.f20283a;
        if (c1613x8 != null) {
            codedOutputByteBufferNano.writeMessage(1, c1613x8);
        }
        C1663z8 c1663z8 = this.f20284b;
        if (c1663z8 != null) {
            codedOutputByteBufferNano.writeMessage(2, c1663z8);
        }
        C1439q8 c1439q8 = this.f20285c;
        if (c1439q8 != null) {
            codedOutputByteBufferNano.writeMessage(3, c1439q8);
        }
        C1588w8 c1588w8 = this.f20286d;
        if (c1588w8 != null) {
            codedOutputByteBufferNano.writeMessage(4, c1588w8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1389o8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                if (this.f20283a == null) {
                    this.f20283a = new C1613x8();
                }
                codedInputByteBufferNano.readMessage(this.f20283a);
            } else if (readTag == 18) {
                if (this.f20284b == null) {
                    this.f20284b = new C1663z8();
                }
                codedInputByteBufferNano.readMessage(this.f20284b);
            } else if (readTag == 26) {
                if (this.f20285c == null) {
                    this.f20285c = new C1439q8();
                }
                codedInputByteBufferNano.readMessage(this.f20285c);
            } else if (readTag != 34) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                if (this.f20286d == null) {
                    this.f20286d = new C1588w8();
                }
                codedInputByteBufferNano.readMessage(this.f20286d);
            }
        }
    }

    public static C1389o8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1389o8().mergeFrom(codedInputByteBufferNano);
    }

    public static C1389o8 a(byte[] bArr) {
        return (C1389o8) MessageNano.mergeFrom(new C1389o8(), bArr);
    }
}
