package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import io.flutter.Build;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class r extends MessageNano {

    /* renamed from: l  reason: collision with root package name */
    public static final int f20464l = 0;

    /* renamed from: m  reason: collision with root package name */
    public static final int f20465m = 1;

    /* renamed from: n  reason: collision with root package name */
    public static final int f20466n = 2;

    /* renamed from: o  reason: collision with root package name */
    public static final int f20467o = 3;

    /* renamed from: p  reason: collision with root package name */
    public static final int f20468p = 4;

    /* renamed from: q  reason: collision with root package name */
    public static final int f20469q = 5;

    /* renamed from: r  reason: collision with root package name */
    public static final int f20470r = 6;

    /* renamed from: s  reason: collision with root package name */
    public static final int f20471s = 7;

    /* renamed from: t  reason: collision with root package name */
    public static volatile r[] f20472t;

    /* renamed from: u  reason: collision with root package name */
    public static byte[] f20473u;

    /* renamed from: v  reason: collision with root package name */
    public static volatile boolean f20474v;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f20475a;

    /* renamed from: b  reason: collision with root package name */
    public C1430q f20476b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f20477c;

    /* renamed from: d  reason: collision with root package name */
    public int f20478d;

    /* renamed from: e  reason: collision with root package name */
    public byte[] f20479e;

    /* renamed from: f  reason: collision with root package name */
    public byte[] f20480f;

    /* renamed from: g  reason: collision with root package name */
    public byte[] f20481g;

    /* renamed from: h  reason: collision with root package name */
    public byte[] f20482h;

    /* renamed from: i  reason: collision with root package name */
    public byte[] f20483i;

    /* renamed from: j  reason: collision with root package name */
    public byte[] f20484j;

    /* renamed from: k  reason: collision with root package name */
    public byte[] f20485k;

    public r() {
        if (!f20474v) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (!f20474v) {
                    f20473u = InternalNano.bytesDefaultValue("manual");
                    f20474v = true;
                }
            }
        }
        a();
    }

    public static r[] b() {
        if (f20472t == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20472t == null) {
                    f20472t = new r[0];
                }
            }
        }
        return f20472t;
    }

    public final r a() {
        this.f20475a = (byte[]) f20473u.clone();
        this.f20476b = null;
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f20477c = bArr;
        this.f20478d = 0;
        this.f20479e = bArr;
        this.f20480f = bArr;
        this.f20481g = bArr;
        this.f20482h = bArr;
        this.f20483i = bArr;
        this.f20484j = bArr;
        this.f20485k = bArr;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!Arrays.equals(this.f20475a, f20473u)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f20475a);
        }
        C1430q c1430q = this.f20476b;
        if (c1430q != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c1430q);
        }
        byte[] bArr = this.f20477c;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(3, this.f20477c);
        }
        int i10 = this.f20478d;
        if (i10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i10);
        }
        if (!Arrays.equals(this.f20479e, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(5, this.f20479e);
        }
        if (!Arrays.equals(this.f20480f, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(6, this.f20480f);
        }
        if (!Arrays.equals(this.f20481g, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(7, this.f20481g);
        }
        if (!Arrays.equals(this.f20482h, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(8, this.f20482h);
        }
        if (!Arrays.equals(this.f20483i, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(9, this.f20483i);
        }
        if (!Arrays.equals(this.f20484j, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(10, this.f20484j);
        }
        if (!Arrays.equals(this.f20485k, bArr2)) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(11, this.f20485k);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!Arrays.equals(this.f20475a, f20473u)) {
            codedOutputByteBufferNano.writeBytes(1, this.f20475a);
        }
        C1430q c1430q = this.f20476b;
        if (c1430q != null) {
            codedOutputByteBufferNano.writeMessage(2, c1430q);
        }
        byte[] bArr = this.f20477c;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(3, this.f20477c);
        }
        int i10 = this.f20478d;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeInt32(4, i10);
        }
        if (!Arrays.equals(this.f20479e, bArr2)) {
            codedOutputByteBufferNano.writeBytes(5, this.f20479e);
        }
        if (!Arrays.equals(this.f20480f, bArr2)) {
            codedOutputByteBufferNano.writeBytes(6, this.f20480f);
        }
        if (!Arrays.equals(this.f20481g, bArr2)) {
            codedOutputByteBufferNano.writeBytes(7, this.f20481g);
        }
        if (!Arrays.equals(this.f20482h, bArr2)) {
            codedOutputByteBufferNano.writeBytes(8, this.f20482h);
        }
        if (!Arrays.equals(this.f20483i, bArr2)) {
            codedOutputByteBufferNano.writeBytes(9, this.f20483i);
        }
        if (!Arrays.equals(this.f20484j, bArr2)) {
            codedOutputByteBufferNano.writeBytes(10, this.f20484j);
        }
        if (!Arrays.equals(this.f20485k, bArr2)) {
            codedOutputByteBufferNano.writeBytes(11, this.f20485k);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static r b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new r().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final r mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            switch (readTag) {
                case 0:
                    return this;
                case 10:
                    this.f20475a = codedInputByteBufferNano.readBytes();
                    break;
                case 18:
                    if (this.f20476b == null) {
                        this.f20476b = new C1430q();
                    }
                    codedInputByteBufferNano.readMessage(this.f20476b);
                    break;
                case 26:
                    this.f20477c = codedInputByteBufferNano.readBytes();
                    break;
                case Build.API_LEVELS.API_32 /* 32 */:
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
                            this.f20478d = readInt32;
                            continue;
                    }
                case C1415p9.M /* 42 */:
                    this.f20479e = codedInputByteBufferNano.readBytes();
                    break;
                case 50:
                    this.f20480f = codedInputByteBufferNano.readBytes();
                    break;
                case 58:
                    this.f20481g = codedInputByteBufferNano.readBytes();
                    break;
                case 66:
                    this.f20482h = codedInputByteBufferNano.readBytes();
                    break;
                case 74:
                    this.f20483i = codedInputByteBufferNano.readBytes();
                    break;
                case 82:
                    this.f20484j = codedInputByteBufferNano.readBytes();
                    break;
                case 90:
                    this.f20485k = codedInputByteBufferNano.readBytes();
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

    public static r a(byte[] bArr) {
        return (r) MessageNano.mergeFrom(new r(), bArr);
    }
}
