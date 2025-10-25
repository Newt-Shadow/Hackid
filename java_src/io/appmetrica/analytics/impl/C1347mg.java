package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.mg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1347mg extends MessageNano {

    /* renamed from: e  reason: collision with root package name */
    public static final int f20122e = 0;

    /* renamed from: f  reason: collision with root package name */
    public static final int f20123f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f20124g = 2;

    /* renamed from: h  reason: collision with root package name */
    public static volatile C1347mg[] f20125h;

    /* renamed from: a  reason: collision with root package name */
    public String f20126a;

    /* renamed from: b  reason: collision with root package name */
    public long f20127b;

    /* renamed from: c  reason: collision with root package name */
    public long f20128c;

    /* renamed from: d  reason: collision with root package name */
    public int f20129d;

    public C1347mg() {
        a();
    }

    public static C1347mg[] b() {
        if (f20125h == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20125h == null) {
                    f20125h = new C1347mg[0];
                }
            }
        }
        return f20125h;
    }

    public final C1347mg a() {
        this.f20126a = "";
        this.f20127b = 0L;
        this.f20128c = 0L;
        this.f20129d = 0;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.f20126a.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f20126a);
        }
        long j10 = this.f20127b;
        if (j10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(2, j10);
        }
        long j11 = this.f20128c;
        if (j11 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(3, j11);
        }
        int i10 = this.f20129d;
        if (i10 != 0) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(4, i10);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!this.f20126a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.f20126a);
        }
        long j10 = this.f20127b;
        if (j10 != 0) {
            codedOutputByteBufferNano.writeUInt64(2, j10);
        }
        long j11 = this.f20128c;
        if (j11 != 0) {
            codedOutputByteBufferNano.writeUInt64(3, j11);
        }
        int i10 = this.f20129d;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeInt32(4, i10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1347mg mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f20126a = codedInputByteBufferNano.readString();
            } else if (readTag == 16) {
                this.f20127b = codedInputByteBufferNano.readUInt64();
            } else if (readTag == 24) {
                this.f20128c = codedInputByteBufferNano.readUInt64();
            } else if (readTag != 32) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int readInt32 = codedInputByteBufferNano.readInt32();
                if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2) {
                    this.f20129d = readInt32;
                }
            }
        }
    }

    public static C1347mg b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1347mg().mergeFrom(codedInputByteBufferNano);
    }

    public static C1347mg a(byte[] bArr) {
        return (C1347mg) MessageNano.mergeFrom(new C1347mg(), bArr);
    }
}
