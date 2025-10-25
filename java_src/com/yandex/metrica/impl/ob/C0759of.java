package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
/* renamed from: com.yandex.metrica.impl.ob.of  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0759of extends MessageNano {

    /* renamed from: q  reason: collision with root package name */
    private static volatile C0759of[] f13075q;

    /* renamed from: a  reason: collision with root package name */
    public int f13076a;

    /* renamed from: b  reason: collision with root package name */
    public int f13077b;

    /* renamed from: c  reason: collision with root package name */
    public int f13078c;

    /* renamed from: d  reason: collision with root package name */
    public int f13079d;

    /* renamed from: e  reason: collision with root package name */
    public int f13080e;

    /* renamed from: f  reason: collision with root package name */
    public String f13081f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f13082g;

    /* renamed from: h  reason: collision with root package name */
    public int f13083h;

    /* renamed from: i  reason: collision with root package name */
    public int f13084i;

    /* renamed from: j  reason: collision with root package name */
    public long f13085j;

    /* renamed from: k  reason: collision with root package name */
    public int f13086k;

    /* renamed from: l  reason: collision with root package name */
    public int f13087l;

    /* renamed from: m  reason: collision with root package name */
    public int f13088m;

    /* renamed from: n  reason: collision with root package name */
    public int f13089n;

    /* renamed from: o  reason: collision with root package name */
    public int f13090o;

    /* renamed from: p  reason: collision with root package name */
    public int f13091p;

    public C0759of() {
        a();
    }

    public static C0759of[] b() {
        if (f13075q == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f13075q == null) {
                    f13075q = new C0759of[0];
                }
            }
        }
        return f13075q;
    }

    public C0759of a() {
        this.f13076a = -1;
        this.f13077b = 0;
        this.f13078c = -1;
        this.f13079d = -1;
        this.f13080e = -1;
        this.f13081f = "";
        this.f13082g = false;
        this.f13083h = 0;
        this.f13084i = -1;
        this.f13085j = 0L;
        this.f13086k = Integer.MAX_VALUE;
        this.f13087l = Integer.MAX_VALUE;
        this.f13088m = Integer.MAX_VALUE;
        this.f13089n = -1;
        this.f13090o = -1;
        this.f13091p = -1;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        int i10 = this.f13076a;
        if (i10 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(1, i10);
        }
        int i11 = this.f13077b;
        if (i11 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeSInt32Size(2, i11);
        }
        int i12 = this.f13078c;
        if (i12 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(3, i12);
        }
        int i13 = this.f13079d;
        if (i13 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(4, i13);
        }
        int i14 = this.f13080e;
        if (i14 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(5, i14);
        }
        if (!this.f13081f.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(6, this.f13081f);
        }
        boolean z10 = this.f13082g;
        if (z10) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(7, z10);
        }
        int i15 = this.f13083h;
        if (i15 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, i15);
        }
        int i16 = this.f13084i;
        if (i16 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(9, i16);
        }
        long j10 = this.f13085j;
        if (j10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(10, j10);
        }
        int i17 = this.f13086k;
        if (i17 != Integer.MAX_VALUE) {
            computeSerializedSize += CodedOutputByteBufferNano.computeSInt32Size(11, i17);
        }
        int i18 = this.f13087l;
        if (i18 != Integer.MAX_VALUE) {
            computeSerializedSize += CodedOutputByteBufferNano.computeSInt32Size(12, i18);
        }
        int i19 = this.f13088m;
        if (i19 != Integer.MAX_VALUE) {
            computeSerializedSize += CodedOutputByteBufferNano.computeSInt32Size(13, i19);
        }
        int i20 = this.f13089n;
        if (i20 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(14, i20);
        }
        int i21 = this.f13090o;
        if (i21 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(15, i21);
        }
        int i22 = this.f13091p;
        if (i22 != -1) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeUInt32Size(16, i22);
        }
        return computeSerializedSize;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            switch (readTag) {
                case 0:
                    break;
                case 8:
                    this.f13076a = codedInputByteBufferNano.readUInt32();
                    break;
                case 16:
                    this.f13077b = codedInputByteBufferNano.readSInt32();
                    break;
                case Build.API_LEVELS.API_24 /* 24 */:
                    this.f13078c = codedInputByteBufferNano.readUInt32();
                    break;
                case Build.API_LEVELS.API_32 /* 32 */:
                    this.f13079d = codedInputByteBufferNano.readUInt32();
                    break;
                case C1415p9.L /* 40 */:
                    this.f13080e = codedInputByteBufferNano.readUInt32();
                    break;
                case 50:
                    this.f13081f = codedInputByteBufferNano.readString();
                    break;
                case 56:
                    this.f13082g = codedInputByteBufferNano.readBool();
                    break;
                case 64:
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 != 0 && readInt32 != 1 && readInt32 != 2 && readInt32 != 3 && readInt32 != 4) {
                        break;
                    } else {
                        this.f13083h = readInt32;
                        break;
                    }
                case 72:
                    this.f13084i = codedInputByteBufferNano.readUInt32();
                    break;
                case 80:
                    this.f13085j = codedInputByteBufferNano.readUInt64();
                    break;
                case 88:
                    this.f13086k = codedInputByteBufferNano.readSInt32();
                    break;
                case 96:
                    this.f13087l = codedInputByteBufferNano.readSInt32();
                    break;
                case 104:
                    this.f13088m = codedInputByteBufferNano.readSInt32();
                    break;
                case 112:
                    this.f13089n = codedInputByteBufferNano.readUInt32();
                    break;
                case 120:
                    this.f13090o = codedInputByteBufferNano.readUInt32();
                    break;
                case 128:
                    this.f13091p = codedInputByteBufferNano.readUInt32();
                    break;
                default:
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    } else {
                        break;
                    }
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        int i10 = this.f13076a;
        if (i10 != -1) {
            codedOutputByteBufferNano.writeUInt32(1, i10);
        }
        int i11 = this.f13077b;
        if (i11 != 0) {
            codedOutputByteBufferNano.writeSInt32(2, i11);
        }
        int i12 = this.f13078c;
        if (i12 != -1) {
            codedOutputByteBufferNano.writeUInt32(3, i12);
        }
        int i13 = this.f13079d;
        if (i13 != -1) {
            codedOutputByteBufferNano.writeUInt32(4, i13);
        }
        int i14 = this.f13080e;
        if (i14 != -1) {
            codedOutputByteBufferNano.writeUInt32(5, i14);
        }
        if (!this.f13081f.equals("")) {
            codedOutputByteBufferNano.writeString(6, this.f13081f);
        }
        boolean z10 = this.f13082g;
        if (z10) {
            codedOutputByteBufferNano.writeBool(7, z10);
        }
        int i15 = this.f13083h;
        if (i15 != 0) {
            codedOutputByteBufferNano.writeInt32(8, i15);
        }
        int i16 = this.f13084i;
        if (i16 != -1) {
            codedOutputByteBufferNano.writeUInt32(9, i16);
        }
        long j10 = this.f13085j;
        if (j10 != 0) {
            codedOutputByteBufferNano.writeUInt64(10, j10);
        }
        int i17 = this.f13086k;
        if (i17 != Integer.MAX_VALUE) {
            codedOutputByteBufferNano.writeSInt32(11, i17);
        }
        int i18 = this.f13087l;
        if (i18 != Integer.MAX_VALUE) {
            codedOutputByteBufferNano.writeSInt32(12, i18);
        }
        int i19 = this.f13088m;
        if (i19 != Integer.MAX_VALUE) {
            codedOutputByteBufferNano.writeSInt32(13, i19);
        }
        int i20 = this.f13089n;
        if (i20 != -1) {
            codedOutputByteBufferNano.writeUInt32(14, i20);
        }
        int i21 = this.f13090o;
        if (i21 != -1) {
            codedOutputByteBufferNano.writeUInt32(15, i21);
        }
        int i22 = this.f13091p;
        if (i22 != -1) {
            codedOutputByteBufferNano.writeUInt32(16, i22);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
