package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import io.flutter.Build;
import java.util.Arrays;
/* renamed from: io.appmetrica.analytics.impl.y7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1637y7 extends MessageNano {

    /* renamed from: s  reason: collision with root package name */
    public static volatile C1637y7[] f20959s;

    /* renamed from: a  reason: collision with root package name */
    public int f20960a;

    /* renamed from: b  reason: collision with root package name */
    public String f20961b;

    /* renamed from: c  reason: collision with root package name */
    public String f20962c;

    /* renamed from: d  reason: collision with root package name */
    public long f20963d;

    /* renamed from: e  reason: collision with root package name */
    public C1662z7 f20964e;

    /* renamed from: f  reason: collision with root package name */
    public String f20965f;

    /* renamed from: g  reason: collision with root package name */
    public String f20966g;

    /* renamed from: h  reason: collision with root package name */
    public long f20967h;

    /* renamed from: i  reason: collision with root package name */
    public int f20968i;

    /* renamed from: j  reason: collision with root package name */
    public int f20969j;

    /* renamed from: k  reason: collision with root package name */
    public String f20970k;

    /* renamed from: l  reason: collision with root package name */
    public int f20971l;

    /* renamed from: m  reason: collision with root package name */
    public String f20972m;

    /* renamed from: n  reason: collision with root package name */
    public int f20973n;

    /* renamed from: o  reason: collision with root package name */
    public int f20974o;

    /* renamed from: p  reason: collision with root package name */
    public int f20975p;

    /* renamed from: q  reason: collision with root package name */
    public int f20976q;

    /* renamed from: r  reason: collision with root package name */
    public byte[] f20977r;

    public C1637y7() {
        a();
    }

    public static C1637y7[] b() {
        if (f20959s == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20959s == null) {
                    f20959s = new C1637y7[0];
                }
            }
        }
        return f20959s;
    }

    public final C1637y7 a() {
        this.f20960a = -1;
        this.f20961b = "";
        this.f20962c = "";
        this.f20963d = -1L;
        this.f20964e = null;
        this.f20965f = "";
        this.f20966g = "";
        this.f20967h = -1L;
        this.f20968i = -1;
        this.f20969j = -1;
        this.f20970k = "";
        this.f20971l = -1;
        this.f20972m = "";
        this.f20973n = -1;
        this.f20974o = -1;
        this.f20975p = -1;
        this.f20976q = -1;
        this.f20977r = WireFormatNano.EMPTY_BYTES;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        int i10 = this.f20960a;
        if (i10 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i10);
        }
        if (!this.f20961b.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f20961b);
        }
        if (!this.f20962c.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(3, this.f20962c);
        }
        long j10 = this.f20963d;
        if (j10 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(4, j10);
        }
        C1662z7 c1662z7 = this.f20964e;
        if (c1662z7 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, c1662z7);
        }
        if (!this.f20965f.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(6, this.f20965f);
        }
        if (!this.f20966g.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(7, this.f20966g);
        }
        long j11 = this.f20967h;
        if (j11 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(8, j11);
        }
        int i11 = this.f20968i;
        if (i11 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(9, i11);
        }
        int i12 = this.f20969j;
        if (i12 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(10, i12);
        }
        if (!this.f20970k.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(11, this.f20970k);
        }
        int i13 = this.f20971l;
        if (i13 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(12, i13);
        }
        if (!this.f20972m.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(13, this.f20972m);
        }
        int i14 = this.f20973n;
        if (i14 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(14, i14);
        }
        int i15 = this.f20974o;
        if (i15 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(15, i15);
        }
        int i16 = this.f20975p;
        if (i16 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(16, i16);
        }
        int i17 = this.f20976q;
        if (i17 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(17, i17);
        }
        if (!Arrays.equals(this.f20977r, WireFormatNano.EMPTY_BYTES)) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(18, this.f20977r);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        int i10 = this.f20960a;
        if (i10 != -1) {
            codedOutputByteBufferNano.writeInt32(1, i10);
        }
        if (!this.f20961b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.f20961b);
        }
        if (!this.f20962c.equals("")) {
            codedOutputByteBufferNano.writeString(3, this.f20962c);
        }
        long j10 = this.f20963d;
        if (j10 != -1) {
            codedOutputByteBufferNano.writeInt64(4, j10);
        }
        C1662z7 c1662z7 = this.f20964e;
        if (c1662z7 != null) {
            codedOutputByteBufferNano.writeMessage(5, c1662z7);
        }
        if (!this.f20965f.equals("")) {
            codedOutputByteBufferNano.writeString(6, this.f20965f);
        }
        if (!this.f20966g.equals("")) {
            codedOutputByteBufferNano.writeString(7, this.f20966g);
        }
        long j11 = this.f20967h;
        if (j11 != -1) {
            codedOutputByteBufferNano.writeInt64(8, j11);
        }
        int i11 = this.f20968i;
        if (i11 != -1) {
            codedOutputByteBufferNano.writeInt32(9, i11);
        }
        int i12 = this.f20969j;
        if (i12 != -1) {
            codedOutputByteBufferNano.writeInt32(10, i12);
        }
        if (!this.f20970k.equals("")) {
            codedOutputByteBufferNano.writeString(11, this.f20970k);
        }
        int i13 = this.f20971l;
        if (i13 != -1) {
            codedOutputByteBufferNano.writeInt32(12, i13);
        }
        if (!this.f20972m.equals("")) {
            codedOutputByteBufferNano.writeString(13, this.f20972m);
        }
        int i14 = this.f20973n;
        if (i14 != -1) {
            codedOutputByteBufferNano.writeInt32(14, i14);
        }
        int i15 = this.f20974o;
        if (i15 != -1) {
            codedOutputByteBufferNano.writeInt32(15, i15);
        }
        int i16 = this.f20975p;
        if (i16 != -1) {
            codedOutputByteBufferNano.writeInt32(16, i16);
        }
        int i17 = this.f20976q;
        if (i17 != -1) {
            codedOutputByteBufferNano.writeInt32(17, i17);
        }
        if (!Arrays.equals(this.f20977r, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(18, this.f20977r);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1637y7 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1637y7().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1637y7 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            switch (readTag) {
                case 0:
                    return this;
                case 8:
                    this.f20960a = codedInputByteBufferNano.readInt32();
                    break;
                case 18:
                    this.f20961b = codedInputByteBufferNano.readString();
                    break;
                case 26:
                    this.f20962c = codedInputByteBufferNano.readString();
                    break;
                case Build.API_LEVELS.API_32 /* 32 */:
                    this.f20963d = codedInputByteBufferNano.readInt64();
                    break;
                case C1415p9.M /* 42 */:
                    if (this.f20964e == null) {
                        this.f20964e = new C1662z7();
                    }
                    codedInputByteBufferNano.readMessage(this.f20964e);
                    break;
                case 50:
                    this.f20965f = codedInputByteBufferNano.readString();
                    break;
                case 58:
                    this.f20966g = codedInputByteBufferNano.readString();
                    break;
                case 64:
                    this.f20967h = codedInputByteBufferNano.readInt64();
                    break;
                case 72:
                    this.f20968i = codedInputByteBufferNano.readInt32();
                    break;
                case 80:
                    this.f20969j = codedInputByteBufferNano.readInt32();
                    break;
                case 90:
                    this.f20970k = codedInputByteBufferNano.readString();
                    break;
                case 96:
                    this.f20971l = codedInputByteBufferNano.readInt32();
                    break;
                case 106:
                    this.f20972m = codedInputByteBufferNano.readString();
                    break;
                case 112:
                    this.f20973n = codedInputByteBufferNano.readInt32();
                    break;
                case 120:
                    this.f20974o = codedInputByteBufferNano.readInt32();
                    break;
                case 128:
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 != -1 && readInt32 != 0 && readInt32 != 1) {
                        break;
                    } else {
                        this.f20975p = readInt32;
                        break;
                    }
                case 136:
                    this.f20976q = codedInputByteBufferNano.readInt32();
                    break;
                case 146:
                    this.f20977r = codedInputByteBufferNano.readBytes();
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

    public static C1637y7 a(byte[] bArr) {
        return (C1637y7) MessageNano.mergeFrom(new C1637y7(), bArr);
    }
}
