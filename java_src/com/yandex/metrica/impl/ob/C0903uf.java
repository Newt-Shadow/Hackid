package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.uf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0903uf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public int f13693a;

    /* renamed from: b  reason: collision with root package name */
    public double f13694b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f13695c;

    /* renamed from: d  reason: collision with root package name */
    public byte[] f13696d;

    /* renamed from: e  reason: collision with root package name */
    public byte[] f13697e;

    /* renamed from: f  reason: collision with root package name */
    public a f13698f;

    /* renamed from: g  reason: collision with root package name */
    public long f13699g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f13700h;

    /* renamed from: i  reason: collision with root package name */
    public int f13701i;

    /* renamed from: j  reason: collision with root package name */
    public int f13702j;

    /* renamed from: k  reason: collision with root package name */
    public c f13703k;

    /* renamed from: l  reason: collision with root package name */
    public b f13704l;

    /* renamed from: com.yandex.metrica.impl.ob.uf$a */
    /* loaded from: classes2.dex */
    public static final class a extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f13705a;

        /* renamed from: b  reason: collision with root package name */
        public byte[] f13706b;

        public a() {
            a();
        }

        public a a() {
            byte[] bArr = WireFormatNano.EMPTY_BYTES;
            this.f13705a = bArr;
            this.f13706b = bArr;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            byte[] bArr = this.f13705a;
            byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
            if (!Arrays.equals(bArr, bArr2)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f13705a);
            }
            if (!Arrays.equals(this.f13706b, bArr2)) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(2, this.f13706b);
            }
            return computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag != 10) {
                    if (readTag != 18) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        this.f13706b = codedInputByteBufferNano.readBytes();
                    }
                } else {
                    this.f13705a = codedInputByteBufferNano.readBytes();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            byte[] bArr = this.f13705a;
            byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
            if (!Arrays.equals(bArr, bArr2)) {
                codedOutputByteBufferNano.writeBytes(1, this.f13705a);
            }
            if (!Arrays.equals(this.f13706b, bArr2)) {
                codedOutputByteBufferNano.writeBytes(2, this.f13706b);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.uf$b */
    /* loaded from: classes2.dex */
    public static final class b extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public boolean f13707a;

        /* renamed from: b  reason: collision with root package name */
        public C0134b f13708b;

        /* renamed from: c  reason: collision with root package name */
        public a f13709c;

        /* renamed from: com.yandex.metrica.impl.ob.uf$b$a */
        /* loaded from: classes2.dex */
        public static final class a extends MessageNano {

            /* renamed from: a  reason: collision with root package name */
            public long f13710a;

            /* renamed from: b  reason: collision with root package name */
            public C0134b f13711b;

            /* renamed from: c  reason: collision with root package name */
            public int f13712c;

            /* renamed from: d  reason: collision with root package name */
            public byte[] f13713d;

            public a() {
                a();
            }

            public a a() {
                this.f13710a = 0L;
                this.f13711b = null;
                this.f13712c = 0;
                this.f13713d = WireFormatNano.EMPTY_BYTES;
                this.cachedSize = -1;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.nano.ym.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                long j10 = this.f13710a;
                if (j10 != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j10);
                }
                C0134b c0134b = this.f13711b;
                if (c0134b != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c0134b);
                }
                int i10 = this.f13712c;
                if (i10 != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(3, i10);
                }
                if (!Arrays.equals(this.f13713d, WireFormatNano.EMPTY_BYTES)) {
                    return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(4, this.f13713d);
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
                        if (readTag != 18) {
                            if (readTag != 24) {
                                if (readTag != 34) {
                                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                        break;
                                    }
                                } else {
                                    this.f13713d = codedInputByteBufferNano.readBytes();
                                }
                            } else {
                                this.f13712c = codedInputByteBufferNano.readUInt32();
                            }
                        } else {
                            if (this.f13711b == null) {
                                this.f13711b = new C0134b();
                            }
                            codedInputByteBufferNano.readMessage(this.f13711b);
                        }
                    } else {
                        this.f13710a = codedInputByteBufferNano.readInt64();
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
                long j10 = this.f13710a;
                if (j10 != 0) {
                    codedOutputByteBufferNano.writeInt64(1, j10);
                }
                C0134b c0134b = this.f13711b;
                if (c0134b != null) {
                    codedOutputByteBufferNano.writeMessage(2, c0134b);
                }
                int i10 = this.f13712c;
                if (i10 != 0) {
                    codedOutputByteBufferNano.writeUInt32(3, i10);
                }
                if (!Arrays.equals(this.f13713d, WireFormatNano.EMPTY_BYTES)) {
                    codedOutputByteBufferNano.writeBytes(4, this.f13713d);
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.uf$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0134b extends MessageNano {

            /* renamed from: a  reason: collision with root package name */
            public int f13714a;

            /* renamed from: b  reason: collision with root package name */
            public int f13715b;

            public C0134b() {
                a();
            }

            public C0134b a() {
                this.f13714a = 0;
                this.f13715b = 0;
                this.cachedSize = -1;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.nano.ym.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                int i10 = this.f13714a;
                if (i10 != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(1, i10);
                }
                int i11 = this.f13715b;
                if (i11 != 0) {
                    return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i11);
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
                            int readInt32 = codedInputByteBufferNano.readInt32();
                            if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3 || readInt32 == 4) {
                                this.f13715b = readInt32;
                            }
                        }
                    } else {
                        this.f13714a = codedInputByteBufferNano.readUInt32();
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
                int i10 = this.f13714a;
                if (i10 != 0) {
                    codedOutputByteBufferNano.writeUInt32(1, i10);
                }
                int i11 = this.f13715b;
                if (i11 != 0) {
                    codedOutputByteBufferNano.writeInt32(2, i11);
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        public b() {
            a();
        }

        public b a() {
            this.f13707a = false;
            this.f13708b = null;
            this.f13709c = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            boolean z10 = this.f13707a;
            if (z10) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(1, z10);
            }
            C0134b c0134b = this.f13708b;
            if (c0134b != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c0134b);
            }
            a aVar = this.f13709c;
            if (aVar != null) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(3, aVar);
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
                    if (readTag != 18) {
                        if (readTag != 26) {
                            if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                break;
                            }
                        } else {
                            if (this.f13709c == null) {
                                this.f13709c = new a();
                            }
                            codedInputByteBufferNano.readMessage(this.f13709c);
                        }
                    } else {
                        if (this.f13708b == null) {
                            this.f13708b = new C0134b();
                        }
                        codedInputByteBufferNano.readMessage(this.f13708b);
                    }
                } else {
                    this.f13707a = codedInputByteBufferNano.readBool();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            boolean z10 = this.f13707a;
            if (z10) {
                codedOutputByteBufferNano.writeBool(1, z10);
            }
            C0134b c0134b = this.f13708b;
            if (c0134b != null) {
                codedOutputByteBufferNano.writeMessage(2, c0134b);
            }
            a aVar = this.f13709c;
            if (aVar != null) {
                codedOutputByteBufferNano.writeMessage(3, aVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.uf$c */
    /* loaded from: classes2.dex */
    public static final class c extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f13716a;

        /* renamed from: b  reason: collision with root package name */
        public long f13717b;

        /* renamed from: c  reason: collision with root package name */
        public int f13718c;

        /* renamed from: d  reason: collision with root package name */
        public byte[] f13719d;

        /* renamed from: e  reason: collision with root package name */
        public long f13720e;

        public c() {
            a();
        }

        public c a() {
            byte[] bArr = WireFormatNano.EMPTY_BYTES;
            this.f13716a = bArr;
            this.f13717b = 0L;
            this.f13718c = 0;
            this.f13719d = bArr;
            this.f13720e = 0L;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            byte[] bArr = this.f13716a;
            byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
            if (!Arrays.equals(bArr, bArr2)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f13716a);
            }
            long j10 = this.f13717b;
            if (j10 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(2, j10);
            }
            int i10 = this.f13718c;
            if (i10 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i10);
            }
            if (!Arrays.equals(this.f13719d, bArr2)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(4, this.f13719d);
            }
            long j11 = this.f13720e;
            if (j11 != 0) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeUInt64Size(5, j11);
            }
            return computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag != 10) {
                    if (readTag != 16) {
                        if (readTag != 24) {
                            if (readTag != 34) {
                                if (readTag != 40) {
                                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                        break;
                                    }
                                } else {
                                    this.f13720e = codedInputByteBufferNano.readUInt64();
                                }
                            } else {
                                this.f13719d = codedInputByteBufferNano.readBytes();
                            }
                        } else {
                            int readInt32 = codedInputByteBufferNano.readInt32();
                            if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2) {
                                this.f13718c = readInt32;
                            }
                        }
                    } else {
                        this.f13717b = codedInputByteBufferNano.readUInt64();
                    }
                } else {
                    this.f13716a = codedInputByteBufferNano.readBytes();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            byte[] bArr = this.f13716a;
            byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
            if (!Arrays.equals(bArr, bArr2)) {
                codedOutputByteBufferNano.writeBytes(1, this.f13716a);
            }
            long j10 = this.f13717b;
            if (j10 != 0) {
                codedOutputByteBufferNano.writeUInt64(2, j10);
            }
            int i10 = this.f13718c;
            if (i10 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i10);
            }
            if (!Arrays.equals(this.f13719d, bArr2)) {
                codedOutputByteBufferNano.writeBytes(4, this.f13719d);
            }
            long j11 = this.f13720e;
            if (j11 != 0) {
                codedOutputByteBufferNano.writeUInt64(5, j11);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C0903uf() {
        a();
    }

    public C0903uf a() {
        this.f13693a = 1;
        this.f13694b = 0.0d;
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f13695c = bArr;
        this.f13696d = bArr;
        this.f13697e = bArr;
        this.f13698f = null;
        this.f13699g = 0L;
        this.f13700h = false;
        this.f13701i = 0;
        this.f13702j = 1;
        this.f13703k = null;
        this.f13704l = null;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        int i10 = this.f13693a;
        if (i10 != 1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(1, i10);
        }
        if (Double.doubleToLongBits(this.f13694b) != Double.doubleToLongBits(0.0d)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeDoubleSize(2, this.f13694b);
        }
        int computeBytesSize = computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(3, this.f13695c);
        byte[] bArr = this.f13696d;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            computeBytesSize += CodedOutputByteBufferNano.computeBytesSize(4, this.f13696d);
        }
        if (!Arrays.equals(this.f13697e, bArr2)) {
            computeBytesSize += CodedOutputByteBufferNano.computeBytesSize(5, this.f13697e);
        }
        a aVar = this.f13698f;
        if (aVar != null) {
            computeBytesSize += CodedOutputByteBufferNano.computeMessageSize(6, aVar);
        }
        long j10 = this.f13699g;
        if (j10 != 0) {
            computeBytesSize += CodedOutputByteBufferNano.computeInt64Size(7, j10);
        }
        boolean z10 = this.f13700h;
        if (z10) {
            computeBytesSize += CodedOutputByteBufferNano.computeBoolSize(8, z10);
        }
        int i11 = this.f13701i;
        if (i11 != 0) {
            computeBytesSize += CodedOutputByteBufferNano.computeInt32Size(9, i11);
        }
        int i12 = this.f13702j;
        if (i12 != 1) {
            computeBytesSize += CodedOutputByteBufferNano.computeInt32Size(10, i12);
        }
        c cVar = this.f13703k;
        if (cVar != null) {
            computeBytesSize += CodedOutputByteBufferNano.computeMessageSize(11, cVar);
        }
        b bVar = this.f13704l;
        if (bVar != null) {
            return computeBytesSize + CodedOutputByteBufferNano.computeMessageSize(12, bVar);
        }
        return computeBytesSize;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            switch (readTag) {
                case 0:
                    break;
                case 8:
                    this.f13693a = codedInputByteBufferNano.readUInt32();
                    break;
                case 17:
                    this.f13694b = codedInputByteBufferNano.readDouble();
                    break;
                case 26:
                    this.f13695c = codedInputByteBufferNano.readBytes();
                    break;
                case Build.API_LEVELS.API_34 /* 34 */:
                    this.f13696d = codedInputByteBufferNano.readBytes();
                    break;
                case C1415p9.M /* 42 */:
                    this.f13697e = codedInputByteBufferNano.readBytes();
                    break;
                case 50:
                    if (this.f13698f == null) {
                        this.f13698f = new a();
                    }
                    codedInputByteBufferNano.readMessage(this.f13698f);
                    break;
                case 56:
                    this.f13699g = codedInputByteBufferNano.readInt64();
                    break;
                case 64:
                    this.f13700h = codedInputByteBufferNano.readBool();
                    break;
                case 72:
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 != 0 && readInt32 != 1 && readInt32 != 2) {
                        break;
                    } else {
                        this.f13701i = readInt32;
                        break;
                    }
                case 80:
                    int readInt322 = codedInputByteBufferNano.readInt32();
                    if (readInt322 != 1 && readInt322 != 2) {
                        break;
                    } else {
                        this.f13702j = readInt322;
                        break;
                    }
                case 90:
                    if (this.f13703k == null) {
                        this.f13703k = new c();
                    }
                    codedInputByteBufferNano.readMessage(this.f13703k);
                    break;
                case 98:
                    if (this.f13704l == null) {
                        this.f13704l = new b();
                    }
                    codedInputByteBufferNano.readMessage(this.f13704l);
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
        int i10 = this.f13693a;
        if (i10 != 1) {
            codedOutputByteBufferNano.writeUInt32(1, i10);
        }
        if (Double.doubleToLongBits(this.f13694b) != Double.doubleToLongBits(0.0d)) {
            codedOutputByteBufferNano.writeDouble(2, this.f13694b);
        }
        codedOutputByteBufferNano.writeBytes(3, this.f13695c);
        byte[] bArr = this.f13696d;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(4, this.f13696d);
        }
        if (!Arrays.equals(this.f13697e, bArr2)) {
            codedOutputByteBufferNano.writeBytes(5, this.f13697e);
        }
        a aVar = this.f13698f;
        if (aVar != null) {
            codedOutputByteBufferNano.writeMessage(6, aVar);
        }
        long j10 = this.f13699g;
        if (j10 != 0) {
            codedOutputByteBufferNano.writeInt64(7, j10);
        }
        boolean z10 = this.f13700h;
        if (z10) {
            codedOutputByteBufferNano.writeBool(8, z10);
        }
        int i11 = this.f13701i;
        if (i11 != 0) {
            codedOutputByteBufferNano.writeInt32(9, i11);
        }
        int i12 = this.f13702j;
        if (i12 != 1) {
            codedOutputByteBufferNano.writeInt32(10, i12);
        }
        c cVar = this.f13703k;
        if (cVar != null) {
            codedOutputByteBufferNano.writeMessage(11, cVar);
        }
        b bVar = this.f13704l;
        if (bVar != null) {
            codedOutputByteBufferNano.writeMessage(12, bVar);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
