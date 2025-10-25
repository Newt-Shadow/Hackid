package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.gm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1204gm extends MessageNano {

    /* renamed from: b  reason: collision with root package name */
    public static volatile C1204gm[] f19692b;

    /* renamed from: a  reason: collision with root package name */
    public int f19693a;

    public C1204gm() {
        a();
    }

    public static C1204gm[] b() {
        if (f19692b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19692b == null) {
                    f19692b = new C1204gm[0];
                }
            }
        }
        return f19692b;
    }

    public final C1204gm a() {
        this.f19693a = 86400;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        int i10 = this.f19693a;
        if (i10 != 86400) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeUInt32Size(1, i10);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        int i10 = this.f19693a;
        if (i10 != 86400) {
            codedOutputByteBufferNano.writeUInt32(1, i10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1204gm mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag != 8) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f19693a = codedInputByteBufferNano.readUInt32();
            }
        }
    }

    public static C1204gm a(byte[] bArr) {
        return (C1204gm) MessageNano.mergeFrom(new C1204gm(), bArr);
    }

    public static C1204gm b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1204gm().mergeFrom(codedInputByteBufferNano);
    }
}
