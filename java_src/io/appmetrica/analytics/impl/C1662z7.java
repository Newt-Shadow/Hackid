package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import io.flutter.Build;
/* renamed from: io.appmetrica.analytics.impl.z7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1662z7 extends MessageNano {

    /* renamed from: k  reason: collision with root package name */
    public static volatile C1662z7[] f21021k;

    /* renamed from: a  reason: collision with root package name */
    public int f21022a;

    /* renamed from: b  reason: collision with root package name */
    public double f21023b;

    /* renamed from: c  reason: collision with root package name */
    public double f21024c;

    /* renamed from: d  reason: collision with root package name */
    public int f21025d;

    /* renamed from: e  reason: collision with root package name */
    public int f21026e;

    /* renamed from: f  reason: collision with root package name */
    public int f21027f;

    /* renamed from: g  reason: collision with root package name */
    public int f21028g;

    /* renamed from: h  reason: collision with root package name */
    public long f21029h;

    /* renamed from: i  reason: collision with root package name */
    public String f21030i;

    /* renamed from: j  reason: collision with root package name */
    public String f21031j;

    public C1662z7() {
        a();
    }

    public static C1662z7[] b() {
        if (f21021k == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f21021k == null) {
                    f21021k = new C1662z7[0];
                }
            }
        }
        return f21021k;
    }

    public final C1662z7 a() {
        this.f21022a = -1;
        this.f21023b = -1.0d;
        this.f21024c = -1.0d;
        this.f21025d = -1;
        this.f21026e = -1;
        this.f21027f = -1;
        this.f21028g = -1;
        this.f21029h = -1L;
        this.f21030i = "";
        this.f21031j = "";
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        int i10 = this.f21022a;
        if (i10 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i10);
        }
        if (Double.doubleToLongBits(this.f21023b) != Double.doubleToLongBits(-1.0d)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeDoubleSize(2, this.f21023b);
        }
        if (Double.doubleToLongBits(this.f21024c) != Double.doubleToLongBits(-1.0d)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeDoubleSize(3, this.f21024c);
        }
        int i11 = this.f21025d;
        if (i11 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i11);
        }
        int i12 = this.f21026e;
        if (i12 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, i12);
        }
        int i13 = this.f21027f;
        if (i13 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, i13);
        }
        int i14 = this.f21028g;
        if (i14 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, i14);
        }
        long j10 = this.f21029h;
        if (j10 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(8, j10);
        }
        if (!this.f21030i.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(9, this.f21030i);
        }
        if (!this.f21031j.equals("")) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(10, this.f21031j);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        int i10 = this.f21022a;
        if (i10 != -1) {
            codedOutputByteBufferNano.writeInt32(1, i10);
        }
        if (Double.doubleToLongBits(this.f21023b) != Double.doubleToLongBits(-1.0d)) {
            codedOutputByteBufferNano.writeDouble(2, this.f21023b);
        }
        if (Double.doubleToLongBits(this.f21024c) != Double.doubleToLongBits(-1.0d)) {
            codedOutputByteBufferNano.writeDouble(3, this.f21024c);
        }
        int i11 = this.f21025d;
        if (i11 != -1) {
            codedOutputByteBufferNano.writeInt32(4, i11);
        }
        int i12 = this.f21026e;
        if (i12 != -1) {
            codedOutputByteBufferNano.writeInt32(5, i12);
        }
        int i13 = this.f21027f;
        if (i13 != -1) {
            codedOutputByteBufferNano.writeInt32(6, i13);
        }
        int i14 = this.f21028g;
        if (i14 != -1) {
            codedOutputByteBufferNano.writeInt32(7, i14);
        }
        long j10 = this.f21029h;
        if (j10 != -1) {
            codedOutputByteBufferNano.writeInt64(8, j10);
        }
        if (!this.f21030i.equals("")) {
            codedOutputByteBufferNano.writeString(9, this.f21030i);
        }
        if (!this.f21031j.equals("")) {
            codedOutputByteBufferNano.writeString(10, this.f21031j);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1662z7 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1662z7().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1662z7 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            switch (readTag) {
                case 0:
                    return this;
                case 8:
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 != -1 && readInt32 != 0 && readInt32 != 1) {
                        break;
                    } else {
                        this.f21022a = readInt32;
                        break;
                    }
                case 17:
                    this.f21023b = codedInputByteBufferNano.readDouble();
                    break;
                case 25:
                    this.f21024c = codedInputByteBufferNano.readDouble();
                    break;
                case Build.API_LEVELS.API_32 /* 32 */:
                    this.f21025d = codedInputByteBufferNano.readInt32();
                    break;
                case C1415p9.L /* 40 */:
                    this.f21026e = codedInputByteBufferNano.readInt32();
                    break;
                case 48:
                    this.f21027f = codedInputByteBufferNano.readInt32();
                    break;
                case 56:
                    this.f21028g = codedInputByteBufferNano.readInt32();
                    break;
                case 64:
                    this.f21029h = codedInputByteBufferNano.readInt64();
                    break;
                case 74:
                    this.f21030i = codedInputByteBufferNano.readString();
                    break;
                case 82:
                    this.f21031j = codedInputByteBufferNano.readString();
                    break;
                default:
                    if (WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    } else {
                        return this;
                    }
            }
        }
    }

    public static C1662z7 a(byte[] bArr) {
        return (C1662z7) MessageNano.mergeFrom(new C1662z7(), bArr);
    }
}
