package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import io.flutter.Build;
import java.util.Arrays;
/* renamed from: io.appmetrica.analytics.impl.m6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1337m6 extends MessageNano {

    /* renamed from: l  reason: collision with root package name */
    public static final int f20078l = 0;

    /* renamed from: m  reason: collision with root package name */
    public static final int f20079m = 1;

    /* renamed from: n  reason: collision with root package name */
    public static volatile C1337m6[] f20080n;

    /* renamed from: o  reason: collision with root package name */
    public static byte[] f20081o;

    /* renamed from: p  reason: collision with root package name */
    public static volatile boolean f20082p;

    /* renamed from: a  reason: collision with root package name */
    public C1437q6 f20083a;

    /* renamed from: b  reason: collision with root package name */
    public C1188g6 f20084b;

    /* renamed from: c  reason: collision with root package name */
    public String f20085c;

    /* renamed from: d  reason: collision with root package name */
    public int f20086d;

    /* renamed from: e  reason: collision with root package name */
    public C1387o6[] f20087e;

    /* renamed from: f  reason: collision with root package name */
    public String f20088f;

    /* renamed from: g  reason: collision with root package name */
    public int f20089g;

    /* renamed from: h  reason: collision with root package name */
    public C1312l6 f20090h;

    /* renamed from: i  reason: collision with root package name */
    public byte[] f20091i;

    /* renamed from: j  reason: collision with root package name */
    public byte[] f20092j;

    /* renamed from: k  reason: collision with root package name */
    public C1238i6[] f20093k;

    public C1337m6() {
        if (!f20082p) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (!f20082p) {
                    f20081o = InternalNano.bytesDefaultValue("JVM");
                    f20082p = true;
                }
            }
        }
        a();
    }

    public static C1337m6[] b() {
        if (f20080n == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20080n == null) {
                    f20080n = new C1337m6[0];
                }
            }
        }
        return f20080n;
    }

    public final C1337m6 a() {
        this.f20083a = null;
        this.f20084b = null;
        this.f20085c = "";
        this.f20086d = -1;
        this.f20087e = C1387o6.b();
        this.f20088f = "";
        this.f20089g = 0;
        this.f20090h = null;
        this.f20091i = (byte[]) f20081o.clone();
        this.f20092j = WireFormatNano.EMPTY_BYTES;
        this.f20093k = C1238i6.b();
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1437q6 c1437q6 = this.f20083a;
        if (c1437q6 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1437q6);
        }
        C1188g6 c1188g6 = this.f20084b;
        if (c1188g6 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c1188g6);
        }
        if (!this.f20085c.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(3, this.f20085c);
        }
        int i10 = this.f20086d;
        if (i10 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i10);
        }
        C1387o6[] c1387o6Arr = this.f20087e;
        int i11 = 0;
        if (c1387o6Arr != null && c1387o6Arr.length > 0) {
            int i12 = 0;
            while (true) {
                C1387o6[] c1387o6Arr2 = this.f20087e;
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
        if (!this.f20088f.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(6, this.f20088f);
        }
        int i13 = this.f20089g;
        if (i13 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, i13);
        }
        C1312l6 c1312l6 = this.f20090h;
        if (c1312l6 != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(8, c1312l6);
        }
        if (!Arrays.equals(this.f20091i, f20081o)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(9, this.f20091i);
        }
        if (!Arrays.equals(this.f20092j, WireFormatNano.EMPTY_BYTES)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(10, this.f20092j);
        }
        C1238i6[] c1238i6Arr = this.f20093k;
        if (c1238i6Arr != null && c1238i6Arr.length > 0) {
            while (true) {
                C1238i6[] c1238i6Arr2 = this.f20093k;
                if (i11 >= c1238i6Arr2.length) {
                    break;
                }
                C1238i6 c1238i6 = c1238i6Arr2[i11];
                if (c1238i6 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(11, c1238i6);
                }
                i11++;
            }
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1437q6 c1437q6 = this.f20083a;
        if (c1437q6 != null) {
            codedOutputByteBufferNano.writeMessage(1, c1437q6);
        }
        C1188g6 c1188g6 = this.f20084b;
        if (c1188g6 != null) {
            codedOutputByteBufferNano.writeMessage(2, c1188g6);
        }
        if (!this.f20085c.equals("")) {
            codedOutputByteBufferNano.writeString(3, this.f20085c);
        }
        int i10 = this.f20086d;
        if (i10 != -1) {
            codedOutputByteBufferNano.writeInt32(4, i10);
        }
        C1387o6[] c1387o6Arr = this.f20087e;
        int i11 = 0;
        if (c1387o6Arr != null && c1387o6Arr.length > 0) {
            int i12 = 0;
            while (true) {
                C1387o6[] c1387o6Arr2 = this.f20087e;
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
        if (!this.f20088f.equals("")) {
            codedOutputByteBufferNano.writeString(6, this.f20088f);
        }
        int i13 = this.f20089g;
        if (i13 != 0) {
            codedOutputByteBufferNano.writeInt32(7, i13);
        }
        C1312l6 c1312l6 = this.f20090h;
        if (c1312l6 != null) {
            codedOutputByteBufferNano.writeMessage(8, c1312l6);
        }
        if (!Arrays.equals(this.f20091i, f20081o)) {
            codedOutputByteBufferNano.writeBytes(9, this.f20091i);
        }
        if (!Arrays.equals(this.f20092j, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(10, this.f20092j);
        }
        C1238i6[] c1238i6Arr = this.f20093k;
        if (c1238i6Arr != null && c1238i6Arr.length > 0) {
            while (true) {
                C1238i6[] c1238i6Arr2 = this.f20093k;
                if (i11 >= c1238i6Arr2.length) {
                    break;
                }
                C1238i6 c1238i6 = c1238i6Arr2[i11];
                if (c1238i6 != null) {
                    codedOutputByteBufferNano.writeMessage(11, c1238i6);
                }
                i11++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1337m6 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1337m6().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1337m6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            switch (readTag) {
                case 0:
                    return this;
                case 10:
                    if (this.f20083a == null) {
                        this.f20083a = new C1437q6();
                    }
                    codedInputByteBufferNano.readMessage(this.f20083a);
                    break;
                case 18:
                    if (this.f20084b == null) {
                        this.f20084b = new C1188g6();
                    }
                    codedInputByteBufferNano.readMessage(this.f20084b);
                    break;
                case 26:
                    this.f20085c = codedInputByteBufferNano.readString();
                    break;
                case Build.API_LEVELS.API_32 /* 32 */:
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 != -1 && readInt32 != 0 && readInt32 != 1) {
                        break;
                    } else {
                        this.f20086d = readInt32;
                        break;
                    }
                case C1415p9.M /* 42 */:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 42);
                    C1387o6[] c1387o6Arr = this.f20087e;
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
                    this.f20087e = c1387o6Arr2;
                    break;
                case 50:
                    this.f20088f = codedInputByteBufferNano.readString();
                    break;
                case 56:
                    int readInt322 = codedInputByteBufferNano.readInt32();
                    if (readInt322 != 0 && readInt322 != 1) {
                        break;
                    } else {
                        this.f20089g = readInt322;
                        break;
                    }
                case 66:
                    if (this.f20090h == null) {
                        this.f20090h = new C1312l6();
                    }
                    codedInputByteBufferNano.readMessage(this.f20090h);
                    break;
                case 74:
                    this.f20091i = codedInputByteBufferNano.readBytes();
                    break;
                case 82:
                    this.f20092j = codedInputByteBufferNano.readBytes();
                    break;
                case 90:
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 90);
                    C1238i6[] c1238i6Arr = this.f20093k;
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
                    this.f20093k = c1238i6Arr2;
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

    public static C1337m6 a(byte[] bArr) {
        return (C1337m6) MessageNano.mergeFrom(new C1337m6(), bArr);
    }
}
