package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import io.flutter.Build;
import java.util.Arrays;
/* renamed from: io.appmetrica.analytics.impl.k6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1287k6 extends MessageNano {

    /* renamed from: k  reason: collision with root package name */
    public static final int f19907k = 0;

    /* renamed from: l  reason: collision with root package name */
    public static final int f19908l = 1;

    /* renamed from: m  reason: collision with root package name */
    public static volatile C1287k6[] f19909m;

    /* renamed from: n  reason: collision with root package name */
    public static byte[] f19910n;

    /* renamed from: o  reason: collision with root package name */
    public static volatile boolean f19911o;

    /* renamed from: a  reason: collision with root package name */
    public C1437q6 f19912a;

    /* renamed from: b  reason: collision with root package name */
    public C1188g6 f19913b;

    /* renamed from: c  reason: collision with root package name */
    public String f19914c;

    /* renamed from: d  reason: collision with root package name */
    public int f19915d;

    /* renamed from: e  reason: collision with root package name */
    public C1387o6[] f19916e;

    /* renamed from: f  reason: collision with root package name */
    public int f19917f;

    /* renamed from: g  reason: collision with root package name */
    public C1262j6 f19918g;

    /* renamed from: h  reason: collision with root package name */
    public byte[] f19919h;

    /* renamed from: i  reason: collision with root package name */
    public byte[] f19920i;

    /* renamed from: j  reason: collision with root package name */
    public C1238i6[] f19921j;

    public C1287k6() {
        if (!f19911o) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (!f19911o) {
                    f19910n = InternalNano.bytesDefaultValue("JVM");
                    f19911o = true;
                }
            }
        }
        a();
    }

    public static C1287k6[] b() {
        if (f19909m == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19909m == null) {
                    f19909m = new C1287k6[0];
                }
            }
        }
        return f19909m;
    }

    public final C1287k6 a() {
        this.f19912a = null;
        this.f19913b = null;
        this.f19914c = "";
        this.f19915d = -1;
        this.f19916e = C1387o6.b();
        this.f19917f = 0;
        this.f19918g = null;
        this.f19919h = (byte[]) f19910n.clone();
        this.f19920i = WireFormatNano.EMPTY_BYTES;
        this.f19921j = C1238i6.b();
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1437q6 c1437q6 = this.f19912a;
        if (c1437q6 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1437q6);
        }
        C1188g6 c1188g6 = this.f19913b;
        if (c1188g6 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c1188g6);
        }
        if (!this.f19914c.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(3, this.f19914c);
        }
        int i10 = this.f19915d;
        if (i10 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i10);
        }
        C1387o6[] c1387o6Arr = this.f19916e;
        int i11 = 0;
        if (c1387o6Arr != null && c1387o6Arr.length > 0) {
            int i12 = 0;
            while (true) {
                C1387o6[] c1387o6Arr2 = this.f19916e;
                if (i12 >= c1387o6Arr2.length) {
                    break;
                }
                C1387o6 c1387o6 = c1387o6Arr2[i12];
                if (c1387o6 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, c1387o6);
                }
                i12++;
            }
        }
        int i13 = this.f19917f;
        if (i13 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, i13);
        }
        C1262j6 c1262j6 = this.f19918g;
        if (c1262j6 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(7, c1262j6);
        }
        if (!Arrays.equals(this.f19919h, f19910n)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(8, this.f19919h);
        }
        if (!Arrays.equals(this.f19920i, WireFormatNano.EMPTY_BYTES)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(9, this.f19920i);
        }
        C1238i6[] c1238i6Arr = this.f19921j;
        if (c1238i6Arr != null && c1238i6Arr.length > 0) {
            while (true) {
                C1238i6[] c1238i6Arr2 = this.f19921j;
                if (i11 >= c1238i6Arr2.length) {
                    break;
                }
                C1238i6 c1238i6 = c1238i6Arr2[i11];
                if (c1238i6 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(10, c1238i6);
                }
                i11++;
            }
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1437q6 c1437q6 = this.f19912a;
        if (c1437q6 != null) {
            codedOutputByteBufferNano.writeMessage(1, c1437q6);
        }
        C1188g6 c1188g6 = this.f19913b;
        if (c1188g6 != null) {
            codedOutputByteBufferNano.writeMessage(2, c1188g6);
        }
        if (!this.f19914c.equals("")) {
            codedOutputByteBufferNano.writeString(3, this.f19914c);
        }
        int i10 = this.f19915d;
        if (i10 != -1) {
            codedOutputByteBufferNano.writeInt32(4, i10);
        }
        C1387o6[] c1387o6Arr = this.f19916e;
        int i11 = 0;
        if (c1387o6Arr != null && c1387o6Arr.length > 0) {
            int i12 = 0;
            while (true) {
                C1387o6[] c1387o6Arr2 = this.f19916e;
                if (i12 >= c1387o6Arr2.length) {
                    break;
                }
                C1387o6 c1387o6 = c1387o6Arr2[i12];
                if (c1387o6 != null) {
                    codedOutputByteBufferNano.writeMessage(5, c1387o6);
                }
                i12++;
            }
        }
        int i13 = this.f19917f;
        if (i13 != 0) {
            codedOutputByteBufferNano.writeInt32(6, i13);
        }
        C1262j6 c1262j6 = this.f19918g;
        if (c1262j6 != null) {
            codedOutputByteBufferNano.writeMessage(7, c1262j6);
        }
        if (!Arrays.equals(this.f19919h, f19910n)) {
            codedOutputByteBufferNano.writeBytes(8, this.f19919h);
        }
        if (!Arrays.equals(this.f19920i, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(9, this.f19920i);
        }
        C1238i6[] c1238i6Arr = this.f19921j;
        if (c1238i6Arr != null && c1238i6Arr.length > 0) {
            while (true) {
                C1238i6[] c1238i6Arr2 = this.f19921j;
                if (i11 >= c1238i6Arr2.length) {
                    break;
                }
                C1238i6 c1238i6 = c1238i6Arr2[i11];
                if (c1238i6 != null) {
                    codedOutputByteBufferNano.writeMessage(10, c1238i6);
                }
                i11++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1287k6 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1287k6().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1287k6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            switch (readTag) {
                case 0:
                    return this;
                case 10:
                    if (this.f19912a == null) {
                        this.f19912a = new C1437q6();
                    }
                    codedInputByteBufferNano.readMessage(this.f19912a);
                    break;
                case 18:
                    if (this.f19913b == null) {
                        this.f19913b = new C1188g6();
                    }
                    codedInputByteBufferNano.readMessage(this.f19913b);
                    break;
                case 26:
                    this.f19914c = codedInputByteBufferNano.readString();
                    break;
                case Build.API_LEVELS.API_32 /* 32 */:
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 != -1 && readInt32 != 0 && readInt32 != 1) {
                        break;
                    } else {
                        this.f19915d = readInt32;
                        break;
                    }
                case C1415p9.M /* 42 */:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 42);
                    C1387o6[] c1387o6Arr = this.f19916e;
                    int length = c1387o6Arr == null ? 0 : c1387o6Arr.length;
                    int i10 = repeatedFieldArrayLength + length;
                    C1387o6[] c1387o6Arr2 = new C1387o6[i10];
                    if (length != 0) {
                        System.arraycopy(c1387o6Arr, 0, c1387o6Arr2, 0, length);
                    }
                    while (length < i10 - 1) {
                        C1387o6 c1387o6 = new C1387o6();
                        c1387o6Arr2[length] = c1387o6;
                        codedInputByteBufferNano.readMessage(c1387o6);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    C1387o6 c1387o62 = new C1387o6();
                    c1387o6Arr2[length] = c1387o62;
                    codedInputByteBufferNano.readMessage(c1387o62);
                    this.f19916e = c1387o6Arr2;
                    break;
                case 48:
                    int readInt322 = codedInputByteBufferNano.readInt32();
                    if (readInt322 != 0 && readInt322 != 1) {
                        break;
                    } else {
                        this.f19917f = readInt322;
                        break;
                    }
                case 58:
                    if (this.f19918g == null) {
                        this.f19918g = new C1262j6();
                    }
                    codedInputByteBufferNano.readMessage(this.f19918g);
                    break;
                case 66:
                    this.f19919h = codedInputByteBufferNano.readBytes();
                    break;
                case 74:
                    this.f19920i = codedInputByteBufferNano.readBytes();
                    break;
                case 82:
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 82);
                    C1238i6[] c1238i6Arr = this.f19921j;
                    int length2 = c1238i6Arr == null ? 0 : c1238i6Arr.length;
                    int i11 = repeatedFieldArrayLength2 + length2;
                    C1238i6[] c1238i6Arr2 = new C1238i6[i11];
                    if (length2 != 0) {
                        System.arraycopy(c1238i6Arr, 0, c1238i6Arr2, 0, length2);
                    }
                    while (length2 < i11 - 1) {
                        C1238i6 c1238i6 = new C1238i6();
                        c1238i6Arr2[length2] = c1238i6;
                        codedInputByteBufferNano.readMessage(c1238i6);
                        codedInputByteBufferNano.readTag();
                        length2++;
                    }
                    C1238i6 c1238i62 = new C1238i6();
                    c1238i6Arr2[length2] = c1238i62;
                    codedInputByteBufferNano.readMessage(c1238i62);
                    this.f19921j = c1238i6Arr2;
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

    public static C1287k6 a(byte[] bArr) {
        return (C1287k6) MessageNano.mergeFrom(new C1287k6(), bArr);
    }
}
