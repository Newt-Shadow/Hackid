package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import io.flutter.Build;
import org.apache.tika.pipes.PipesConfigBase;
/* renamed from: io.appmetrica.analytics.impl.im  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1253im extends MessageNano {
    public static final int E = -1;
    public static final int F = 0;
    public static final int G = 1;
    public static volatile C1253im[] H;
    public Yl A;
    public C1204gm B;
    public C1154em[] C;
    public C1104cm D;

    /* renamed from: a  reason: collision with root package name */
    public String f19788a;

    /* renamed from: b  reason: collision with root package name */
    public long f19789b;

    /* renamed from: c  reason: collision with root package name */
    public String[] f19790c;

    /* renamed from: d  reason: collision with root package name */
    public String f19791d;

    /* renamed from: e  reason: collision with root package name */
    public String f19792e;

    /* renamed from: f  reason: collision with root package name */
    public String[] f19793f;

    /* renamed from: g  reason: collision with root package name */
    public String[] f19794g;

    /* renamed from: h  reason: collision with root package name */
    public C1079bm[] f19795h;

    /* renamed from: i  reason: collision with root package name */
    public C1129dm f19796i;

    /* renamed from: j  reason: collision with root package name */
    public String f19797j;

    /* renamed from: k  reason: collision with root package name */
    public String f19798k;

    /* renamed from: l  reason: collision with root package name */
    public String f19799l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f19800m;

    /* renamed from: n  reason: collision with root package name */
    public String f19801n;

    /* renamed from: o  reason: collision with root package name */
    public String[] f19802o;

    /* renamed from: p  reason: collision with root package name */
    public C1229hm f19803p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f19804q;

    /* renamed from: r  reason: collision with root package name */
    public String f19805r;

    /* renamed from: s  reason: collision with root package name */
    public long f19806s;

    /* renamed from: t  reason: collision with root package name */
    public long f19807t;

    /* renamed from: u  reason: collision with root package name */
    public boolean f19808u;

    /* renamed from: v  reason: collision with root package name */
    public C1179fm f19809v;

    /* renamed from: w  reason: collision with root package name */
    public int f19810w;

    /* renamed from: x  reason: collision with root package name */
    public int f19811x;

    /* renamed from: y  reason: collision with root package name */
    public C1054am f19812y;

    /* renamed from: z  reason: collision with root package name */
    public Zl f19813z;

    public C1253im() {
        a();
    }

    public static C1253im[] b() {
        if (H == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (H == null) {
                    H = new C1253im[0];
                }
            }
        }
        return H;
    }

    public final C1253im a() {
        this.f19788a = "";
        this.f19789b = 0L;
        String[] strArr = WireFormatNano.EMPTY_STRING_ARRAY;
        this.f19790c = strArr;
        this.f19791d = "";
        this.f19792e = "";
        this.f19793f = strArr;
        this.f19794g = strArr;
        this.f19795h = C1079bm.b();
        this.f19796i = null;
        this.f19797j = "";
        this.f19798k = "";
        this.f19799l = "";
        this.f19800m = false;
        this.f19801n = "";
        this.f19802o = strArr;
        this.f19803p = null;
        this.f19804q = false;
        this.f19805r = "";
        this.f19806s = 0L;
        this.f19807t = 0L;
        this.f19808u = false;
        this.f19809v = null;
        this.f19810w = PipesConfigBase.DEFAULT_STALE_FETCHER_TIMEOUT_SECONDS;
        this.f19811x = 1;
        this.f19812y = null;
        this.f19813z = null;
        this.A = null;
        this.B = null;
        this.C = C1154em.b();
        this.D = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.f19788a.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f19788a);
        }
        int computeInt64Size = CodedOutputByteBufferNano.computeInt64Size(2, this.f19789b) + computeSerializedSize;
        String[] strArr = this.f19790c;
        int i10 = 0;
        if (strArr != null && strArr.length > 0) {
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            while (true) {
                String[] strArr2 = this.f19790c;
                if (i11 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i11];
                if (str != null) {
                    i13++;
                    i12 += CodedOutputByteBufferNano.computeStringSizeNoTag(str);
                }
                i11++;
            }
            computeInt64Size = computeInt64Size + i12 + i13;
        }
        if (!this.f19791d.equals("")) {
            computeInt64Size += CodedOutputByteBufferNano.computeStringSize(4, this.f19791d);
        }
        if (!this.f19792e.equals("")) {
            computeInt64Size += CodedOutputByteBufferNano.computeStringSize(5, this.f19792e);
        }
        String[] strArr3 = this.f19793f;
        if (strArr3 != null && strArr3.length > 0) {
            int i14 = 0;
            int i15 = 0;
            int i16 = 0;
            while (true) {
                String[] strArr4 = this.f19793f;
                if (i14 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i14];
                if (str2 != null) {
                    i16++;
                    i15 += CodedOutputByteBufferNano.computeStringSizeNoTag(str2);
                }
                i14++;
            }
            computeInt64Size = computeInt64Size + i15 + i16;
        }
        String[] strArr5 = this.f19794g;
        if (strArr5 != null && strArr5.length > 0) {
            int i17 = 0;
            int i18 = 0;
            int i19 = 0;
            while (true) {
                String[] strArr6 = this.f19794g;
                if (i17 >= strArr6.length) {
                    break;
                }
                String str3 = strArr6[i17];
                if (str3 != null) {
                    i19++;
                    i18 += CodedOutputByteBufferNano.computeStringSizeNoTag(str3);
                }
                i17++;
            }
            computeInt64Size = computeInt64Size + i18 + i19;
        }
        C1079bm[] c1079bmArr = this.f19795h;
        if (c1079bmArr != null && c1079bmArr.length > 0) {
            int i20 = 0;
            while (true) {
                C1079bm[] c1079bmArr2 = this.f19795h;
                if (i20 >= c1079bmArr2.length) {
                    break;
                }
                C1079bm c1079bm = c1079bmArr2[i20];
                if (c1079bm != null) {
                    computeInt64Size += CodedOutputByteBufferNano.computeMessageSize(8, c1079bm);
                }
                i20++;
            }
        }
        C1129dm c1129dm = this.f19796i;
        if (c1129dm != null) {
            computeInt64Size += CodedOutputByteBufferNano.computeMessageSize(9, c1129dm);
        }
        if (!this.f19797j.equals("")) {
            computeInt64Size += CodedOutputByteBufferNano.computeStringSize(10, this.f19797j);
        }
        if (!this.f19798k.equals("")) {
            computeInt64Size += CodedOutputByteBufferNano.computeStringSize(11, this.f19798k);
        }
        if (!this.f19799l.equals("")) {
            computeInt64Size += CodedOutputByteBufferNano.computeStringSize(12, this.f19799l);
        }
        int computeBoolSize = CodedOutputByteBufferNano.computeBoolSize(13, this.f19800m) + computeInt64Size;
        if (!this.f19801n.equals("")) {
            computeBoolSize += CodedOutputByteBufferNano.computeStringSize(14, this.f19801n);
        }
        String[] strArr7 = this.f19802o;
        if (strArr7 != null && strArr7.length > 0) {
            int i21 = 0;
            int i22 = 0;
            int i23 = 0;
            while (true) {
                String[] strArr8 = this.f19802o;
                if (i21 >= strArr8.length) {
                    break;
                }
                String str4 = strArr8[i21];
                if (str4 != null) {
                    i23++;
                    i22 += CodedOutputByteBufferNano.computeStringSizeNoTag(str4);
                }
                i21++;
            }
            computeBoolSize = computeBoolSize + i22 + i23;
        }
        C1229hm c1229hm = this.f19803p;
        if (c1229hm != null) {
            computeBoolSize += CodedOutputByteBufferNano.computeMessageSize(16, c1229hm);
        }
        boolean z10 = this.f19804q;
        if (z10) {
            computeBoolSize += CodedOutputByteBufferNano.computeBoolSize(17, z10);
        }
        if (!this.f19805r.equals("")) {
            computeBoolSize += CodedOutputByteBufferNano.computeStringSize(20, this.f19805r);
        }
        int computeInt64Size2 = CodedOutputByteBufferNano.computeInt64Size(22, this.f19807t) + CodedOutputByteBufferNano.computeInt64Size(21, this.f19806s) + computeBoolSize;
        boolean z11 = this.f19808u;
        if (z11) {
            computeInt64Size2 += CodedOutputByteBufferNano.computeBoolSize(23, z11);
        }
        C1179fm c1179fm = this.f19809v;
        if (c1179fm != null) {
            computeInt64Size2 += CodedOutputByteBufferNano.computeMessageSize(24, c1179fm);
        }
        int computeInt32Size = CodedOutputByteBufferNano.computeInt32Size(26, this.f19811x) + CodedOutputByteBufferNano.computeInt32Size(25, this.f19810w) + computeInt64Size2;
        C1054am c1054am = this.f19812y;
        if (c1054am != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(27, c1054am);
        }
        Zl zl = this.f19813z;
        if (zl != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(28, zl);
        }
        Yl yl = this.A;
        if (yl != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(29, yl);
        }
        C1204gm c1204gm = this.B;
        if (c1204gm != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(30, c1204gm);
        }
        C1154em[] c1154emArr = this.C;
        if (c1154emArr != null && c1154emArr.length > 0) {
            while (true) {
                C1154em[] c1154emArr2 = this.C;
                if (i10 >= c1154emArr2.length) {
                    break;
                }
                C1154em c1154em = c1154emArr2[i10];
                if (c1154em != null) {
                    computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(31, c1154em);
                }
                i10++;
            }
        }
        C1104cm c1104cm = this.D;
        if (c1104cm != null) {
            return computeInt32Size + CodedOutputByteBufferNano.computeMessageSize(32, c1104cm);
        }
        return computeInt32Size;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!this.f19788a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.f19788a);
        }
        codedOutputByteBufferNano.writeInt64(2, this.f19789b);
        String[] strArr = this.f19790c;
        int i10 = 0;
        if (strArr != null && strArr.length > 0) {
            int i11 = 0;
            while (true) {
                String[] strArr2 = this.f19790c;
                if (i11 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i11];
                if (str != null) {
                    codedOutputByteBufferNano.writeString(3, str);
                }
                i11++;
            }
        }
        if (!this.f19791d.equals("")) {
            codedOutputByteBufferNano.writeString(4, this.f19791d);
        }
        if (!this.f19792e.equals("")) {
            codedOutputByteBufferNano.writeString(5, this.f19792e);
        }
        String[] strArr3 = this.f19793f;
        if (strArr3 != null && strArr3.length > 0) {
            int i12 = 0;
            while (true) {
                String[] strArr4 = this.f19793f;
                if (i12 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i12];
                if (str2 != null) {
                    codedOutputByteBufferNano.writeString(6, str2);
                }
                i12++;
            }
        }
        String[] strArr5 = this.f19794g;
        if (strArr5 != null && strArr5.length > 0) {
            int i13 = 0;
            while (true) {
                String[] strArr6 = this.f19794g;
                if (i13 >= strArr6.length) {
                    break;
                }
                String str3 = strArr6[i13];
                if (str3 != null) {
                    codedOutputByteBufferNano.writeString(7, str3);
                }
                i13++;
            }
        }
        C1079bm[] c1079bmArr = this.f19795h;
        if (c1079bmArr != null && c1079bmArr.length > 0) {
            int i14 = 0;
            while (true) {
                C1079bm[] c1079bmArr2 = this.f19795h;
                if (i14 >= c1079bmArr2.length) {
                    break;
                }
                C1079bm c1079bm = c1079bmArr2[i14];
                if (c1079bm != null) {
                    codedOutputByteBufferNano.writeMessage(8, c1079bm);
                }
                i14++;
            }
        }
        C1129dm c1129dm = this.f19796i;
        if (c1129dm != null) {
            codedOutputByteBufferNano.writeMessage(9, c1129dm);
        }
        if (!this.f19797j.equals("")) {
            codedOutputByteBufferNano.writeString(10, this.f19797j);
        }
        if (!this.f19798k.equals("")) {
            codedOutputByteBufferNano.writeString(11, this.f19798k);
        }
        if (!this.f19799l.equals("")) {
            codedOutputByteBufferNano.writeString(12, this.f19799l);
        }
        codedOutputByteBufferNano.writeBool(13, this.f19800m);
        if (!this.f19801n.equals("")) {
            codedOutputByteBufferNano.writeString(14, this.f19801n);
        }
        String[] strArr7 = this.f19802o;
        if (strArr7 != null && strArr7.length > 0) {
            int i15 = 0;
            while (true) {
                String[] strArr8 = this.f19802o;
                if (i15 >= strArr8.length) {
                    break;
                }
                String str4 = strArr8[i15];
                if (str4 != null) {
                    codedOutputByteBufferNano.writeString(15, str4);
                }
                i15++;
            }
        }
        C1229hm c1229hm = this.f19803p;
        if (c1229hm != null) {
            codedOutputByteBufferNano.writeMessage(16, c1229hm);
        }
        boolean z10 = this.f19804q;
        if (z10) {
            codedOutputByteBufferNano.writeBool(17, z10);
        }
        if (!this.f19805r.equals("")) {
            codedOutputByteBufferNano.writeString(20, this.f19805r);
        }
        codedOutputByteBufferNano.writeInt64(21, this.f19806s);
        codedOutputByteBufferNano.writeInt64(22, this.f19807t);
        boolean z11 = this.f19808u;
        if (z11) {
            codedOutputByteBufferNano.writeBool(23, z11);
        }
        C1179fm c1179fm = this.f19809v;
        if (c1179fm != null) {
            codedOutputByteBufferNano.writeMessage(24, c1179fm);
        }
        codedOutputByteBufferNano.writeInt32(25, this.f19810w);
        codedOutputByteBufferNano.writeInt32(26, this.f19811x);
        C1054am c1054am = this.f19812y;
        if (c1054am != null) {
            codedOutputByteBufferNano.writeMessage(27, c1054am);
        }
        Zl zl = this.f19813z;
        if (zl != null) {
            codedOutputByteBufferNano.writeMessage(28, zl);
        }
        Yl yl = this.A;
        if (yl != null) {
            codedOutputByteBufferNano.writeMessage(29, yl);
        }
        C1204gm c1204gm = this.B;
        if (c1204gm != null) {
            codedOutputByteBufferNano.writeMessage(30, c1204gm);
        }
        C1154em[] c1154emArr = this.C;
        if (c1154emArr != null && c1154emArr.length > 0) {
            while (true) {
                C1154em[] c1154emArr2 = this.C;
                if (i10 >= c1154emArr2.length) {
                    break;
                }
                C1154em c1154em = c1154emArr2[i10];
                if (c1154em != null) {
                    codedOutputByteBufferNano.writeMessage(31, c1154em);
                }
                i10++;
            }
        }
        C1104cm c1104cm = this.D;
        if (c1104cm != null) {
            codedOutputByteBufferNano.writeMessage(32, c1104cm);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1253im b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1253im().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1253im mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            switch (readTag) {
                case 0:
                    return this;
                case 10:
                    this.f19788a = codedInputByteBufferNano.readString();
                    break;
                case 16:
                    this.f19789b = codedInputByteBufferNano.readInt64();
                    break;
                case 26:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                    String[] strArr = this.f19790c;
                    int length = strArr == null ? 0 : strArr.length;
                    int i10 = repeatedFieldArrayLength + length;
                    String[] strArr2 = new String[i10];
                    if (length != 0) {
                        System.arraycopy(strArr, 0, strArr2, 0, length);
                    }
                    while (length < i10 - 1) {
                        strArr2[length] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    strArr2[length] = codedInputByteBufferNano.readString();
                    this.f19790c = strArr2;
                    break;
                case Build.API_LEVELS.API_34 /* 34 */:
                    this.f19791d = codedInputByteBufferNano.readString();
                    break;
                case C1415p9.M /* 42 */:
                    this.f19792e = codedInputByteBufferNano.readString();
                    break;
                case 50:
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 50);
                    String[] strArr3 = this.f19793f;
                    int length2 = strArr3 == null ? 0 : strArr3.length;
                    int i11 = repeatedFieldArrayLength2 + length2;
                    String[] strArr4 = new String[i11];
                    if (length2 != 0) {
                        System.arraycopy(strArr3, 0, strArr4, 0, length2);
                    }
                    while (length2 < i11 - 1) {
                        strArr4[length2] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length2++;
                    }
                    strArr4[length2] = codedInputByteBufferNano.readString();
                    this.f19793f = strArr4;
                    break;
                case 58:
                    int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 58);
                    String[] strArr5 = this.f19794g;
                    int length3 = strArr5 == null ? 0 : strArr5.length;
                    int i12 = repeatedFieldArrayLength3 + length3;
                    String[] strArr6 = new String[i12];
                    if (length3 != 0) {
                        System.arraycopy(strArr5, 0, strArr6, 0, length3);
                    }
                    while (length3 < i12 - 1) {
                        strArr6[length3] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length3++;
                    }
                    strArr6[length3] = codedInputByteBufferNano.readString();
                    this.f19794g = strArr6;
                    break;
                case 66:
                    int repeatedFieldArrayLength4 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 66);
                    C1079bm[] c1079bmArr = this.f19795h;
                    int length4 = c1079bmArr == null ? 0 : c1079bmArr.length;
                    int i13 = repeatedFieldArrayLength4 + length4;
                    C1079bm[] c1079bmArr2 = new C1079bm[i13];
                    if (length4 != 0) {
                        System.arraycopy(c1079bmArr, 0, c1079bmArr2, 0, length4);
                    }
                    while (length4 < i13 - 1) {
                        C1079bm c1079bm = new C1079bm();
                        c1079bmArr2[length4] = c1079bm;
                        codedInputByteBufferNano.readMessage(c1079bm);
                        codedInputByteBufferNano.readTag();
                        length4++;
                    }
                    C1079bm c1079bm2 = new C1079bm();
                    c1079bmArr2[length4] = c1079bm2;
                    codedInputByteBufferNano.readMessage(c1079bm2);
                    this.f19795h = c1079bmArr2;
                    break;
                case 74:
                    if (this.f19796i == null) {
                        this.f19796i = new C1129dm();
                    }
                    codedInputByteBufferNano.readMessage(this.f19796i);
                    break;
                case 82:
                    this.f19797j = codedInputByteBufferNano.readString();
                    break;
                case 90:
                    this.f19798k = codedInputByteBufferNano.readString();
                    break;
                case 98:
                    this.f19799l = codedInputByteBufferNano.readString();
                    break;
                case 104:
                    this.f19800m = codedInputByteBufferNano.readBool();
                    break;
                case 114:
                    this.f19801n = codedInputByteBufferNano.readString();
                    break;
                case 122:
                    int repeatedFieldArrayLength5 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 122);
                    String[] strArr7 = this.f19802o;
                    int length5 = strArr7 == null ? 0 : strArr7.length;
                    int i14 = repeatedFieldArrayLength5 + length5;
                    String[] strArr8 = new String[i14];
                    if (length5 != 0) {
                        System.arraycopy(strArr7, 0, strArr8, 0, length5);
                    }
                    while (length5 < i14 - 1) {
                        strArr8[length5] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length5++;
                    }
                    strArr8[length5] = codedInputByteBufferNano.readString();
                    this.f19802o = strArr8;
                    break;
                case 130:
                    if (this.f19803p == null) {
                        this.f19803p = new C1229hm();
                    }
                    codedInputByteBufferNano.readMessage(this.f19803p);
                    break;
                case 136:
                    this.f19804q = codedInputByteBufferNano.readBool();
                    break;
                case 162:
                    this.f19805r = codedInputByteBufferNano.readString();
                    break;
                case 168:
                    this.f19806s = codedInputByteBufferNano.readInt64();
                    break;
                case 176:
                    this.f19807t = codedInputByteBufferNano.readInt64();
                    break;
                case 184:
                    this.f19808u = codedInputByteBufferNano.readBool();
                    break;
                case 194:
                    if (this.f19809v == null) {
                        this.f19809v = new C1179fm();
                    }
                    codedInputByteBufferNano.readMessage(this.f19809v);
                    break;
                case 200:
                    this.f19810w = codedInputByteBufferNano.readInt32();
                    break;
                case 208:
                    this.f19811x = codedInputByteBufferNano.readInt32();
                    break;
                case 218:
                    if (this.f19812y == null) {
                        this.f19812y = new C1054am();
                    }
                    codedInputByteBufferNano.readMessage(this.f19812y);
                    break;
                case 226:
                    if (this.f19813z == null) {
                        this.f19813z = new Zl();
                    }
                    codedInputByteBufferNano.readMessage(this.f19813z);
                    break;
                case 234:
                    if (this.A == null) {
                        this.A = new Yl();
                    }
                    codedInputByteBufferNano.readMessage(this.A);
                    break;
                case 242:
                    if (this.B == null) {
                        this.B = new C1204gm();
                    }
                    codedInputByteBufferNano.readMessage(this.B);
                    break;
                case 250:
                    int repeatedFieldArrayLength6 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 250);
                    C1154em[] c1154emArr = this.C;
                    int length6 = c1154emArr == null ? 0 : c1154emArr.length;
                    int i15 = repeatedFieldArrayLength6 + length6;
                    C1154em[] c1154emArr2 = new C1154em[i15];
                    if (length6 != 0) {
                        System.arraycopy(c1154emArr, 0, c1154emArr2, 0, length6);
                    }
                    while (length6 < i15 - 1) {
                        C1154em c1154em = new C1154em();
                        c1154emArr2[length6] = c1154em;
                        codedInputByteBufferNano.readMessage(c1154em);
                        codedInputByteBufferNano.readTag();
                        length6++;
                    }
                    C1154em c1154em2 = new C1154em();
                    c1154emArr2[length6] = c1154em2;
                    codedInputByteBufferNano.readMessage(c1154em2);
                    this.C = c1154emArr2;
                    break;
                case 258:
                    if (this.D == null) {
                        this.D = new C1104cm();
                    }
                    codedInputByteBufferNano.readMessage(this.D);
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

    public static C1253im a(byte[] bArr) {
        return (C1253im) MessageNano.mergeFrom(new C1253im(), bArr);
    }
}
