package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.k9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1290k9 extends MessageNano {

    /* renamed from: j  reason: collision with root package name */
    public static final int f19942j = 0;

    /* renamed from: k  reason: collision with root package name */
    public static final int f19943k = 1;

    /* renamed from: l  reason: collision with root package name */
    public static final int f19944l = 2;

    /* renamed from: m  reason: collision with root package name */
    public static volatile C1290k9[] f19945m;

    /* renamed from: a  reason: collision with root package name */
    public double f19946a;

    /* renamed from: b  reason: collision with root package name */
    public double f19947b;

    /* renamed from: c  reason: collision with root package name */
    public long f19948c;

    /* renamed from: d  reason: collision with root package name */
    public int f19949d;

    /* renamed from: e  reason: collision with root package name */
    public int f19950e;

    /* renamed from: f  reason: collision with root package name */
    public int f19951f;

    /* renamed from: g  reason: collision with root package name */
    public int f19952g;

    /* renamed from: h  reason: collision with root package name */
    public int f19953h;

    /* renamed from: i  reason: collision with root package name */
    public String f19954i;

    public C1290k9() {
        a();
    }

    public static C1290k9[] b() {
        if (f19945m == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19945m == null) {
                    f19945m = new C1290k9[0];
                }
            }
        }
        return f19945m;
    }

    public final C1290k9 a() {
        this.f19946a = 0.0d;
        this.f19947b = 0.0d;
        this.f19948c = 0L;
        this.f19949d = 0;
        this.f19950e = 0;
        this.f19951f = 0;
        this.f19952g = 0;
        this.f19953h = 0;
        this.f19954i = "";
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeDoubleSize = CodedOutputByteBufferNano.computeDoubleSize(2, this.f19947b) + CodedOutputByteBufferNano.computeDoubleSize(1, this.f19946a) + super.computeSerializedSize();
        long j10 = this.f19948c;
        if (j10 != 0) {
            computeDoubleSize += CodedOutputByteBufferNano.computeUInt64Size(3, j10);
        }
        int i10 = this.f19949d;
        if (i10 != 0) {
            computeDoubleSize += CodedOutputByteBufferNano.computeUInt32Size(4, i10);
        }
        int i11 = this.f19950e;
        if (i11 != 0) {
            computeDoubleSize += CodedOutputByteBufferNano.computeUInt32Size(5, i11);
        }
        int i12 = this.f19951f;
        if (i12 != 0) {
            computeDoubleSize += CodedOutputByteBufferNano.computeUInt32Size(6, i12);
        }
        int i13 = this.f19952g;
        if (i13 != 0) {
            computeDoubleSize += CodedOutputByteBufferNano.computeInt32Size(7, i13);
        }
        int i14 = this.f19953h;
        if (i14 != 0) {
            computeDoubleSize += CodedOutputByteBufferNano.computeInt32Size(8, i14);
        }
        if (!this.f19954i.equals("")) {
            return computeDoubleSize + CodedOutputByteBufferNano.computeStringSize(9, this.f19954i);
        }
        return computeDoubleSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeDouble(1, this.f19946a);
        codedOutputByteBufferNano.writeDouble(2, this.f19947b);
        long j10 = this.f19948c;
        if (j10 != 0) {
            codedOutputByteBufferNano.writeUInt64(3, j10);
        }
        int i10 = this.f19949d;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeUInt32(4, i10);
        }
        int i11 = this.f19950e;
        if (i11 != 0) {
            codedOutputByteBufferNano.writeUInt32(5, i11);
        }
        int i12 = this.f19951f;
        if (i12 != 0) {
            codedOutputByteBufferNano.writeUInt32(6, i12);
        }
        int i13 = this.f19952g;
        if (i13 != 0) {
            codedOutputByteBufferNano.writeInt32(7, i13);
        }
        int i14 = this.f19953h;
        if (i14 != 0) {
            codedOutputByteBufferNano.writeInt32(8, i14);
        }
        if (!this.f19954i.equals("")) {
            codedOutputByteBufferNano.writeString(9, this.f19954i);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1290k9 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1290k9().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1290k9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 9) {
                this.f19946a = codedInputByteBufferNano.readDouble();
            } else if (readTag == 17) {
                this.f19947b = codedInputByteBufferNano.readDouble();
            } else if (readTag == 24) {
                this.f19948c = codedInputByteBufferNano.readUInt64();
            } else if (readTag == 32) {
                this.f19949d = codedInputByteBufferNano.readUInt32();
            } else if (readTag == 40) {
                this.f19950e = codedInputByteBufferNano.readUInt32();
            } else if (readTag == 48) {
                this.f19951f = codedInputByteBufferNano.readUInt32();
            } else if (readTag == 56) {
                this.f19952g = codedInputByteBufferNano.readInt32();
            } else if (readTag == 64) {
                int readInt32 = codedInputByteBufferNano.readInt32();
                if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2) {
                    this.f19953h = readInt32;
                }
            } else if (readTag != 74) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f19954i = codedInputByteBufferNano.readString();
            }
        }
    }

    public static C1290k9 a(byte[] bArr) {
        return (C1290k9) MessageNano.mergeFrom(new C1290k9(), bArr);
    }
}
