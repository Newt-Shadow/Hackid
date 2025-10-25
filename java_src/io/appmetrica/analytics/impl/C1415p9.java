package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import io.flutter.Build;
import java.util.Arrays;
/* renamed from: io.appmetrica.analytics.impl.p9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1415p9 extends MessageNano {
    public static final int A = 17;
    public static final int B = 18;
    public static final int C = 19;
    public static final int D = 20;
    public static final int E = 21;
    public static final int F = 25;
    public static final int G = 26;
    public static final int H = 27;
    public static final int I = 29;
    public static final int J = 35;
    public static final int K = 38;
    public static final int L = 40;
    public static final int M = 42;
    public static final int N = 0;
    public static final int O = 1;
    public static final int P = 2;
    public static final int Q = 0;
    public static final int R = 1;
    public static final int S = 2;
    public static volatile C1415p9[] T = null;

    /* renamed from: t  reason: collision with root package name */
    public static final int f20350t = 1;

    /* renamed from: u  reason: collision with root package name */
    public static final int f20351u = 2;

    /* renamed from: v  reason: collision with root package name */
    public static final int f20352v = 4;

    /* renamed from: w  reason: collision with root package name */
    public static final int f20353w = 5;

    /* renamed from: x  reason: collision with root package name */
    public static final int f20354x = 7;

    /* renamed from: y  reason: collision with root package name */
    public static final int f20355y = 13;

    /* renamed from: z  reason: collision with root package name */
    public static final int f20356z = 16;

    /* renamed from: a  reason: collision with root package name */
    public long f20357a;

    /* renamed from: b  reason: collision with root package name */
    public long f20358b;

    /* renamed from: c  reason: collision with root package name */
    public int f20359c;

    /* renamed from: d  reason: collision with root package name */
    public String f20360d;

    /* renamed from: e  reason: collision with root package name */
    public byte[] f20361e;

    /* renamed from: f  reason: collision with root package name */
    public C1290k9 f20362f;

    /* renamed from: g  reason: collision with root package name */
    public C1390o9 f20363g;

    /* renamed from: h  reason: collision with root package name */
    public String f20364h;

    /* renamed from: i  reason: collision with root package name */
    public int f20365i;

    /* renamed from: j  reason: collision with root package name */
    public int f20366j;

    /* renamed from: k  reason: collision with root package name */
    public int f20367k;

    /* renamed from: l  reason: collision with root package name */
    public byte[] f20368l;

    /* renamed from: m  reason: collision with root package name */
    public int f20369m;

    /* renamed from: n  reason: collision with root package name */
    public long f20370n;

    /* renamed from: o  reason: collision with root package name */
    public long f20371o;

    /* renamed from: p  reason: collision with root package name */
    public int f20372p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f20373q;

    /* renamed from: r  reason: collision with root package name */
    public long f20374r;

    /* renamed from: s  reason: collision with root package name */
    public C1365n9[] f20375s;

    public C1415p9() {
        a();
    }

    public static C1415p9[] b() {
        if (T == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (T == null) {
                    T = new C1415p9[0];
                }
            }
        }
        return T;
    }

    public final C1415p9 a() {
        this.f20357a = 0L;
        this.f20358b = 0L;
        this.f20359c = 0;
        this.f20360d = "";
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f20361e = bArr;
        this.f20362f = null;
        this.f20363g = null;
        this.f20364h = "";
        this.f20365i = 0;
        this.f20366j = 0;
        this.f20367k = -1;
        this.f20368l = bArr;
        this.f20369m = -1;
        this.f20370n = 0L;
        this.f20371o = 0L;
        this.f20372p = 0;
        this.f20373q = false;
        this.f20374r = 1L;
        this.f20375s = C1365n9.b();
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeUInt32Size = CodedOutputByteBufferNano.computeUInt32Size(3, this.f20359c) + CodedOutputByteBufferNano.computeUInt64Size(2, this.f20358b) + CodedOutputByteBufferNano.computeUInt64Size(1, this.f20357a) + super.computeSerializedSize();
        if (!this.f20360d.equals("")) {
            computeUInt32Size += CodedOutputByteBufferNano.computeStringSize(4, this.f20360d);
        }
        byte[] bArr = this.f20361e;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            computeUInt32Size += CodedOutputByteBufferNano.computeBytesSize(5, this.f20361e);
        }
        C1290k9 c1290k9 = this.f20362f;
        if (c1290k9 != null) {
            computeUInt32Size += CodedOutputByteBufferNano.computeMessageSize(6, c1290k9);
        }
        C1390o9 c1390o9 = this.f20363g;
        if (c1390o9 != null) {
            computeUInt32Size += CodedOutputByteBufferNano.computeMessageSize(7, c1390o9);
        }
        if (!this.f20364h.equals("")) {
            computeUInt32Size += CodedOutputByteBufferNano.computeStringSize(8, this.f20364h);
        }
        int i10 = this.f20365i;
        if (i10 != 0) {
            computeUInt32Size += CodedOutputByteBufferNano.computeUInt32Size(10, i10);
        }
        int i11 = this.f20366j;
        if (i11 != 0) {
            computeUInt32Size += CodedOutputByteBufferNano.computeInt32Size(12, i11);
        }
        int i12 = this.f20367k;
        if (i12 != -1) {
            computeUInt32Size += CodedOutputByteBufferNano.computeInt32Size(13, i12);
        }
        if (!Arrays.equals(this.f20368l, bArr2)) {
            computeUInt32Size += CodedOutputByteBufferNano.computeBytesSize(14, this.f20368l);
        }
        int i13 = this.f20369m;
        if (i13 != -1) {
            computeUInt32Size += CodedOutputByteBufferNano.computeInt32Size(15, i13);
        }
        long j10 = this.f20370n;
        if (j10 != 0) {
            computeUInt32Size += CodedOutputByteBufferNano.computeUInt64Size(16, j10);
        }
        long j11 = this.f20371o;
        if (j11 != 0) {
            computeUInt32Size += CodedOutputByteBufferNano.computeUInt64Size(17, j11);
        }
        int i14 = this.f20372p;
        if (i14 != 0) {
            computeUInt32Size += CodedOutputByteBufferNano.computeInt32Size(22, i14);
        }
        boolean z10 = this.f20373q;
        if (z10) {
            computeUInt32Size += CodedOutputByteBufferNano.computeBoolSize(23, z10);
        }
        long j12 = this.f20374r;
        if (j12 != 1) {
            computeUInt32Size += CodedOutputByteBufferNano.computeUInt64Size(24, j12);
        }
        C1365n9[] c1365n9Arr = this.f20375s;
        if (c1365n9Arr != null && c1365n9Arr.length > 0) {
            int i15 = 0;
            while (true) {
                C1365n9[] c1365n9Arr2 = this.f20375s;
                if (i15 >= c1365n9Arr2.length) {
                    break;
                }
                C1365n9 c1365n9 = c1365n9Arr2[i15];
                if (c1365n9 != null) {
                    computeUInt32Size += CodedOutputByteBufferNano.computeMessageSize(25, c1365n9);
                }
                i15++;
            }
        }
        return computeUInt32Size;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeUInt64(1, this.f20357a);
        codedOutputByteBufferNano.writeUInt64(2, this.f20358b);
        codedOutputByteBufferNano.writeUInt32(3, this.f20359c);
        if (!this.f20360d.equals("")) {
            codedOutputByteBufferNano.writeString(4, this.f20360d);
        }
        byte[] bArr = this.f20361e;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(5, this.f20361e);
        }
        C1290k9 c1290k9 = this.f20362f;
        if (c1290k9 != null) {
            codedOutputByteBufferNano.writeMessage(6, c1290k9);
        }
        C1390o9 c1390o9 = this.f20363g;
        if (c1390o9 != null) {
            codedOutputByteBufferNano.writeMessage(7, c1390o9);
        }
        if (!this.f20364h.equals("")) {
            codedOutputByteBufferNano.writeString(8, this.f20364h);
        }
        int i10 = this.f20365i;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeUInt32(10, i10);
        }
        int i11 = this.f20366j;
        if (i11 != 0) {
            codedOutputByteBufferNano.writeInt32(12, i11);
        }
        int i12 = this.f20367k;
        if (i12 != -1) {
            codedOutputByteBufferNano.writeInt32(13, i12);
        }
        if (!Arrays.equals(this.f20368l, bArr2)) {
            codedOutputByteBufferNano.writeBytes(14, this.f20368l);
        }
        int i13 = this.f20369m;
        if (i13 != -1) {
            codedOutputByteBufferNano.writeInt32(15, i13);
        }
        long j10 = this.f20370n;
        if (j10 != 0) {
            codedOutputByteBufferNano.writeUInt64(16, j10);
        }
        long j11 = this.f20371o;
        if (j11 != 0) {
            codedOutputByteBufferNano.writeUInt64(17, j11);
        }
        int i14 = this.f20372p;
        if (i14 != 0) {
            codedOutputByteBufferNano.writeInt32(22, i14);
        }
        boolean z10 = this.f20373q;
        if (z10) {
            codedOutputByteBufferNano.writeBool(23, z10);
        }
        long j12 = this.f20374r;
        if (j12 != 1) {
            codedOutputByteBufferNano.writeUInt64(24, j12);
        }
        C1365n9[] c1365n9Arr = this.f20375s;
        if (c1365n9Arr != null && c1365n9Arr.length > 0) {
            int i15 = 0;
            while (true) {
                C1365n9[] c1365n9Arr2 = this.f20375s;
                if (i15 >= c1365n9Arr2.length) {
                    break;
                }
                C1365n9 c1365n9 = c1365n9Arr2[i15];
                if (c1365n9 != null) {
                    codedOutputByteBufferNano.writeMessage(25, c1365n9);
                }
                i15++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1415p9 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1415p9().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1415p9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            switch (readTag) {
                case 0:
                    return this;
                case 8:
                    this.f20357a = codedInputByteBufferNano.readUInt64();
                    break;
                case 16:
                    this.f20358b = codedInputByteBufferNano.readUInt64();
                    break;
                case Build.API_LEVELS.API_24 /* 24 */:
                    this.f20359c = codedInputByteBufferNano.readUInt32();
                    break;
                case Build.API_LEVELS.API_34 /* 34 */:
                    this.f20360d = codedInputByteBufferNano.readString();
                    break;
                case M /* 42 */:
                    this.f20361e = codedInputByteBufferNano.readBytes();
                    break;
                case 50:
                    if (this.f20362f == null) {
                        this.f20362f = new C1290k9();
                    }
                    codedInputByteBufferNano.readMessage(this.f20362f);
                    break;
                case 58:
                    if (this.f20363g == null) {
                        this.f20363g = new C1390o9();
                    }
                    codedInputByteBufferNano.readMessage(this.f20363g);
                    break;
                case 66:
                    this.f20364h = codedInputByteBufferNano.readString();
                    break;
                case 80:
                    this.f20365i = codedInputByteBufferNano.readUInt32();
                    break;
                case 96:
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 != 0 && readInt32 != 1 && readInt32 != 2) {
                        break;
                    } else {
                        this.f20366j = readInt32;
                        break;
                    }
                case 104:
                    int readInt322 = codedInputByteBufferNano.readInt32();
                    if (readInt322 != -1 && readInt322 != 0 && readInt322 != 1) {
                        break;
                    } else {
                        this.f20367k = readInt322;
                        break;
                    }
                case 114:
                    this.f20368l = codedInputByteBufferNano.readBytes();
                    break;
                case 120:
                    int readInt323 = codedInputByteBufferNano.readInt32();
                    if (readInt323 != -1 && readInt323 != 0 && readInt323 != 1) {
                        break;
                    } else {
                        this.f20369m = readInt323;
                        break;
                    }
                case 128:
                    this.f20370n = codedInputByteBufferNano.readUInt64();
                    break;
                case 136:
                    this.f20371o = codedInputByteBufferNano.readUInt64();
                    break;
                case 176:
                    int readInt324 = codedInputByteBufferNano.readInt32();
                    if (readInt324 != 0 && readInt324 != 1 && readInt324 != 2) {
                        break;
                    } else {
                        this.f20372p = readInt324;
                        break;
                    }
                case 184:
                    this.f20373q = codedInputByteBufferNano.readBool();
                    break;
                case 192:
                    this.f20374r = codedInputByteBufferNano.readUInt64();
                    break;
                case 202:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 202);
                    C1365n9[] c1365n9Arr = this.f20375s;
                    int length = c1365n9Arr == null ? 0 : c1365n9Arr.length;
                    int i10 = repeatedFieldArrayLength + length;
                    C1365n9[] c1365n9Arr2 = new C1365n9[i10];
                    if (length != 0) {
                        System.arraycopy(c1365n9Arr, 0, c1365n9Arr2, 0, length);
                    }
                    while (length < i10 - 1) {
                        C1365n9 c1365n9 = new C1365n9();
                        c1365n9Arr2[length] = c1365n9;
                        codedInputByteBufferNano.readMessage(c1365n9);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    C1365n9 c1365n92 = new C1365n9();
                    c1365n9Arr2[length] = c1365n92;
                    codedInputByteBufferNano.readMessage(c1365n92);
                    this.f20375s = c1365n9Arr2;
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

    public static C1415p9 a(byte[] bArr) {
        return (C1415p9) MessageNano.mergeFrom(new C1415p9(), bArr);
    }
}
