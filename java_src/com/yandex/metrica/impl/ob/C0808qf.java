package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.qf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0808qf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public d[] f13297a;

    /* renamed from: b  reason: collision with root package name */
    public c f13298b;

    /* renamed from: c  reason: collision with root package name */
    public a[] f13299c;

    /* renamed from: d  reason: collision with root package name */
    public e[] f13300d;

    /* renamed from: e  reason: collision with root package name */
    public String[] f13301e;

    /* renamed from: com.yandex.metrica.impl.ob.qf$a */
    /* loaded from: classes2.dex */
    public static final class a extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile a[] f13302c;

        /* renamed from: a  reason: collision with root package name */
        public String f13303a;

        /* renamed from: b  reason: collision with root package name */
        public String f13304b;

        public a() {
            a();
        }

        public static a[] b() {
            if (f13302c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f13302c == null) {
                        f13302c = new a[0];
                    }
                }
            }
            return f13302c;
        }

        public a a() {
            this.f13303a = "";
            this.f13304b = "";
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f13303a) + CodedOutputByteBufferNano.computeStringSize(2, this.f13304b);
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
                        this.f13304b = codedInputByteBufferNano.readString();
                    }
                } else {
                    this.f13303a = codedInputByteBufferNano.readString();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeString(1, this.f13303a);
            codedOutputByteBufferNano.writeString(2, this.f13304b);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.qf$b */
    /* loaded from: classes2.dex */
    public static final class b extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public double f13305a;

        /* renamed from: b  reason: collision with root package name */
        public double f13306b;

        /* renamed from: c  reason: collision with root package name */
        public long f13307c;

        /* renamed from: d  reason: collision with root package name */
        public int f13308d;

        /* renamed from: e  reason: collision with root package name */
        public int f13309e;

        /* renamed from: f  reason: collision with root package name */
        public int f13310f;

        /* renamed from: g  reason: collision with root package name */
        public int f13311g;

        /* renamed from: h  reason: collision with root package name */
        public int f13312h;

        /* renamed from: i  reason: collision with root package name */
        public String f13313i;

        public b() {
            a();
        }

        public b a() {
            this.f13305a = 0.0d;
            this.f13306b = 0.0d;
            this.f13307c = 0L;
            this.f13308d = 0;
            this.f13309e = 0;
            this.f13310f = 0;
            this.f13311g = 0;
            this.f13312h = 0;
            this.f13313i = "";
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeDoubleSize(1, this.f13305a) + CodedOutputByteBufferNano.computeDoubleSize(2, this.f13306b);
            long j10 = this.f13307c;
            if (j10 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(3, j10);
            }
            int i10 = this.f13308d;
            if (i10 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(4, i10);
            }
            int i11 = this.f13309e;
            if (i11 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(5, i11);
            }
            int i12 = this.f13310f;
            if (i12 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(6, i12);
            }
            int i13 = this.f13311g;
            if (i13 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, i13);
            }
            int i14 = this.f13312h;
            if (i14 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, i14);
            }
            if (!this.f13313i.equals("")) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(9, this.f13313i);
            }
            return computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag != 9) {
                    if (readTag != 17) {
                        if (readTag != 24) {
                            if (readTag != 32) {
                                if (readTag != 40) {
                                    if (readTag != 48) {
                                        if (readTag != 56) {
                                            if (readTag != 64) {
                                                if (readTag != 74) {
                                                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                                        break;
                                                    }
                                                } else {
                                                    this.f13313i = codedInputByteBufferNano.readString();
                                                }
                                            } else {
                                                int readInt32 = codedInputByteBufferNano.readInt32();
                                                if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2) {
                                                    this.f13312h = readInt32;
                                                }
                                            }
                                        } else {
                                            this.f13311g = codedInputByteBufferNano.readInt32();
                                        }
                                    } else {
                                        this.f13310f = codedInputByteBufferNano.readUInt32();
                                    }
                                } else {
                                    this.f13309e = codedInputByteBufferNano.readUInt32();
                                }
                            } else {
                                this.f13308d = codedInputByteBufferNano.readUInt32();
                            }
                        } else {
                            this.f13307c = codedInputByteBufferNano.readUInt64();
                        }
                    } else {
                        this.f13306b = codedInputByteBufferNano.readDouble();
                    }
                } else {
                    this.f13305a = codedInputByteBufferNano.readDouble();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeDouble(1, this.f13305a);
            codedOutputByteBufferNano.writeDouble(2, this.f13306b);
            long j10 = this.f13307c;
            if (j10 != 0) {
                codedOutputByteBufferNano.writeUInt64(3, j10);
            }
            int i10 = this.f13308d;
            if (i10 != 0) {
                codedOutputByteBufferNano.writeUInt32(4, i10);
            }
            int i11 = this.f13309e;
            if (i11 != 0) {
                codedOutputByteBufferNano.writeUInt32(5, i11);
            }
            int i12 = this.f13310f;
            if (i12 != 0) {
                codedOutputByteBufferNano.writeUInt32(6, i12);
            }
            int i13 = this.f13311g;
            if (i13 != 0) {
                codedOutputByteBufferNano.writeInt32(7, i13);
            }
            int i14 = this.f13312h;
            if (i14 != 0) {
                codedOutputByteBufferNano.writeInt32(8, i14);
            }
            if (!this.f13313i.equals("")) {
                codedOutputByteBufferNano.writeString(9, this.f13313i);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.qf$c */
    /* loaded from: classes2.dex */
    public static final class c extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public String f13314a;

        /* renamed from: b  reason: collision with root package name */
        public String f13315b;

        /* renamed from: c  reason: collision with root package name */
        public String f13316c;

        /* renamed from: d  reason: collision with root package name */
        public int f13317d;

        /* renamed from: e  reason: collision with root package name */
        public String f13318e;

        /* renamed from: f  reason: collision with root package name */
        public String f13319f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f13320g;

        /* renamed from: h  reason: collision with root package name */
        public int f13321h;

        /* renamed from: i  reason: collision with root package name */
        public String f13322i;

        /* renamed from: j  reason: collision with root package name */
        public String f13323j;

        /* renamed from: k  reason: collision with root package name */
        public int f13324k;

        /* renamed from: l  reason: collision with root package name */
        public a[] f13325l;

        /* renamed from: m  reason: collision with root package name */
        public String f13326m;

        /* renamed from: com.yandex.metrica.impl.ob.qf$c$a */
        /* loaded from: classes2.dex */
        public static final class a extends MessageNano {

            /* renamed from: c  reason: collision with root package name */
            private static volatile a[] f13327c;

            /* renamed from: a  reason: collision with root package name */
            public String f13328a;

            /* renamed from: b  reason: collision with root package name */
            public long f13329b;

            public a() {
                a();
            }

            public static a[] b() {
                if (f13327c == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (f13327c == null) {
                            f13327c = new a[0];
                        }
                    }
                }
                return f13327c;
            }

            public a a() {
                this.f13328a = "";
                this.f13329b = 0L;
                this.cachedSize = -1;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.nano.ym.MessageNano
            public int computeSerializedSize() {
                return super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f13328a) + CodedOutputByteBufferNano.computeUInt64Size(2, this.f13329b);
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        break;
                    } else if (readTag != 10) {
                        if (readTag != 16) {
                            if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                break;
                            }
                        } else {
                            this.f13329b = codedInputByteBufferNano.readUInt64();
                        }
                    } else {
                        this.f13328a = codedInputByteBufferNano.readString();
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
                codedOutputByteBufferNano.writeString(1, this.f13328a);
                codedOutputByteBufferNano.writeUInt64(2, this.f13329b);
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        public c() {
            a();
        }

        public c a() {
            this.f13314a = "";
            this.f13315b = "";
            this.f13316c = "";
            this.f13317d = 0;
            this.f13318e = "";
            this.f13319f = "";
            this.f13320g = false;
            this.f13321h = 0;
            this.f13322i = "";
            this.f13323j = "";
            this.f13324k = 0;
            this.f13325l = a.b();
            this.f13326m = "";
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!this.f13314a.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f13314a);
            }
            if (!this.f13315b.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f13315b);
            }
            if (!this.f13316c.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(4, this.f13316c);
            }
            int i10 = this.f13317d;
            if (i10 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(5, i10);
            }
            if (!this.f13318e.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(10, this.f13318e);
            }
            if (!this.f13319f.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(15, this.f13319f);
            }
            boolean z10 = this.f13320g;
            if (z10) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(17, z10);
            }
            int i11 = this.f13321h;
            if (i11 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(18, i11);
            }
            if (!this.f13322i.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(19, this.f13322i);
            }
            if (!this.f13323j.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(21, this.f13323j);
            }
            int i12 = this.f13324k;
            if (i12 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(22, i12);
            }
            a[] aVarArr = this.f13325l;
            if (aVarArr != null && aVarArr.length > 0) {
                int i13 = 0;
                while (true) {
                    a[] aVarArr2 = this.f13325l;
                    if (i13 >= aVarArr2.length) {
                        break;
                    }
                    a aVar = aVarArr2[i13];
                    if (aVar != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(23, aVar);
                    }
                    i13++;
                }
            }
            if (!this.f13326m.equals("")) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(24, this.f13326m);
            }
            return computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            int length;
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                switch (readTag) {
                    case 0:
                        break;
                    case 10:
                        this.f13314a = codedInputByteBufferNano.readString();
                        break;
                    case 18:
                        this.f13315b = codedInputByteBufferNano.readString();
                        break;
                    case Build.API_LEVELS.API_34 /* 34 */:
                        this.f13316c = codedInputByteBufferNano.readString();
                        break;
                    case C1415p9.L /* 40 */:
                        this.f13317d = codedInputByteBufferNano.readUInt32();
                        break;
                    case 82:
                        this.f13318e = codedInputByteBufferNano.readString();
                        break;
                    case 122:
                        this.f13319f = codedInputByteBufferNano.readString();
                        break;
                    case 136:
                        this.f13320g = codedInputByteBufferNano.readBool();
                        break;
                    case 144:
                        this.f13321h = codedInputByteBufferNano.readUInt32();
                        break;
                    case 154:
                        this.f13322i = codedInputByteBufferNano.readString();
                        break;
                    case 170:
                        this.f13323j = codedInputByteBufferNano.readString();
                        break;
                    case 176:
                        this.f13324k = codedInputByteBufferNano.readUInt32();
                        break;
                    case 186:
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 186);
                        a[] aVarArr = this.f13325l;
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
                        this.f13325l = aVarArr2;
                        break;
                    case 194:
                        this.f13326m = codedInputByteBufferNano.readString();
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
            if (!this.f13314a.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.f13314a);
            }
            if (!this.f13315b.equals("")) {
                codedOutputByteBufferNano.writeString(2, this.f13315b);
            }
            if (!this.f13316c.equals("")) {
                codedOutputByteBufferNano.writeString(4, this.f13316c);
            }
            int i10 = this.f13317d;
            if (i10 != 0) {
                codedOutputByteBufferNano.writeUInt32(5, i10);
            }
            if (!this.f13318e.equals("")) {
                codedOutputByteBufferNano.writeString(10, this.f13318e);
            }
            if (!this.f13319f.equals("")) {
                codedOutputByteBufferNano.writeString(15, this.f13319f);
            }
            boolean z10 = this.f13320g;
            if (z10) {
                codedOutputByteBufferNano.writeBool(17, z10);
            }
            int i11 = this.f13321h;
            if (i11 != 0) {
                codedOutputByteBufferNano.writeUInt32(18, i11);
            }
            if (!this.f13322i.equals("")) {
                codedOutputByteBufferNano.writeString(19, this.f13322i);
            }
            if (!this.f13323j.equals("")) {
                codedOutputByteBufferNano.writeString(21, this.f13323j);
            }
            int i12 = this.f13324k;
            if (i12 != 0) {
                codedOutputByteBufferNano.writeUInt32(22, i12);
            }
            a[] aVarArr = this.f13325l;
            if (aVarArr != null && aVarArr.length > 0) {
                int i13 = 0;
                while (true) {
                    a[] aVarArr2 = this.f13325l;
                    if (i13 >= aVarArr2.length) {
                        break;
                    }
                    a aVar = aVarArr2[i13];
                    if (aVar != null) {
                        codedOutputByteBufferNano.writeMessage(23, aVar);
                    }
                    i13++;
                }
            }
            if (!this.f13326m.equals("")) {
                codedOutputByteBufferNano.writeString(24, this.f13326m);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.qf$d */
    /* loaded from: classes2.dex */
    public static final class d extends MessageNano {

        /* renamed from: d  reason: collision with root package name */
        private static volatile d[] f13330d;

        /* renamed from: a  reason: collision with root package name */
        public long f13331a;

        /* renamed from: b  reason: collision with root package name */
        public b f13332b;

        /* renamed from: c  reason: collision with root package name */
        public a[] f13333c;

        /* renamed from: com.yandex.metrica.impl.ob.qf$d$a */
        /* loaded from: classes2.dex */
        public static final class a extends MessageNano {

            /* renamed from: y  reason: collision with root package name */
            private static volatile a[] f13334y;

            /* renamed from: a  reason: collision with root package name */
            public long f13335a;

            /* renamed from: b  reason: collision with root package name */
            public long f13336b;

            /* renamed from: c  reason: collision with root package name */
            public int f13337c;

            /* renamed from: d  reason: collision with root package name */
            public String f13338d;

            /* renamed from: e  reason: collision with root package name */
            public byte[] f13339e;

            /* renamed from: f  reason: collision with root package name */
            public b f13340f;

            /* renamed from: g  reason: collision with root package name */
            public c f13341g;

            /* renamed from: h  reason: collision with root package name */
            public String f13342h;

            /* renamed from: i  reason: collision with root package name */
            public C0132a f13343i;

            /* renamed from: j  reason: collision with root package name */
            public int f13344j;

            /* renamed from: k  reason: collision with root package name */
            public int f13345k;

            /* renamed from: l  reason: collision with root package name */
            public int f13346l;

            /* renamed from: m  reason: collision with root package name */
            public byte[] f13347m;

            /* renamed from: n  reason: collision with root package name */
            public int f13348n;

            /* renamed from: o  reason: collision with root package name */
            public long f13349o;

            /* renamed from: p  reason: collision with root package name */
            public long f13350p;

            /* renamed from: q  reason: collision with root package name */
            public int f13351q;

            /* renamed from: r  reason: collision with root package name */
            public int f13352r;

            /* renamed from: s  reason: collision with root package name */
            public int f13353s;

            /* renamed from: t  reason: collision with root package name */
            public int f13354t;

            /* renamed from: u  reason: collision with root package name */
            public int f13355u;

            /* renamed from: v  reason: collision with root package name */
            public boolean f13356v;

            /* renamed from: w  reason: collision with root package name */
            public long f13357w;

            /* renamed from: x  reason: collision with root package name */
            public b[] f13358x;

            /* renamed from: com.yandex.metrica.impl.ob.qf$d$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public static final class C0132a extends MessageNano {

                /* renamed from: a  reason: collision with root package name */
                public String f13359a;

                /* renamed from: b  reason: collision with root package name */
                public String f13360b;

                /* renamed from: c  reason: collision with root package name */
                public String f13361c;

                public C0132a() {
                    a();
                }

                public C0132a a() {
                    this.f13359a = "";
                    this.f13360b = "";
                    this.f13361c = "";
                    this.cachedSize = -1;
                    return this;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.protobuf.nano.ym.MessageNano
                public int computeSerializedSize() {
                    int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f13359a);
                    if (!this.f13360b.equals("")) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f13360b);
                    }
                    if (!this.f13361c.equals("")) {
                        return computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(3, this.f13361c);
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
                                if (readTag != 26) {
                                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                        break;
                                    }
                                } else {
                                    this.f13361c = codedInputByteBufferNano.readString();
                                }
                            } else {
                                this.f13360b = codedInputByteBufferNano.readString();
                            }
                        } else {
                            this.f13359a = codedInputByteBufferNano.readString();
                        }
                    }
                    return this;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
                    codedOutputByteBufferNano.writeString(1, this.f13359a);
                    if (!this.f13360b.equals("")) {
                        codedOutputByteBufferNano.writeString(2, this.f13360b);
                    }
                    if (!this.f13361c.equals("")) {
                        codedOutputByteBufferNano.writeString(3, this.f13361c);
                    }
                    super.writeTo(codedOutputByteBufferNano);
                }
            }

            /* renamed from: com.yandex.metrica.impl.ob.qf$d$a$b */
            /* loaded from: classes2.dex */
            public static final class b extends MessageNano {

                /* renamed from: c  reason: collision with root package name */
                private static volatile b[] f13362c;

                /* renamed from: a  reason: collision with root package name */
                public byte[] f13363a;

                /* renamed from: b  reason: collision with root package name */
                public byte[] f13364b;

                public b() {
                    a();
                }

                public static b[] b() {
                    if (f13362c == null) {
                        synchronized (InternalNano.LAZY_INIT_LOCK) {
                            if (f13362c == null) {
                                f13362c = new b[0];
                            }
                        }
                    }
                    return f13362c;
                }

                public b a() {
                    byte[] bArr = WireFormatNano.EMPTY_BYTES;
                    this.f13363a = bArr;
                    this.f13364b = bArr;
                    this.cachedSize = -1;
                    return this;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.protobuf.nano.ym.MessageNano
                public int computeSerializedSize() {
                    int computeSerializedSize = super.computeSerializedSize();
                    byte[] bArr = this.f13363a;
                    byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
                    if (!Arrays.equals(bArr, bArr2)) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f13363a);
                    }
                    if (!Arrays.equals(this.f13364b, bArr2)) {
                        return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(2, this.f13364b);
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
                                this.f13364b = codedInputByteBufferNano.readBytes();
                            }
                        } else {
                            this.f13363a = codedInputByteBufferNano.readBytes();
                        }
                    }
                    return this;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
                    byte[] bArr = this.f13363a;
                    byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
                    if (!Arrays.equals(bArr, bArr2)) {
                        codedOutputByteBufferNano.writeBytes(1, this.f13363a);
                    }
                    if (!Arrays.equals(this.f13364b, bArr2)) {
                        codedOutputByteBufferNano.writeBytes(2, this.f13364b);
                    }
                    super.writeTo(codedOutputByteBufferNano);
                }
            }

            /* renamed from: com.yandex.metrica.impl.ob.qf$d$a$c */
            /* loaded from: classes2.dex */
            public static final class c extends MessageNano {

                /* renamed from: a  reason: collision with root package name */
                public C0759of[] f13365a;

                /* renamed from: b  reason: collision with root package name */
                public C0831rf[] f13366b;

                /* renamed from: c  reason: collision with root package name */
                public int f13367c;

                /* renamed from: d  reason: collision with root package name */
                public String f13368d;

                public c() {
                    a();
                }

                public c a() {
                    this.f13365a = C0759of.b();
                    this.f13366b = C0831rf.b();
                    this.f13367c = 2;
                    this.f13368d = "";
                    this.cachedSize = -1;
                    return this;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.protobuf.nano.ym.MessageNano
                public int computeSerializedSize() {
                    int computeSerializedSize = super.computeSerializedSize();
                    C0759of[] c0759ofArr = this.f13365a;
                    int i10 = 0;
                    if (c0759ofArr != null && c0759ofArr.length > 0) {
                        int i11 = 0;
                        while (true) {
                            C0759of[] c0759ofArr2 = this.f13365a;
                            if (i11 >= c0759ofArr2.length) {
                                break;
                            }
                            C0759of c0759of = c0759ofArr2[i11];
                            if (c0759of != null) {
                                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c0759of);
                            }
                            i11++;
                        }
                    }
                    C0831rf[] c0831rfArr = this.f13366b;
                    if (c0831rfArr != null && c0831rfArr.length > 0) {
                        while (true) {
                            C0831rf[] c0831rfArr2 = this.f13366b;
                            if (i10 >= c0831rfArr2.length) {
                                break;
                            }
                            C0831rf c0831rf = c0831rfArr2[i10];
                            if (c0831rf != null) {
                                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c0831rf);
                            }
                            i10++;
                        }
                    }
                    int i12 = this.f13367c;
                    if (i12 != 2) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i12);
                    }
                    if (!this.f13368d.equals("")) {
                        return computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(4, this.f13368d);
                    }
                    return computeSerializedSize;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
                    int length;
                    int length2;
                    while (true) {
                        int readTag = codedInputByteBufferNano.readTag();
                        if (readTag != 0) {
                            if (readTag != 10) {
                                if (readTag != 18) {
                                    if (readTag != 24) {
                                        if (readTag != 34) {
                                            if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                            }
                                        } else {
                                            this.f13368d = codedInputByteBufferNano.readString();
                                        }
                                    } else {
                                        int readInt32 = codedInputByteBufferNano.readInt32();
                                        switch (readInt32) {
                                            case 0:
                                            case 1:
                                            case 2:
                                            case 3:
                                            case 4:
                                            case 5:
                                            case 6:
                                            case 7:
                                            case 8:
                                            case 9:
                                            case 10:
                                            case 11:
                                            case 12:
                                                this.f13367c = readInt32;
                                                continue;
                                        }
                                    }
                                } else {
                                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                                    C0831rf[] c0831rfArr = this.f13366b;
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
                                    this.f13366b = c0831rfArr2;
                                }
                            } else {
                                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                                C0759of[] c0759ofArr = this.f13365a;
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
                                this.f13365a = c0759ofArr2;
                            }
                        }
                    }
                    return this;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
                    C0759of[] c0759ofArr = this.f13365a;
                    int i10 = 0;
                    if (c0759ofArr != null && c0759ofArr.length > 0) {
                        int i11 = 0;
                        while (true) {
                            C0759of[] c0759ofArr2 = this.f13365a;
                            if (i11 >= c0759ofArr2.length) {
                                break;
                            }
                            C0759of c0759of = c0759ofArr2[i11];
                            if (c0759of != null) {
                                codedOutputByteBufferNano.writeMessage(1, c0759of);
                            }
                            i11++;
                        }
                    }
                    C0831rf[] c0831rfArr = this.f13366b;
                    if (c0831rfArr != null && c0831rfArr.length > 0) {
                        while (true) {
                            C0831rf[] c0831rfArr2 = this.f13366b;
                            if (i10 >= c0831rfArr2.length) {
                                break;
                            }
                            C0831rf c0831rf = c0831rfArr2[i10];
                            if (c0831rf != null) {
                                codedOutputByteBufferNano.writeMessage(2, c0831rf);
                            }
                            i10++;
                        }
                    }
                    int i12 = this.f13367c;
                    if (i12 != 2) {
                        codedOutputByteBufferNano.writeInt32(3, i12);
                    }
                    if (!this.f13368d.equals("")) {
                        codedOutputByteBufferNano.writeString(4, this.f13368d);
                    }
                    super.writeTo(codedOutputByteBufferNano);
                }
            }

            public a() {
                a();
            }

            public static a[] b() {
                if (f13334y == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (f13334y == null) {
                            f13334y = new a[0];
                        }
                    }
                }
                return f13334y;
            }

            public a a() {
                this.f13335a = 0L;
                this.f13336b = 0L;
                this.f13337c = 0;
                this.f13338d = "";
                byte[] bArr = WireFormatNano.EMPTY_BYTES;
                this.f13339e = bArr;
                this.f13340f = null;
                this.f13341g = null;
                this.f13342h = "";
                this.f13343i = null;
                this.f13344j = 0;
                this.f13345k = 0;
                this.f13346l = -1;
                this.f13347m = bArr;
                this.f13348n = -1;
                this.f13349o = 0L;
                this.f13350p = 0L;
                this.f13351q = 0;
                this.f13352r = 0;
                this.f13353s = -1;
                this.f13354t = 0;
                this.f13355u = 0;
                this.f13356v = false;
                this.f13357w = 1L;
                this.f13358x = b.b();
                this.cachedSize = -1;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.nano.ym.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeUInt64Size(1, this.f13335a) + CodedOutputByteBufferNano.computeUInt64Size(2, this.f13336b) + CodedOutputByteBufferNano.computeUInt32Size(3, this.f13337c);
                if (!this.f13338d.equals("")) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(4, this.f13338d);
                }
                byte[] bArr = this.f13339e;
                byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
                if (!Arrays.equals(bArr, bArr2)) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(5, this.f13339e);
                }
                b bVar = this.f13340f;
                if (bVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(6, bVar);
                }
                c cVar = this.f13341g;
                if (cVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(7, cVar);
                }
                if (!this.f13342h.equals("")) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(8, this.f13342h);
                }
                C0132a c0132a = this.f13343i;
                if (c0132a != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(9, c0132a);
                }
                int i10 = this.f13344j;
                if (i10 != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(10, i10);
                }
                int i11 = this.f13345k;
                if (i11 != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(12, i11);
                }
                int i12 = this.f13346l;
                if (i12 != -1) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(13, i12);
                }
                if (!Arrays.equals(this.f13347m, bArr2)) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(14, this.f13347m);
                }
                int i13 = this.f13348n;
                if (i13 != -1) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(15, i13);
                }
                long j10 = this.f13349o;
                if (j10 != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(16, j10);
                }
                long j11 = this.f13350p;
                if (j11 != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(17, j11);
                }
                int i14 = this.f13351q;
                if (i14 != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(18, i14);
                }
                int i15 = this.f13352r;
                if (i15 != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(19, i15);
                }
                int i16 = this.f13353s;
                if (i16 != -1) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(20, i16);
                }
                int i17 = this.f13354t;
                if (i17 != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(21, i17);
                }
                int i18 = this.f13355u;
                if (i18 != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(22, i18);
                }
                boolean z10 = this.f13356v;
                if (z10) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(23, z10);
                }
                long j12 = this.f13357w;
                if (j12 != 1) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(24, j12);
                }
                b[] bVarArr = this.f13358x;
                if (bVarArr != null && bVarArr.length > 0) {
                    int i19 = 0;
                    while (true) {
                        b[] bVarArr2 = this.f13358x;
                        if (i19 >= bVarArr2.length) {
                            break;
                        }
                        b bVar2 = bVarArr2[i19];
                        if (bVar2 != null) {
                            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(25, bVar2);
                        }
                        i19++;
                    }
                }
                return computeSerializedSize;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
                int length;
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    switch (readTag) {
                        case 0:
                            break;
                        case 8:
                            this.f13335a = codedInputByteBufferNano.readUInt64();
                            break;
                        case 16:
                            this.f13336b = codedInputByteBufferNano.readUInt64();
                            break;
                        case Build.API_LEVELS.API_24 /* 24 */:
                            this.f13337c = codedInputByteBufferNano.readUInt32();
                            break;
                        case Build.API_LEVELS.API_34 /* 34 */:
                            this.f13338d = codedInputByteBufferNano.readString();
                            break;
                        case C1415p9.M /* 42 */:
                            this.f13339e = codedInputByteBufferNano.readBytes();
                            break;
                        case 50:
                            if (this.f13340f == null) {
                                this.f13340f = new b();
                            }
                            codedInputByteBufferNano.readMessage(this.f13340f);
                            break;
                        case 58:
                            if (this.f13341g == null) {
                                this.f13341g = new c();
                            }
                            codedInputByteBufferNano.readMessage(this.f13341g);
                            break;
                        case 66:
                            this.f13342h = codedInputByteBufferNano.readString();
                            break;
                        case 74:
                            if (this.f13343i == null) {
                                this.f13343i = new C0132a();
                            }
                            codedInputByteBufferNano.readMessage(this.f13343i);
                            break;
                        case 80:
                            this.f13344j = codedInputByteBufferNano.readUInt32();
                            break;
                        case 96:
                            int readInt32 = codedInputByteBufferNano.readInt32();
                            if (readInt32 != 0 && readInt32 != 1 && readInt32 != 2) {
                                break;
                            } else {
                                this.f13345k = readInt32;
                                break;
                            }
                        case 104:
                            int readInt322 = codedInputByteBufferNano.readInt32();
                            if (readInt322 != -1 && readInt322 != 0 && readInt322 != 1) {
                                break;
                            } else {
                                this.f13346l = readInt322;
                                break;
                            }
                        case 114:
                            this.f13347m = codedInputByteBufferNano.readBytes();
                            break;
                        case 120:
                            int readInt323 = codedInputByteBufferNano.readInt32();
                            if (readInt323 != -1 && readInt323 != 0 && readInt323 != 1) {
                                break;
                            } else {
                                this.f13348n = readInt323;
                                break;
                            }
                        case 128:
                            this.f13349o = codedInputByteBufferNano.readUInt64();
                            break;
                        case 136:
                            this.f13350p = codedInputByteBufferNano.readUInt64();
                            break;
                        case 144:
                            int readInt324 = codedInputByteBufferNano.readInt32();
                            if (readInt324 != 0 && readInt324 != 1 && readInt324 != 2 && readInt324 != 3 && readInt324 != 4) {
                                break;
                            } else {
                                this.f13351q = readInt324;
                                break;
                            }
                        case 152:
                            int readInt325 = codedInputByteBufferNano.readInt32();
                            if (readInt325 != 0 && readInt325 != 1 && readInt325 != 2 && readInt325 != 3) {
                                break;
                            } else {
                                this.f13352r = readInt325;
                                break;
                            }
                        case 160:
                            int readInt326 = codedInputByteBufferNano.readInt32();
                            if (readInt326 != -1 && readInt326 != 0 && readInt326 != 1) {
                                break;
                            } else {
                                this.f13353s = readInt326;
                                break;
                            }
                        case 168:
                            int readInt327 = codedInputByteBufferNano.readInt32();
                            if (readInt327 != 0 && readInt327 != 1 && readInt327 != 2 && readInt327 != 3) {
                                break;
                            } else {
                                this.f13354t = readInt327;
                                break;
                            }
                        case 176:
                            int readInt328 = codedInputByteBufferNano.readInt32();
                            if (readInt328 != 0 && readInt328 != 1) {
                                break;
                            } else {
                                this.f13355u = readInt328;
                                break;
                            }
                        case 184:
                            this.f13356v = codedInputByteBufferNano.readBool();
                            break;
                        case 192:
                            this.f13357w = codedInputByteBufferNano.readUInt64();
                            break;
                        case 202:
                            int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 202);
                            b[] bVarArr = this.f13358x;
                            if (bVarArr == null) {
                                length = 0;
                            } else {
                                length = bVarArr.length;
                            }
                            int i10 = repeatedFieldArrayLength + length;
                            b[] bVarArr2 = new b[i10];
                            if (length != 0) {
                                System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                            }
                            while (length < i10 - 1) {
                                b bVar = new b();
                                bVarArr2[length] = bVar;
                                codedInputByteBufferNano.readMessage(bVar);
                                codedInputByteBufferNano.readTag();
                                length++;
                            }
                            b bVar2 = new b();
                            bVarArr2[length] = bVar2;
                            codedInputByteBufferNano.readMessage(bVar2);
                            this.f13358x = bVarArr2;
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
                codedOutputByteBufferNano.writeUInt64(1, this.f13335a);
                codedOutputByteBufferNano.writeUInt64(2, this.f13336b);
                codedOutputByteBufferNano.writeUInt32(3, this.f13337c);
                if (!this.f13338d.equals("")) {
                    codedOutputByteBufferNano.writeString(4, this.f13338d);
                }
                byte[] bArr = this.f13339e;
                byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
                if (!Arrays.equals(bArr, bArr2)) {
                    codedOutputByteBufferNano.writeBytes(5, this.f13339e);
                }
                b bVar = this.f13340f;
                if (bVar != null) {
                    codedOutputByteBufferNano.writeMessage(6, bVar);
                }
                c cVar = this.f13341g;
                if (cVar != null) {
                    codedOutputByteBufferNano.writeMessage(7, cVar);
                }
                if (!this.f13342h.equals("")) {
                    codedOutputByteBufferNano.writeString(8, this.f13342h);
                }
                C0132a c0132a = this.f13343i;
                if (c0132a != null) {
                    codedOutputByteBufferNano.writeMessage(9, c0132a);
                }
                int i10 = this.f13344j;
                if (i10 != 0) {
                    codedOutputByteBufferNano.writeUInt32(10, i10);
                }
                int i11 = this.f13345k;
                if (i11 != 0) {
                    codedOutputByteBufferNano.writeInt32(12, i11);
                }
                int i12 = this.f13346l;
                if (i12 != -1) {
                    codedOutputByteBufferNano.writeInt32(13, i12);
                }
                if (!Arrays.equals(this.f13347m, bArr2)) {
                    codedOutputByteBufferNano.writeBytes(14, this.f13347m);
                }
                int i13 = this.f13348n;
                if (i13 != -1) {
                    codedOutputByteBufferNano.writeInt32(15, i13);
                }
                long j10 = this.f13349o;
                if (j10 != 0) {
                    codedOutputByteBufferNano.writeUInt64(16, j10);
                }
                long j11 = this.f13350p;
                if (j11 != 0) {
                    codedOutputByteBufferNano.writeUInt64(17, j11);
                }
                int i14 = this.f13351q;
                if (i14 != 0) {
                    codedOutputByteBufferNano.writeInt32(18, i14);
                }
                int i15 = this.f13352r;
                if (i15 != 0) {
                    codedOutputByteBufferNano.writeInt32(19, i15);
                }
                int i16 = this.f13353s;
                if (i16 != -1) {
                    codedOutputByteBufferNano.writeInt32(20, i16);
                }
                int i17 = this.f13354t;
                if (i17 != 0) {
                    codedOutputByteBufferNano.writeInt32(21, i17);
                }
                int i18 = this.f13355u;
                if (i18 != 0) {
                    codedOutputByteBufferNano.writeInt32(22, i18);
                }
                boolean z10 = this.f13356v;
                if (z10) {
                    codedOutputByteBufferNano.writeBool(23, z10);
                }
                long j12 = this.f13357w;
                if (j12 != 1) {
                    codedOutputByteBufferNano.writeUInt64(24, j12);
                }
                b[] bVarArr = this.f13358x;
                if (bVarArr != null && bVarArr.length > 0) {
                    int i19 = 0;
                    while (true) {
                        b[] bVarArr2 = this.f13358x;
                        if (i19 >= bVarArr2.length) {
                            break;
                        }
                        b bVar2 = bVarArr2[i19];
                        if (bVar2 != null) {
                            codedOutputByteBufferNano.writeMessage(25, bVar2);
                        }
                        i19++;
                    }
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.qf$d$b */
        /* loaded from: classes2.dex */
        public static final class b extends MessageNano {

            /* renamed from: a  reason: collision with root package name */
            public f f13369a;

            /* renamed from: b  reason: collision with root package name */
            public String f13370b;

            /* renamed from: c  reason: collision with root package name */
            public int f13371c;

            public b() {
                a();
            }

            public b a() {
                this.f13369a = null;
                this.f13370b = "";
                this.f13371c = 0;
                this.cachedSize = -1;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.nano.ym.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                f fVar = this.f13369a;
                if (fVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, fVar);
                }
                int computeStringSize = computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(2, this.f13370b);
                int i10 = this.f13371c;
                if (i10 != 0) {
                    return computeStringSize + CodedOutputByteBufferNano.computeInt32Size(5, i10);
                }
                return computeStringSize;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        break;
                    } else if (readTag != 10) {
                        if (readTag != 18) {
                            if (readTag != 40) {
                                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                    break;
                                }
                            } else {
                                int readInt32 = codedInputByteBufferNano.readInt32();
                                if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2) {
                                    this.f13371c = readInt32;
                                }
                            }
                        } else {
                            this.f13370b = codedInputByteBufferNano.readString();
                        }
                    } else {
                        if (this.f13369a == null) {
                            this.f13369a = new f();
                        }
                        codedInputByteBufferNano.readMessage(this.f13369a);
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
                f fVar = this.f13369a;
                if (fVar != null) {
                    codedOutputByteBufferNano.writeMessage(1, fVar);
                }
                codedOutputByteBufferNano.writeString(2, this.f13370b);
                int i10 = this.f13371c;
                if (i10 != 0) {
                    codedOutputByteBufferNano.writeInt32(5, i10);
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        public d() {
            a();
        }

        public static d[] b() {
            if (f13330d == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f13330d == null) {
                        f13330d = new d[0];
                    }
                }
            }
            return f13330d;
        }

        public d a() {
            this.f13331a = 0L;
            this.f13332b = null;
            this.f13333c = a.b();
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeUInt64Size(1, this.f13331a);
            b bVar = this.f13332b;
            if (bVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, bVar);
            }
            a[] aVarArr = this.f13333c;
            if (aVarArr != null && aVarArr.length > 0) {
                int i10 = 0;
                while (true) {
                    a[] aVarArr2 = this.f13333c;
                    if (i10 >= aVarArr2.length) {
                        break;
                    }
                    a aVar = aVarArr2[i10];
                    if (aVar != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, aVar);
                    }
                    i10++;
                }
            }
            return computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            int length;
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
                            int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                            a[] aVarArr = this.f13333c;
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
                            this.f13333c = aVarArr2;
                        }
                    } else {
                        if (this.f13332b == null) {
                            this.f13332b = new b();
                        }
                        codedInputByteBufferNano.readMessage(this.f13332b);
                    }
                } else {
                    this.f13331a = codedInputByteBufferNano.readUInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeUInt64(1, this.f13331a);
            b bVar = this.f13332b;
            if (bVar != null) {
                codedOutputByteBufferNano.writeMessage(2, bVar);
            }
            a[] aVarArr = this.f13333c;
            if (aVarArr != null && aVarArr.length > 0) {
                int i10 = 0;
                while (true) {
                    a[] aVarArr2 = this.f13333c;
                    if (i10 >= aVarArr2.length) {
                        break;
                    }
                    a aVar = aVarArr2[i10];
                    if (aVar != null) {
                        codedOutputByteBufferNano.writeMessage(3, aVar);
                    }
                    i10++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.qf$e */
    /* loaded from: classes2.dex */
    public static final class e extends MessageNano {

        /* renamed from: e  reason: collision with root package name */
        private static volatile e[] f13372e;

        /* renamed from: a  reason: collision with root package name */
        public int f13373a;

        /* renamed from: b  reason: collision with root package name */
        public int f13374b;

        /* renamed from: c  reason: collision with root package name */
        public String f13375c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f13376d;

        public e() {
            a();
        }

        public static e[] b() {
            if (f13372e == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f13372e == null) {
                        f13372e = new e[0];
                    }
                }
            }
            return f13372e;
        }

        public e a() {
            this.f13373a = 0;
            this.f13374b = 0;
            this.f13375c = "";
            this.f13376d = false;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            int i10 = this.f13373a;
            if (i10 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(1, i10);
            }
            int i11 = this.f13374b;
            if (i11 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(2, i11);
            }
            if (!this.f13375c.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(3, this.f13375c);
            }
            boolean z10 = this.f13376d;
            if (z10) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(4, z10);
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
                        if (readTag != 26) {
                            if (readTag != 32) {
                                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                    break;
                                }
                            } else {
                                this.f13376d = codedInputByteBufferNano.readBool();
                            }
                        } else {
                            this.f13375c = codedInputByteBufferNano.readString();
                        }
                    } else {
                        this.f13374b = codedInputByteBufferNano.readUInt32();
                    }
                } else {
                    this.f13373a = codedInputByteBufferNano.readUInt32();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            int i10 = this.f13373a;
            if (i10 != 0) {
                codedOutputByteBufferNano.writeUInt32(1, i10);
            }
            int i11 = this.f13374b;
            if (i11 != 0) {
                codedOutputByteBufferNano.writeUInt32(2, i11);
            }
            if (!this.f13375c.equals("")) {
                codedOutputByteBufferNano.writeString(3, this.f13375c);
            }
            boolean z10 = this.f13376d;
            if (z10) {
                codedOutputByteBufferNano.writeBool(4, z10);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.qf$f */
    /* loaded from: classes2.dex */
    public static final class f extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f13377a;

        /* renamed from: b  reason: collision with root package name */
        public int f13378b;

        /* renamed from: c  reason: collision with root package name */
        public long f13379c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f13380d;

        public f() {
            a();
        }

        public f a() {
            this.f13377a = 0L;
            this.f13378b = 0;
            this.f13379c = 0L;
            this.f13380d = false;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeUInt64Size(1, this.f13377a) + CodedOutputByteBufferNano.computeSInt32Size(2, this.f13378b);
            long j10 = this.f13379c;
            if (j10 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(3, j10);
            }
            boolean z10 = this.f13380d;
            if (z10) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(4, z10);
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
                        if (readTag != 24) {
                            if (readTag != 32) {
                                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                    break;
                                }
                            } else {
                                this.f13380d = codedInputByteBufferNano.readBool();
                            }
                        } else {
                            this.f13379c = codedInputByteBufferNano.readInt64();
                        }
                    } else {
                        this.f13378b = codedInputByteBufferNano.readSInt32();
                    }
                } else {
                    this.f13377a = codedInputByteBufferNano.readUInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeUInt64(1, this.f13377a);
            codedOutputByteBufferNano.writeSInt32(2, this.f13378b);
            long j10 = this.f13379c;
            if (j10 != 0) {
                codedOutputByteBufferNano.writeInt64(3, j10);
            }
            boolean z10 = this.f13380d;
            if (z10) {
                codedOutputByteBufferNano.writeBool(4, z10);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C0808qf() {
        a();
    }

    public C0808qf a() {
        this.f13297a = d.b();
        this.f13298b = null;
        this.f13299c = a.b();
        this.f13300d = e.b();
        this.f13301e = WireFormatNano.EMPTY_STRING_ARRAY;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        d[] dVarArr = this.f13297a;
        int i10 = 0;
        if (dVarArr != null && dVarArr.length > 0) {
            int i11 = 0;
            while (true) {
                d[] dVarArr2 = this.f13297a;
                if (i11 >= dVarArr2.length) {
                    break;
                }
                d dVar = dVarArr2[i11];
                if (dVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, dVar);
                }
                i11++;
            }
        }
        c cVar = this.f13298b;
        if (cVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, cVar);
        }
        a[] aVarArr = this.f13299c;
        if (aVarArr != null && aVarArr.length > 0) {
            int i12 = 0;
            while (true) {
                a[] aVarArr2 = this.f13299c;
                if (i12 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i12];
                if (aVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(7, aVar);
                }
                i12++;
            }
        }
        e[] eVarArr = this.f13300d;
        if (eVarArr != null && eVarArr.length > 0) {
            int i13 = 0;
            while (true) {
                e[] eVarArr2 = this.f13300d;
                if (i13 >= eVarArr2.length) {
                    break;
                }
                e eVar = eVarArr2[i13];
                if (eVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(10, eVar);
                }
                i13++;
            }
        }
        String[] strArr = this.f13301e;
        if (strArr != null && strArr.length > 0) {
            int i14 = 0;
            int i15 = 0;
            while (true) {
                String[] strArr2 = this.f13301e;
                if (i10 < strArr2.length) {
                    String str = strArr2[i10];
                    if (str != null) {
                        i15++;
                        i14 += CodedOutputByteBufferNano.computeStringSizeNoTag(str);
                    }
                    i10++;
                } else {
                    return computeSerializedSize + i14 + (i15 * 1);
                }
            }
        } else {
            return computeSerializedSize;
        }
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        int length;
        int length2;
        int length3;
        int length4;
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                break;
            } else if (readTag != 26) {
                if (readTag != 34) {
                    if (readTag != 58) {
                        if (readTag != 82) {
                            if (readTag != 90) {
                                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                    break;
                                }
                            } else {
                                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 90);
                                String[] strArr = this.f13301e;
                                if (strArr == null) {
                                    length = 0;
                                } else {
                                    length = strArr.length;
                                }
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
                                this.f13301e = strArr2;
                            }
                        } else {
                            int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 82);
                            e[] eVarArr = this.f13300d;
                            if (eVarArr == null) {
                                length2 = 0;
                            } else {
                                length2 = eVarArr.length;
                            }
                            int i11 = repeatedFieldArrayLength2 + length2;
                            e[] eVarArr2 = new e[i11];
                            if (length2 != 0) {
                                System.arraycopy(eVarArr, 0, eVarArr2, 0, length2);
                            }
                            while (length2 < i11 - 1) {
                                e eVar = new e();
                                eVarArr2[length2] = eVar;
                                codedInputByteBufferNano.readMessage(eVar);
                                codedInputByteBufferNano.readTag();
                                length2++;
                            }
                            e eVar2 = new e();
                            eVarArr2[length2] = eVar2;
                            codedInputByteBufferNano.readMessage(eVar2);
                            this.f13300d = eVarArr2;
                        }
                    } else {
                        int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 58);
                        a[] aVarArr = this.f13299c;
                        if (aVarArr == null) {
                            length3 = 0;
                        } else {
                            length3 = aVarArr.length;
                        }
                        int i12 = repeatedFieldArrayLength3 + length3;
                        a[] aVarArr2 = new a[i12];
                        if (length3 != 0) {
                            System.arraycopy(aVarArr, 0, aVarArr2, 0, length3);
                        }
                        while (length3 < i12 - 1) {
                            a aVar = new a();
                            aVarArr2[length3] = aVar;
                            codedInputByteBufferNano.readMessage(aVar);
                            codedInputByteBufferNano.readTag();
                            length3++;
                        }
                        a aVar2 = new a();
                        aVarArr2[length3] = aVar2;
                        codedInputByteBufferNano.readMessage(aVar2);
                        this.f13299c = aVarArr2;
                    }
                } else {
                    if (this.f13298b == null) {
                        this.f13298b = new c();
                    }
                    codedInputByteBufferNano.readMessage(this.f13298b);
                }
            } else {
                int repeatedFieldArrayLength4 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                d[] dVarArr = this.f13297a;
                if (dVarArr == null) {
                    length4 = 0;
                } else {
                    length4 = dVarArr.length;
                }
                int i13 = repeatedFieldArrayLength4 + length4;
                d[] dVarArr2 = new d[i13];
                if (length4 != 0) {
                    System.arraycopy(dVarArr, 0, dVarArr2, 0, length4);
                }
                while (length4 < i13 - 1) {
                    d dVar = new d();
                    dVarArr2[length4] = dVar;
                    codedInputByteBufferNano.readMessage(dVar);
                    codedInputByteBufferNano.readTag();
                    length4++;
                }
                d dVar2 = new d();
                dVarArr2[length4] = dVar2;
                codedInputByteBufferNano.readMessage(dVar2);
                this.f13297a = dVarArr2;
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        d[] dVarArr = this.f13297a;
        int i10 = 0;
        if (dVarArr != null && dVarArr.length > 0) {
            int i11 = 0;
            while (true) {
                d[] dVarArr2 = this.f13297a;
                if (i11 >= dVarArr2.length) {
                    break;
                }
                d dVar = dVarArr2[i11];
                if (dVar != null) {
                    codedOutputByteBufferNano.writeMessage(3, dVar);
                }
                i11++;
            }
        }
        c cVar = this.f13298b;
        if (cVar != null) {
            codedOutputByteBufferNano.writeMessage(4, cVar);
        }
        a[] aVarArr = this.f13299c;
        if (aVarArr != null && aVarArr.length > 0) {
            int i12 = 0;
            while (true) {
                a[] aVarArr2 = this.f13299c;
                if (i12 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i12];
                if (aVar != null) {
                    codedOutputByteBufferNano.writeMessage(7, aVar);
                }
                i12++;
            }
        }
        e[] eVarArr = this.f13300d;
        if (eVarArr != null && eVarArr.length > 0) {
            int i13 = 0;
            while (true) {
                e[] eVarArr2 = this.f13300d;
                if (i13 >= eVarArr2.length) {
                    break;
                }
                e eVar = eVarArr2[i13];
                if (eVar != null) {
                    codedOutputByteBufferNano.writeMessage(10, eVar);
                }
                i13++;
            }
        }
        String[] strArr = this.f13301e;
        if (strArr != null && strArr.length > 0) {
            while (true) {
                String[] strArr2 = this.f13301e;
                if (i10 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i10];
                if (str != null) {
                    codedOutputByteBufferNano.writeString(11, str);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
