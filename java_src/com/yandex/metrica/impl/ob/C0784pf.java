package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import io.flutter.Build;
/* renamed from: com.yandex.metrica.impl.ob.pf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0784pf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public b[] f13120a;

    /* renamed from: b  reason: collision with root package name */
    public a[] f13121b;

    /* renamed from: com.yandex.metrica.impl.ob.pf$a */
    /* loaded from: classes2.dex */
    public static final class a extends MessageNano {

        /* renamed from: h  reason: collision with root package name */
        private static volatile a[] f13122h;

        /* renamed from: a  reason: collision with root package name */
        public long f13123a;

        /* renamed from: b  reason: collision with root package name */
        public long f13124b;

        /* renamed from: c  reason: collision with root package name */
        public C0759of[] f13125c;

        /* renamed from: d  reason: collision with root package name */
        public C0831rf[] f13126d;

        /* renamed from: e  reason: collision with root package name */
        public long f13127e;

        /* renamed from: f  reason: collision with root package name */
        public int f13128f;

        /* renamed from: g  reason: collision with root package name */
        public int f13129g;

        public a() {
            a();
        }

        public static a[] b() {
            if (f13122h == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f13122h == null) {
                        f13122h = new a[0];
                    }
                }
            }
            return f13122h;
        }

        public a a() {
            this.f13123a = 0L;
            this.f13124b = 0L;
            this.f13125c = C0759of.b();
            this.f13126d = C0831rf.b();
            this.f13127e = 0L;
            this.f13128f = 0;
            this.f13129g = 0;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeUInt64Size(1, this.f13123a) + CodedOutputByteBufferNano.computeUInt64Size(2, this.f13124b);
            C0759of[] c0759ofArr = this.f13125c;
            int i10 = 0;
            if (c0759ofArr != null && c0759ofArr.length > 0) {
                int i11 = 0;
                while (true) {
                    C0759of[] c0759ofArr2 = this.f13125c;
                    if (i11 >= c0759ofArr2.length) {
                        break;
                    }
                    C0759of c0759of = c0759ofArr2[i11];
                    if (c0759of != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, c0759of);
                    }
                    i11++;
                }
            }
            C0831rf[] c0831rfArr = this.f13126d;
            if (c0831rfArr != null && c0831rfArr.length > 0) {
                while (true) {
                    C0831rf[] c0831rfArr2 = this.f13126d;
                    if (i10 >= c0831rfArr2.length) {
                        break;
                    }
                    C0831rf c0831rf = c0831rfArr2[i10];
                    if (c0831rf != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, c0831rf);
                    }
                    i10++;
                }
            }
            long j10 = this.f13127e;
            if (j10 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(5, j10);
            }
            int i12 = this.f13128f;
            if (i12 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, i12);
            }
            int i13 = this.f13129g;
            if (i13 != 0) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(7, i13);
            }
            return computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            int length;
            int length2;
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag != 8) {
                    if (readTag != 16) {
                        if (readTag != 26) {
                            if (readTag != 34) {
                                if (readTag != 40) {
                                    if (readTag != 48) {
                                        if (readTag != 56) {
                                            if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                                break;
                                            }
                                        } else {
                                            int readInt32 = codedInputByteBufferNano.readInt32();
                                            if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                                                this.f13129g = readInt32;
                                            }
                                        }
                                    } else {
                                        int readInt322 = codedInputByteBufferNano.readInt32();
                                        if (readInt322 == 0 || readInt322 == 1 || readInt322 == 2 || readInt322 == 3 || readInt322 == 4) {
                                            this.f13128f = readInt322;
                                        }
                                    }
                                } else {
                                    this.f13127e = codedInputByteBufferNano.readUInt64();
                                }
                            } else {
                                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 34);
                                C0831rf[] c0831rfArr = this.f13126d;
                                if (c0831rfArr == null) {
                                    length = 0;
                                } else {
                                    length = c0831rfArr.length;
                                }
                                int i10 = repeatedFieldArrayLength + length;
                                C0831rf[] c0831rfArr2 = new C0831rf[i10];
                                if (length != 0) {
                                    System.arraycopy(c0831rfArr, 0, c0831rfArr2, 0, length);
                                }
                                while (length < i10 - 1) {
                                    C0831rf c0831rf = new C0831rf();
                                    c0831rfArr2[length] = c0831rf;
                                    codedInputByteBufferNano.readMessage(c0831rf);
                                    codedInputByteBufferNano.readTag();
                                    length++;
                                }
                                C0831rf c0831rf2 = new C0831rf();
                                c0831rfArr2[length] = c0831rf2;
                                codedInputByteBufferNano.readMessage(c0831rf2);
                                this.f13126d = c0831rfArr2;
                            }
                        } else {
                            int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                            C0759of[] c0759ofArr = this.f13125c;
                            if (c0759ofArr == null) {
                                length2 = 0;
                            } else {
                                length2 = c0759ofArr.length;
                            }
                            int i11 = repeatedFieldArrayLength2 + length2;
                            C0759of[] c0759ofArr2 = new C0759of[i11];
                            if (length2 != 0) {
                                System.arraycopy(c0759ofArr, 0, c0759ofArr2, 0, length2);
                            }
                            while (length2 < i11 - 1) {
                                C0759of c0759of = new C0759of();
                                c0759ofArr2[length2] = c0759of;
                                codedInputByteBufferNano.readMessage(c0759of);
                                codedInputByteBufferNano.readTag();
                                length2++;
                            }
                            C0759of c0759of2 = new C0759of();
                            c0759ofArr2[length2] = c0759of2;
                            codedInputByteBufferNano.readMessage(c0759of2);
                            this.f13125c = c0759ofArr2;
                        }
                    } else {
                        this.f13124b = codedInputByteBufferNano.readUInt64();
                    }
                } else {
                    this.f13123a = codedInputByteBufferNano.readUInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeUInt64(1, this.f13123a);
            codedOutputByteBufferNano.writeUInt64(2, this.f13124b);
            C0759of[] c0759ofArr = this.f13125c;
            int i10 = 0;
            if (c0759ofArr != null && c0759ofArr.length > 0) {
                int i11 = 0;
                while (true) {
                    C0759of[] c0759ofArr2 = this.f13125c;
                    if (i11 >= c0759ofArr2.length) {
                        break;
                    }
                    C0759of c0759of = c0759ofArr2[i11];
                    if (c0759of != null) {
                        codedOutputByteBufferNano.writeMessage(3, c0759of);
                    }
                    i11++;
                }
            }
            C0831rf[] c0831rfArr = this.f13126d;
            if (c0831rfArr != null && c0831rfArr.length > 0) {
                while (true) {
                    C0831rf[] c0831rfArr2 = this.f13126d;
                    if (i10 >= c0831rfArr2.length) {
                        break;
                    }
                    C0831rf c0831rf = c0831rfArr2[i10];
                    if (c0831rf != null) {
                        codedOutputByteBufferNano.writeMessage(4, c0831rf);
                    }
                    i10++;
                }
            }
            long j10 = this.f13127e;
            if (j10 != 0) {
                codedOutputByteBufferNano.writeUInt64(5, j10);
            }
            int i12 = this.f13128f;
            if (i12 != 0) {
                codedOutputByteBufferNano.writeInt32(6, i12);
            }
            int i13 = this.f13129g;
            if (i13 != 0) {
                codedOutputByteBufferNano.writeInt32(7, i13);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.pf$b */
    /* loaded from: classes2.dex */
    public static final class b extends MessageNano {

        /* renamed from: n  reason: collision with root package name */
        private static volatile b[] f13130n;

        /* renamed from: a  reason: collision with root package name */
        public long f13131a;

        /* renamed from: b  reason: collision with root package name */
        public long f13132b;

        /* renamed from: c  reason: collision with root package name */
        public long f13133c;

        /* renamed from: d  reason: collision with root package name */
        public double f13134d;

        /* renamed from: e  reason: collision with root package name */
        public double f13135e;

        /* renamed from: f  reason: collision with root package name */
        public int f13136f;

        /* renamed from: g  reason: collision with root package name */
        public int f13137g;

        /* renamed from: h  reason: collision with root package name */
        public int f13138h;

        /* renamed from: i  reason: collision with root package name */
        public int f13139i;

        /* renamed from: j  reason: collision with root package name */
        public int f13140j;

        /* renamed from: k  reason: collision with root package name */
        public int f13141k;

        /* renamed from: l  reason: collision with root package name */
        public long f13142l;

        /* renamed from: m  reason: collision with root package name */
        public int f13143m;

        public b() {
            a();
        }

        public static b[] b() {
            if (f13130n == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f13130n == null) {
                        f13130n = new b[0];
                    }
                }
            }
            return f13130n;
        }

        public b a() {
            this.f13131a = 0L;
            this.f13132b = 0L;
            this.f13133c = 0L;
            this.f13134d = 0.0d;
            this.f13135e = 0.0d;
            this.f13136f = 0;
            this.f13137g = 0;
            this.f13138h = 0;
            this.f13139i = 0;
            this.f13140j = 0;
            this.f13141k = 0;
            this.f13142l = 0L;
            this.f13143m = 0;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeUInt64Size(1, this.f13131a) + CodedOutputByteBufferNano.computeUInt64Size(2, this.f13132b);
            long j10 = this.f13133c;
            if (j10 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(3, j10);
            }
            int computeDoubleSize = computeSerializedSize + CodedOutputByteBufferNano.computeDoubleSize(4, this.f13134d) + CodedOutputByteBufferNano.computeDoubleSize(5, this.f13135e);
            int i10 = this.f13136f;
            if (i10 != 0) {
                computeDoubleSize += CodedOutputByteBufferNano.computeUInt32Size(6, i10);
            }
            int i11 = this.f13137g;
            if (i11 != 0) {
                computeDoubleSize += CodedOutputByteBufferNano.computeUInt32Size(7, i11);
            }
            int i12 = this.f13138h;
            if (i12 != 0) {
                computeDoubleSize += CodedOutputByteBufferNano.computeUInt32Size(8, i12);
            }
            int i13 = this.f13139i;
            if (i13 != 0) {
                computeDoubleSize += CodedOutputByteBufferNano.computeInt32Size(9, i13);
            }
            int i14 = this.f13140j;
            if (i14 != 0) {
                computeDoubleSize += CodedOutputByteBufferNano.computeInt32Size(10, i14);
            }
            int i15 = this.f13141k;
            if (i15 != 0) {
                computeDoubleSize += CodedOutputByteBufferNano.computeInt32Size(11, i15);
            }
            long j11 = this.f13142l;
            if (j11 != 0) {
                computeDoubleSize += CodedOutputByteBufferNano.computeUInt64Size(12, j11);
            }
            int i16 = this.f13143m;
            if (i16 != 0) {
                return computeDoubleSize + CodedOutputByteBufferNano.computeInt32Size(13, i16);
            }
            return computeDoubleSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                switch (readTag) {
                    case 0:
                        break;
                    case 8:
                        this.f13131a = codedInputByteBufferNano.readUInt64();
                        break;
                    case 16:
                        this.f13132b = codedInputByteBufferNano.readUInt64();
                        break;
                    case Build.API_LEVELS.API_24 /* 24 */:
                        this.f13133c = codedInputByteBufferNano.readUInt64();
                        break;
                    case Build.API_LEVELS.API_33 /* 33 */:
                        this.f13134d = codedInputByteBufferNano.readDouble();
                        break;
                    case 41:
                        this.f13135e = codedInputByteBufferNano.readDouble();
                        break;
                    case 48:
                        this.f13136f = codedInputByteBufferNano.readUInt32();
                        break;
                    case 56:
                        this.f13137g = codedInputByteBufferNano.readUInt32();
                        break;
                    case 64:
                        this.f13138h = codedInputByteBufferNano.readUInt32();
                        break;
                    case 72:
                        this.f13139i = codedInputByteBufferNano.readInt32();
                        break;
                    case 80:
                        int readInt32 = codedInputByteBufferNano.readInt32();
                        if (readInt32 != 0 && readInt32 != 1 && readInt32 != 2 && readInt32 != 3) {
                            break;
                        } else {
                            this.f13140j = readInt32;
                            break;
                        }
                        break;
                    case 88:
                        int readInt322 = codedInputByteBufferNano.readInt32();
                        if (readInt322 != 0 && readInt322 != 1 && readInt322 != 2 && readInt322 != 3) {
                            break;
                        } else {
                            this.f13141k = readInt322;
                            break;
                        }
                        break;
                    case 96:
                        this.f13142l = codedInputByteBufferNano.readUInt64();
                        break;
                    case 104:
                        int readInt323 = codedInputByteBufferNano.readInt32();
                        if (readInt323 != 0 && readInt323 != 1 && readInt323 != 2 && readInt323 != 3 && readInt323 != 4) {
                            break;
                        } else {
                            this.f13143m = readInt323;
                            break;
                        }
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
            codedOutputByteBufferNano.writeUInt64(1, this.f13131a);
            codedOutputByteBufferNano.writeUInt64(2, this.f13132b);
            long j10 = this.f13133c;
            if (j10 != 0) {
                codedOutputByteBufferNano.writeUInt64(3, j10);
            }
            codedOutputByteBufferNano.writeDouble(4, this.f13134d);
            codedOutputByteBufferNano.writeDouble(5, this.f13135e);
            int i10 = this.f13136f;
            if (i10 != 0) {
                codedOutputByteBufferNano.writeUInt32(6, i10);
            }
            int i11 = this.f13137g;
            if (i11 != 0) {
                codedOutputByteBufferNano.writeUInt32(7, i11);
            }
            int i12 = this.f13138h;
            if (i12 != 0) {
                codedOutputByteBufferNano.writeUInt32(8, i12);
            }
            int i13 = this.f13139i;
            if (i13 != 0) {
                codedOutputByteBufferNano.writeInt32(9, i13);
            }
            int i14 = this.f13140j;
            if (i14 != 0) {
                codedOutputByteBufferNano.writeInt32(10, i14);
            }
            int i15 = this.f13141k;
            if (i15 != 0) {
                codedOutputByteBufferNano.writeInt32(11, i15);
            }
            long j11 = this.f13142l;
            if (j11 != 0) {
                codedOutputByteBufferNano.writeUInt64(12, j11);
            }
            int i16 = this.f13143m;
            if (i16 != 0) {
                codedOutputByteBufferNano.writeInt32(13, i16);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C0784pf() {
        a();
    }

    public C0784pf a() {
        this.f13120a = b.b();
        this.f13121b = a.b();
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        b[] bVarArr = this.f13120a;
        int i10 = 0;
        if (bVarArr != null && bVarArr.length > 0) {
            int i11 = 0;
            while (true) {
                b[] bVarArr2 = this.f13120a;
                if (i11 >= bVarArr2.length) {
                    break;
                }
                b bVar = bVarArr2[i11];
                if (bVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, bVar);
                }
                i11++;
            }
        }
        a[] aVarArr = this.f13121b;
        if (aVarArr != null && aVarArr.length > 0) {
            while (true) {
                a[] aVarArr2 = this.f13121b;
                if (i10 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i10];
                if (aVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, aVar);
                }
                i10++;
            }
        }
        return computeSerializedSize;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        int length;
        int length2;
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
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                    a[] aVarArr = this.f13121b;
                    if (aVarArr == null) {
                        length = 0;
                    } else {
                        length = aVarArr.length;
                    }
                    int i10 = repeatedFieldArrayLength + length;
                    a[] aVarArr2 = new a[i10];
                    if (length != 0) {
                        System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                    }
                    while (length < i10 - 1) {
                        a aVar = new a();
                        aVarArr2[length] = aVar;
                        codedInputByteBufferNano.readMessage(aVar);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    a aVar2 = new a();
                    aVarArr2[length] = aVar2;
                    codedInputByteBufferNano.readMessage(aVar2);
                    this.f13121b = aVarArr2;
                }
            } else {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                b[] bVarArr = this.f13120a;
                if (bVarArr == null) {
                    length2 = 0;
                } else {
                    length2 = bVarArr.length;
                }
                int i11 = repeatedFieldArrayLength2 + length2;
                b[] bVarArr2 = new b[i11];
                if (length2 != 0) {
                    System.arraycopy(bVarArr, 0, bVarArr2, 0, length2);
                }
                while (length2 < i11 - 1) {
                    b bVar = new b();
                    bVarArr2[length2] = bVar;
                    codedInputByteBufferNano.readMessage(bVar);
                    codedInputByteBufferNano.readTag();
                    length2++;
                }
                b bVar2 = new b();
                bVarArr2[length2] = bVar2;
                codedInputByteBufferNano.readMessage(bVar2);
                this.f13120a = bVarArr2;
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        b[] bVarArr = this.f13120a;
        int i10 = 0;
        if (bVarArr != null && bVarArr.length > 0) {
            int i11 = 0;
            while (true) {
                b[] bVarArr2 = this.f13120a;
                if (i11 >= bVarArr2.length) {
                    break;
                }
                b bVar = bVarArr2[i11];
                if (bVar != null) {
                    codedOutputByteBufferNano.writeMessage(1, bVar);
                }
                i11++;
            }
        }
        a[] aVarArr = this.f13121b;
        if (aVarArr != null && aVarArr.length > 0) {
            while (true) {
                a[] aVarArr2 = this.f13121b;
                if (i10 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i10];
                if (aVar != null) {
                    codedOutputByteBufferNano.writeMessage(2, aVar);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
