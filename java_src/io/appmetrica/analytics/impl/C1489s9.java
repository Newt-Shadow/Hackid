package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.s9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1489s9 extends MessageNano {

    /* renamed from: e  reason: collision with root package name */
    public static volatile C1489s9[] f20587e;

    /* renamed from: a  reason: collision with root package name */
    public int f20588a;

    /* renamed from: b  reason: collision with root package name */
    public int f20589b;

    /* renamed from: c  reason: collision with root package name */
    public String f20590c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f20591d;

    public C1489s9() {
        a();
    }

    public static C1489s9[] b() {
        if (f20587e == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20587e == null) {
                    f20587e = new C1489s9[0];
                }
            }
        }
        return f20587e;
    }

    public final C1489s9 a() {
        this.f20588a = 0;
        this.f20589b = 0;
        this.f20590c = "";
        this.f20591d = false;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        int i10 = this.f20588a;
        if (i10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(1, i10);
        }
        int i11 = this.f20589b;
        if (i11 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(2, i11);
        }
        if (!this.f20590c.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(3, this.f20590c);
        }
        boolean z10 = this.f20591d;
        if (z10) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(4, z10);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        int i10 = this.f20588a;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeUInt32(1, i10);
        }
        int i11 = this.f20589b;
        if (i11 != 0) {
            codedOutputByteBufferNano.writeUInt32(2, i11);
        }
        if (!this.f20590c.equals("")) {
            codedOutputByteBufferNano.writeString(3, this.f20590c);
        }
        boolean z10 = this.f20591d;
        if (z10) {
            codedOutputByteBufferNano.writeBool(4, z10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1489s9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                this.f20588a = codedInputByteBufferNano.readUInt32();
            } else if (readTag == 16) {
                this.f20589b = codedInputByteBufferNano.readUInt32();
            } else if (readTag == 26) {
                this.f20590c = codedInputByteBufferNano.readString();
            } else if (readTag != 32) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f20591d = codedInputByteBufferNano.readBool();
            }
        }
    }

    public static C1489s9 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1489s9().mergeFrom(codedInputByteBufferNano);
    }

    public static C1489s9 a(byte[] bArr) {
        return (C1489s9) MessageNano.mergeFrom(new C1489s9(), bArr);
    }
}
