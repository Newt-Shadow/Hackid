package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.cf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0460cf extends MessageNano {

    /* renamed from: l  reason: collision with root package name */
    private static byte[] f12171l;

    /* renamed from: m  reason: collision with root package name */
    private static volatile boolean f12172m;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f12173a;

    /* renamed from: b  reason: collision with root package name */
    public a f12174b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f12175c;

    /* renamed from: d  reason: collision with root package name */
    public int f12176d;

    /* renamed from: e  reason: collision with root package name */
    public byte[] f12177e;

    /* renamed from: f  reason: collision with root package name */
    public byte[] f12178f;

    /* renamed from: g  reason: collision with root package name */
    public byte[] f12179g;

    /* renamed from: h  reason: collision with root package name */
    public byte[] f12180h;

    /* renamed from: i  reason: collision with root package name */
    public byte[] f12181i;

    /* renamed from: j  reason: collision with root package name */
    public byte[] f12182j;

    /* renamed from: k  reason: collision with root package name */
    public byte[] f12183k;

    /* renamed from: com.yandex.metrica.impl.ob.cf$a */
    /* loaded from: classes2.dex */
    public static final class a extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f12184a;

        /* renamed from: b  reason: collision with root package name */
        public int f12185b;

        public a() {
            a();
        }

        public a a() {
            this.f12184a = 0L;
            this.f12185b = 0;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            long j10 = this.f12184a;
            if (j10 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j10);
            }
            int i10 = this.f12185b;
            if (i10 != 0) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i10);
            }
            return computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag != 8) {
                    if (readTag != 16) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        this.f12185b = codedInputByteBufferNano.readInt32();
                    }
                } else {
                    this.f12184a = codedInputByteBufferNano.readInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            long j10 = this.f12184a;
            if (j10 != 0) {
                codedOutputByteBufferNano.writeInt64(1, j10);
            }
            int i10 = this.f12185b;
            if (i10 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i10);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C0460cf() {
        if (!f12172m) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (!f12172m) {
                    f12171l = InternalNano.bytesDefaultValue("manual");
                    f12172m = true;
                }
            }
        }
        a();
    }

    public C0460cf a() {
        this.f12173a = (byte[]) f12171l.clone();
        this.f12174b = null;
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f12175c = bArr;
        this.f12176d = 0;
        this.f12177e = bArr;
        this.f12178f = bArr;
        this.f12179g = bArr;
        this.f12180h = bArr;
        this.f12181i = bArr;
        this.f12182j = bArr;
        this.f12183k = bArr;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!Arrays.equals(this.f12173a, f12171l)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f12173a);
        }
        a aVar = this.f12174b;
        if (aVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, aVar);
        }
        byte[] bArr = this.f12175c;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(3, this.f12175c);
        }
        int i10 = this.f12176d;
        if (i10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i10);
        }
        if (!Arrays.equals(this.f12177e, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(5, this.f12177e);
        }
        if (!Arrays.equals(this.f12178f, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(6, this.f12178f);
        }
        if (!Arrays.equals(this.f12179g, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(7, this.f12179g);
        }
        if (!Arrays.equals(this.f12180h, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(8, this.f12180h);
        }
        if (!Arrays.equals(this.f12181i, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(9, this.f12181i);
        }
        if (!Arrays.equals(this.f12182j, bArr2)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(10, this.f12182j);
        }
        if (!Arrays.equals(this.f12183k, bArr2)) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(11, this.f12183k);
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
                case 10:
                    this.f12173a = codedInputByteBufferNano.readBytes();
                    break;
                case 18:
                    if (this.f12174b == null) {
                        this.f12174b = new a();
                    }
                    codedInputByteBufferNano.readMessage(this.f12174b);
                    break;
                case 26:
                    this.f12175c = codedInputByteBufferNano.readBytes();
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
                            this.f12176d = readInt32;
                            continue;
                    }
                case C1415p9.M /* 42 */:
                    this.f12177e = codedInputByteBufferNano.readBytes();
                    break;
                case 50:
                    this.f12178f = codedInputByteBufferNano.readBytes();
                    break;
                case 58:
                    this.f12179g = codedInputByteBufferNano.readBytes();
                    break;
                case 66:
                    this.f12180h = codedInputByteBufferNano.readBytes();
                    break;
                case 74:
                    this.f12181i = codedInputByteBufferNano.readBytes();
                    break;
                case 82:
                    this.f12182j = codedInputByteBufferNano.readBytes();
                    break;
                case 90:
                    this.f12183k = codedInputByteBufferNano.readBytes();
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
        if (!Arrays.equals(this.f12173a, f12171l)) {
            codedOutputByteBufferNano.writeBytes(1, this.f12173a);
        }
        a aVar = this.f12174b;
        if (aVar != null) {
            codedOutputByteBufferNano.writeMessage(2, aVar);
        }
        byte[] bArr = this.f12175c;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(3, this.f12175c);
        }
        int i10 = this.f12176d;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeInt32(4, i10);
        }
        if (!Arrays.equals(this.f12177e, bArr2)) {
            codedOutputByteBufferNano.writeBytes(5, this.f12177e);
        }
        if (!Arrays.equals(this.f12178f, bArr2)) {
            codedOutputByteBufferNano.writeBytes(6, this.f12178f);
        }
        if (!Arrays.equals(this.f12179g, bArr2)) {
            codedOutputByteBufferNano.writeBytes(7, this.f12179g);
        }
        if (!Arrays.equals(this.f12180h, bArr2)) {
            codedOutputByteBufferNano.writeBytes(8, this.f12180h);
        }
        if (!Arrays.equals(this.f12181i, bArr2)) {
            codedOutputByteBufferNano.writeBytes(9, this.f12181i);
        }
        if (!Arrays.equals(this.f12182j, bArr2)) {
            codedOutputByteBufferNano.writeBytes(10, this.f12182j);
        }
        if (!Arrays.equals(this.f12183k, bArr2)) {
            codedOutputByteBufferNano.writeBytes(11, this.f12183k);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
