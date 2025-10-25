package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import io.flutter.Build;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class Li extends MessageNano {

    /* renamed from: l  reason: collision with root package name */
    public static final int f18539l = 0;

    /* renamed from: m  reason: collision with root package name */
    public static final int f18540m = 1;

    /* renamed from: n  reason: collision with root package name */
    public static final int f18541n = 2;

    /* renamed from: o  reason: collision with root package name */
    public static final int f18542o = 1;

    /* renamed from: p  reason: collision with root package name */
    public static final int f18543p = 2;

    /* renamed from: q  reason: collision with root package name */
    public static volatile Li[] f18544q;

    /* renamed from: a  reason: collision with root package name */
    public int f18545a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f18546b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f18547c;

    /* renamed from: d  reason: collision with root package name */
    public byte[] f18548d;

    /* renamed from: e  reason: collision with root package name */
    public Gi f18549e;

    /* renamed from: f  reason: collision with root package name */
    public long f18550f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f18551g;

    /* renamed from: h  reason: collision with root package name */
    public int f18552h;

    /* renamed from: i  reason: collision with root package name */
    public int f18553i;

    /* renamed from: j  reason: collision with root package name */
    public Ki f18554j;

    /* renamed from: k  reason: collision with root package name */
    public Ji f18555k;

    public Li() {
        a();
    }

    public static Li[] b() {
        if (f18544q == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18544q == null) {
                    f18544q = new Li[0];
                }
            }
        }
        return f18544q;
    }

    public final Li a() {
        this.f18545a = 1;
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f18546b = bArr;
        this.f18547c = bArr;
        this.f18548d = bArr;
        this.f18549e = null;
        this.f18550f = 0L;
        this.f18551g = false;
        this.f18552h = 0;
        this.f18553i = 1;
        this.f18554j = null;
        this.f18555k = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        int i10 = this.f18545a;
        if (i10 != 1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(1, i10);
        }
        int computeBytesSize = CodedOutputByteBufferNano.computeBytesSize(3, this.f18546b) + computeSerializedSize;
        byte[] bArr = this.f18547c;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            computeBytesSize += CodedOutputByteBufferNano.computeBytesSize(4, this.f18547c);
        }
        if (!Arrays.equals(this.f18548d, bArr2)) {
            computeBytesSize += CodedOutputByteBufferNano.computeBytesSize(5, this.f18548d);
        }
        Gi gi = this.f18549e;
        if (gi != null) {
            computeBytesSize += CodedOutputByteBufferNano.computeMessageSize(6, gi);
        }
        long j10 = this.f18550f;
        if (j10 != 0) {
            computeBytesSize += CodedOutputByteBufferNano.computeInt64Size(7, j10);
        }
        boolean z10 = this.f18551g;
        if (z10) {
            computeBytesSize += CodedOutputByteBufferNano.computeBoolSize(8, z10);
        }
        int i11 = this.f18552h;
        if (i11 != 0) {
            computeBytesSize += CodedOutputByteBufferNano.computeInt32Size(9, i11);
        }
        int i12 = this.f18553i;
        if (i12 != 1) {
            computeBytesSize += CodedOutputByteBufferNano.computeInt32Size(10, i12);
        }
        Ki ki = this.f18554j;
        if (ki != null) {
            computeBytesSize += CodedOutputByteBufferNano.computeMessageSize(11, ki);
        }
        Ji ji = this.f18555k;
        if (ji != null) {
            return computeBytesSize + CodedOutputByteBufferNano.computeMessageSize(12, ji);
        }
        return computeBytesSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        int i10 = this.f18545a;
        if (i10 != 1) {
            codedOutputByteBufferNano.writeUInt32(1, i10);
        }
        codedOutputByteBufferNano.writeBytes(3, this.f18546b);
        byte[] bArr = this.f18547c;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(4, this.f18547c);
        }
        if (!Arrays.equals(this.f18548d, bArr2)) {
            codedOutputByteBufferNano.writeBytes(5, this.f18548d);
        }
        Gi gi = this.f18549e;
        if (gi != null) {
            codedOutputByteBufferNano.writeMessage(6, gi);
        }
        long j10 = this.f18550f;
        if (j10 != 0) {
            codedOutputByteBufferNano.writeInt64(7, j10);
        }
        boolean z10 = this.f18551g;
        if (z10) {
            codedOutputByteBufferNano.writeBool(8, z10);
        }
        int i11 = this.f18552h;
        if (i11 != 0) {
            codedOutputByteBufferNano.writeInt32(9, i11);
        }
        int i12 = this.f18553i;
        if (i12 != 1) {
            codedOutputByteBufferNano.writeInt32(10, i12);
        }
        Ki ki = this.f18554j;
        if (ki != null) {
            codedOutputByteBufferNano.writeMessage(11, ki);
        }
        Ji ji = this.f18555k;
        if (ji != null) {
            codedOutputByteBufferNano.writeMessage(12, ji);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static Li b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Li().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final Li mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            switch (readTag) {
                case 0:
                    return this;
                case 8:
                    this.f18545a = codedInputByteBufferNano.readUInt32();
                    break;
                case 26:
                    this.f18546b = codedInputByteBufferNano.readBytes();
                    break;
                case Build.API_LEVELS.API_34 /* 34 */:
                    this.f18547c = codedInputByteBufferNano.readBytes();
                    break;
                case C1415p9.M /* 42 */:
                    this.f18548d = codedInputByteBufferNano.readBytes();
                    break;
                case 50:
                    if (this.f18549e == null) {
                        this.f18549e = new Gi();
                    }
                    codedInputByteBufferNano.readMessage(this.f18549e);
                    break;
                case 56:
                    this.f18550f = codedInputByteBufferNano.readInt64();
                    break;
                case 64:
                    this.f18551g = codedInputByteBufferNano.readBool();
                    break;
                case 72:
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 != 0 && readInt32 != 1 && readInt32 != 2) {
                        break;
                    } else {
                        this.f18552h = readInt32;
                        break;
                    }
                case 80:
                    int readInt322 = codedInputByteBufferNano.readInt32();
                    if (readInt322 != 1 && readInt322 != 2) {
                        break;
                    } else {
                        this.f18553i = readInt322;
                        break;
                    }
                case 90:
                    if (this.f18554j == null) {
                        this.f18554j = new Ki();
                    }
                    codedInputByteBufferNano.readMessage(this.f18554j);
                    break;
                case 98:
                    if (this.f18555k == null) {
                        this.f18555k = new Ji();
                    }
                    codedInputByteBufferNano.readMessage(this.f18555k);
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

    public static Li a(byte[] bArr) {
        return (Li) MessageNano.mergeFrom(new Li(), bArr);
    }
}
