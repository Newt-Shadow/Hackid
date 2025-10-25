package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import io.flutter.Build;
/* renamed from: io.appmetrica.analytics.impl.m9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1340m9 extends MessageNano {

    /* renamed from: n  reason: collision with root package name */
    public static volatile C1340m9[] f20099n;

    /* renamed from: a  reason: collision with root package name */
    public String f20100a;

    /* renamed from: b  reason: collision with root package name */
    public String f20101b;

    /* renamed from: c  reason: collision with root package name */
    public String f20102c;

    /* renamed from: d  reason: collision with root package name */
    public int f20103d;

    /* renamed from: e  reason: collision with root package name */
    public String f20104e;

    /* renamed from: f  reason: collision with root package name */
    public String f20105f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f20106g;

    /* renamed from: h  reason: collision with root package name */
    public int f20107h;

    /* renamed from: i  reason: collision with root package name */
    public String f20108i;

    /* renamed from: j  reason: collision with root package name */
    public String f20109j;

    /* renamed from: k  reason: collision with root package name */
    public int f20110k;

    /* renamed from: l  reason: collision with root package name */
    public C1315l9[] f20111l;

    /* renamed from: m  reason: collision with root package name */
    public String f20112m;

    public C1340m9() {
        a();
    }

    public static C1340m9[] b() {
        if (f20099n == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20099n == null) {
                    f20099n = new C1340m9[0];
                }
            }
        }
        return f20099n;
    }

    public final C1340m9 a() {
        this.f20100a = "";
        this.f20101b = "";
        this.f20102c = "";
        this.f20103d = 0;
        this.f20104e = "";
        this.f20105f = "";
        this.f20106g = false;
        this.f20107h = 0;
        this.f20108i = "";
        this.f20109j = "";
        this.f20110k = 0;
        this.f20111l = C1315l9.b();
        this.f20112m = "";
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.f20100a.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f20100a);
        }
        if (!this.f20101b.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f20101b);
        }
        if (!this.f20102c.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(4, this.f20102c);
        }
        int i10 = this.f20103d;
        if (i10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(5, i10);
        }
        if (!this.f20104e.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(10, this.f20104e);
        }
        if (!this.f20105f.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(15, this.f20105f);
        }
        boolean z10 = this.f20106g;
        if (z10) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(17, z10);
        }
        int i11 = this.f20107h;
        if (i11 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(18, i11);
        }
        if (!this.f20108i.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(19, this.f20108i);
        }
        if (!this.f20109j.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(21, this.f20109j);
        }
        int i12 = this.f20110k;
        if (i12 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(22, i12);
        }
        C1315l9[] c1315l9Arr = this.f20111l;
        if (c1315l9Arr != null && c1315l9Arr.length > 0) {
            int i13 = 0;
            while (true) {
                C1315l9[] c1315l9Arr2 = this.f20111l;
                if (i13 >= c1315l9Arr2.length) {
                    break;
                }
                C1315l9 c1315l9 = c1315l9Arr2[i13];
                if (c1315l9 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(23, c1315l9);
                }
                i13++;
            }
        }
        if (!this.f20112m.equals("")) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(24, this.f20112m);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!this.f20100a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.f20100a);
        }
        if (!this.f20101b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.f20101b);
        }
        if (!this.f20102c.equals("")) {
            codedOutputByteBufferNano.writeString(4, this.f20102c);
        }
        int i10 = this.f20103d;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeUInt32(5, i10);
        }
        if (!this.f20104e.equals("")) {
            codedOutputByteBufferNano.writeString(10, this.f20104e);
        }
        if (!this.f20105f.equals("")) {
            codedOutputByteBufferNano.writeString(15, this.f20105f);
        }
        boolean z10 = this.f20106g;
        if (z10) {
            codedOutputByteBufferNano.writeBool(17, z10);
        }
        int i11 = this.f20107h;
        if (i11 != 0) {
            codedOutputByteBufferNano.writeUInt32(18, i11);
        }
        if (!this.f20108i.equals("")) {
            codedOutputByteBufferNano.writeString(19, this.f20108i);
        }
        if (!this.f20109j.equals("")) {
            codedOutputByteBufferNano.writeString(21, this.f20109j);
        }
        int i12 = this.f20110k;
        if (i12 != 0) {
            codedOutputByteBufferNano.writeUInt32(22, i12);
        }
        C1315l9[] c1315l9Arr = this.f20111l;
        if (c1315l9Arr != null && c1315l9Arr.length > 0) {
            int i13 = 0;
            while (true) {
                C1315l9[] c1315l9Arr2 = this.f20111l;
                if (i13 >= c1315l9Arr2.length) {
                    break;
                }
                C1315l9 c1315l9 = c1315l9Arr2[i13];
                if (c1315l9 != null) {
                    codedOutputByteBufferNano.writeMessage(23, c1315l9);
                }
                i13++;
            }
        }
        if (!this.f20112m.equals("")) {
            codedOutputByteBufferNano.writeString(24, this.f20112m);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1340m9 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1340m9().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1340m9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            switch (readTag) {
                case 0:
                    return this;
                case 10:
                    this.f20100a = codedInputByteBufferNano.readString();
                    break;
                case 18:
                    this.f20101b = codedInputByteBufferNano.readString();
                    break;
                case Build.API_LEVELS.API_34 /* 34 */:
                    this.f20102c = codedInputByteBufferNano.readString();
                    break;
                case C1415p9.L /* 40 */:
                    this.f20103d = codedInputByteBufferNano.readUInt32();
                    break;
                case 82:
                    this.f20104e = codedInputByteBufferNano.readString();
                    break;
                case 122:
                    this.f20105f = codedInputByteBufferNano.readString();
                    break;
                case 136:
                    this.f20106g = codedInputByteBufferNano.readBool();
                    break;
                case 144:
                    this.f20107h = codedInputByteBufferNano.readUInt32();
                    break;
                case 154:
                    this.f20108i = codedInputByteBufferNano.readString();
                    break;
                case 170:
                    this.f20109j = codedInputByteBufferNano.readString();
                    break;
                case 176:
                    this.f20110k = codedInputByteBufferNano.readUInt32();
                    break;
                case 186:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 186);
                    C1315l9[] c1315l9Arr = this.f20111l;
                    int length = c1315l9Arr == null ? 0 : c1315l9Arr.length;
                    int i10 = repeatedFieldArrayLength + length;
                    C1315l9[] c1315l9Arr2 = new C1315l9[i10];
                    if (length != 0) {
                        System.arraycopy(c1315l9Arr, 0, c1315l9Arr2, 0, length);
                    }
                    while (length < i10 - 1) {
                        C1315l9 c1315l9 = new C1315l9();
                        c1315l9Arr2[length] = c1315l9;
                        codedInputByteBufferNano.readMessage(c1315l9);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    C1315l9 c1315l92 = new C1315l9();
                    c1315l9Arr2[length] = c1315l92;
                    codedInputByteBufferNano.readMessage(c1315l92);
                    this.f20111l = c1315l9Arr2;
                    break;
                case 194:
                    this.f20112m = codedInputByteBufferNano.readString();
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

    public static C1340m9 a(byte[] bArr) {
        return (C1340m9) MessageNano.mergeFrom(new C1340m9(), bArr);
    }
}
