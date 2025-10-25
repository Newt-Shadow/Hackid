package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import java.util.Arrays;
import org.apache.tika.pipes.PipesConfigBase;
/* loaded from: classes2.dex */
public final class If extends MessageNano {
    public String A;
    public String B;
    public long C;
    public long D;
    public boolean E;
    public n F;
    public j G;
    public int H;
    public int I;
    public w J;
    public v K;
    public v L;
    public v M;
    public t N;
    public c O;
    public f P;
    public String[] Q;
    public b R;
    public a S;
    public h T;
    public g U;
    public r V;
    public l[] W;

    /* renamed from: a  reason: collision with root package name */
    public String f10230a;

    /* renamed from: b  reason: collision with root package name */
    public long f10231b;

    /* renamed from: c  reason: collision with root package name */
    public String[] f10232c;

    /* renamed from: d  reason: collision with root package name */
    public String f10233d;

    /* renamed from: e  reason: collision with root package name */
    public String f10234e;

    /* renamed from: f  reason: collision with root package name */
    public String[] f10235f;

    /* renamed from: g  reason: collision with root package name */
    public String[] f10236g;

    /* renamed from: h  reason: collision with root package name */
    public String[] f10237h;

    /* renamed from: i  reason: collision with root package name */
    public String[] f10238i;

    /* renamed from: j  reason: collision with root package name */
    public d[] f10239j;

    /* renamed from: k  reason: collision with root package name */
    public i f10240k;

    /* renamed from: l  reason: collision with root package name */
    public k[] f10241l;

    /* renamed from: m  reason: collision with root package name */
    public q f10242m;

    /* renamed from: n  reason: collision with root package name */
    public o[] f10243n;

    /* renamed from: o  reason: collision with root package name */
    public String f10244o;

    /* renamed from: p  reason: collision with root package name */
    public String f10245p;

    /* renamed from: q  reason: collision with root package name */
    public String f10246q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f10247r;

    /* renamed from: s  reason: collision with root package name */
    public String f10248s;

    /* renamed from: t  reason: collision with root package name */
    public String[] f10249t;

    /* renamed from: u  reason: collision with root package name */
    public s f10250u;

    /* renamed from: v  reason: collision with root package name */
    public boolean f10251v;

    /* renamed from: w  reason: collision with root package name */
    public m[] f10252w;

    /* renamed from: x  reason: collision with root package name */
    public p f10253x;

    /* renamed from: y  reason: collision with root package name */
    public String f10254y;

    /* renamed from: z  reason: collision with root package name */
    public String f10255z;

    /* loaded from: classes2.dex */
    public static final class a extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public b[] f10256a;

        /* renamed from: com.yandex.metrica.impl.ob.If$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0123a extends MessageNano {

            /* renamed from: a  reason: collision with root package name */
            public String f10257a;

            public C0123a() {
                a();
            }

            public C0123a a() {
                this.f10257a = "";
                this.cachedSize = -1;
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            protected int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                if (!this.f10257a.equals("")) {
                    return computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(1, this.f10257a);
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
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        this.f10257a = codedInputByteBufferNano.readString();
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
                if (!this.f10257a.equals("")) {
                    codedOutputByteBufferNano.writeString(1, this.f10257a);
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends MessageNano {

            /* renamed from: c  reason: collision with root package name */
            private static volatile b[] f10258c;

            /* renamed from: a  reason: collision with root package name */
            public String f10259a;

            /* renamed from: b  reason: collision with root package name */
            public C0123a f10260b;

            public b() {
                a();
            }

            public static b[] b() {
                if (f10258c == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (f10258c == null) {
                            f10258c = new b[0];
                        }
                    }
                }
                return f10258c;
            }

            public b a() {
                this.f10259a = "";
                this.f10260b = null;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            protected int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                if (!this.f10259a.equals("")) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f10259a);
                }
                C0123a c0123a = this.f10260b;
                if (c0123a != null) {
                    return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, c0123a);
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
                            if (this.f10260b == null) {
                                this.f10260b = new C0123a();
                            }
                            codedInputByteBufferNano.readMessage(this.f10260b);
                        }
                    } else {
                        this.f10259a = codedInputByteBufferNano.readString();
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
                if (!this.f10259a.equals("")) {
                    codedOutputByteBufferNano.writeString(1, this.f10259a);
                }
                C0123a c0123a = this.f10260b;
                if (c0123a != null) {
                    codedOutputByteBufferNano.writeMessage(2, c0123a);
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        public a() {
            a();
        }

        public a a() {
            this.f10256a = b.b();
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            b[] bVarArr = this.f10256a;
            if (bVarArr != null && bVarArr.length > 0) {
                int i10 = 0;
                while (true) {
                    b[] bVarArr2 = this.f10256a;
                    if (i10 >= bVarArr2.length) {
                        break;
                    }
                    b bVar = bVarArr2[i10];
                    if (bVar != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, bVar);
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
                } else if (readTag != 10) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                    b[] bVarArr = this.f10256a;
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
                    this.f10256a = bVarArr2;
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            b[] bVarArr = this.f10256a;
            if (bVarArr != null && bVarArr.length > 0) {
                int i10 = 0;
                while (true) {
                    b[] bVarArr2 = this.f10256a;
                    if (i10 >= bVarArr2.length) {
                        break;
                    }
                    b bVar = bVarArr2[i10];
                    if (bVar != null) {
                        codedOutputByteBufferNano.writeMessage(1, bVar);
                    }
                    i10++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public int f10261a;

        /* renamed from: b  reason: collision with root package name */
        public int f10262b;

        public b() {
            a();
        }

        public b a() {
            this.f10261a = 86400;
            this.f10262b = 86400;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            int i10 = this.f10261a;
            if (i10 != 86400) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i10);
            }
            int i11 = this.f10262b;
            if (i11 != 86400) {
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
                        this.f10262b = codedInputByteBufferNano.readInt32();
                    }
                } else {
                    this.f10261a = codedInputByteBufferNano.readInt32();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            int i10 = this.f10261a;
            if (i10 != 86400) {
                codedOutputByteBufferNano.writeInt32(1, i10);
            }
            int i11 = this.f10262b;
            if (i11 != 86400) {
                codedOutputByteBufferNano.writeInt32(2, i11);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class c extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f10263a;

        /* renamed from: b  reason: collision with root package name */
        public long f10264b;

        /* renamed from: c  reason: collision with root package name */
        public long f10265c;

        /* renamed from: d  reason: collision with root package name */
        public long f10266d;

        public c() {
            a();
        }

        public c a() {
            this.f10263a = 10000L;
            this.f10264b = 10000L;
            this.f10265c = 10000L;
            this.f10266d = 10000L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            long j10 = this.f10263a;
            if (j10 != 10000) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j10);
            }
            long j11 = this.f10264b;
            if (j11 != 10000) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(2, j11);
            }
            long j12 = this.f10265c;
            if (j12 != 10000) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(3, j12);
            }
            long j13 = this.f10266d;
            if (j13 != 10000) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(4, j13);
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
                                this.f10266d = codedInputByteBufferNano.readInt64();
                            }
                        } else {
                            this.f10265c = codedInputByteBufferNano.readInt64();
                        }
                    } else {
                        this.f10264b = codedInputByteBufferNano.readInt64();
                    }
                } else {
                    this.f10263a = codedInputByteBufferNano.readInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            long j10 = this.f10263a;
            if (j10 != 10000) {
                codedOutputByteBufferNano.writeInt64(1, j10);
            }
            long j11 = this.f10264b;
            if (j11 != 10000) {
                codedOutputByteBufferNano.writeInt64(2, j11);
            }
            long j12 = this.f10265c;
            if (j12 != 10000) {
                codedOutputByteBufferNano.writeInt64(3, j12);
            }
            long j13 = this.f10266d;
            if (j13 != 10000) {
                codedOutputByteBufferNano.writeInt64(4, j13);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class d extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile d[] f10267c;

        /* renamed from: a  reason: collision with root package name */
        public String f10268a;

        /* renamed from: b  reason: collision with root package name */
        public String[] f10269b;

        public d() {
            a();
        }

        public static d[] b() {
            if (f10267c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f10267c == null) {
                        f10267c = new d[0];
                    }
                }
            }
            return f10267c;
        }

        public d a() {
            this.f10268a = "";
            this.f10269b = WireFormatNano.EMPTY_STRING_ARRAY;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!this.f10268a.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f10268a);
            }
            String[] strArr = this.f10269b;
            if (strArr != null && strArr.length > 0) {
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    String[] strArr2 = this.f10269b;
                    if (i10 < strArr2.length) {
                        String str = strArr2[i10];
                        if (str != null) {
                            i12++;
                            i11 += CodedOutputByteBufferNano.computeStringSizeNoTag(str);
                        }
                        i10++;
                    } else {
                        return computeSerializedSize + i11 + (i12 * 1);
                    }
                }
            } else {
                return computeSerializedSize;
            }
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            int length;
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
                        String[] strArr = this.f10269b;
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
                        this.f10269b = strArr2;
                    }
                } else {
                    this.f10268a = codedInputByteBufferNano.readString();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            if (!this.f10268a.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.f10268a);
            }
            String[] strArr = this.f10269b;
            if (strArr != null && strArr.length > 0) {
                int i10 = 0;
                while (true) {
                    String[] strArr2 = this.f10269b;
                    if (i10 >= strArr2.length) {
                        break;
                    }
                    String str = strArr2[i10];
                    if (str != null) {
                        codedOutputByteBufferNano.writeString(2, str);
                    }
                    i10++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class e extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f10270a;

        /* renamed from: b  reason: collision with root package name */
        public int f10271b;

        public e() {
            a();
        }

        public e a() {
            this.f10270a = 0L;
            this.f10271b = 86400;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt64Size(1, this.f10270a);
            int i10 = this.f10271b;
            if (i10 != 86400) {
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
                        this.f10271b = codedInputByteBufferNano.readInt32();
                    }
                } else {
                    this.f10270a = codedInputByteBufferNano.readInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeInt64(1, this.f10270a);
            int i10 = this.f10271b;
            if (i10 != 86400) {
                codedOutputByteBufferNano.writeInt32(2, i10);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class f extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public e f10272a;

        /* renamed from: b  reason: collision with root package name */
        public e f10273b;

        /* renamed from: c  reason: collision with root package name */
        public e f10274c;

        public f() {
            a();
        }

        public f a() {
            this.f10272a = null;
            this.f10273b = null;
            this.f10274c = null;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            e eVar = this.f10272a;
            if (eVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, eVar);
            }
            e eVar2 = this.f10273b;
            if (eVar2 != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, eVar2);
            }
            e eVar3 = this.f10274c;
            if (eVar3 != null) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(3, eVar3);
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
                            if (this.f10274c == null) {
                                this.f10274c = new e();
                            }
                            codedInputByteBufferNano.readMessage(this.f10274c);
                        }
                    } else {
                        if (this.f10273b == null) {
                            this.f10273b = new e();
                        }
                        codedInputByteBufferNano.readMessage(this.f10273b);
                    }
                } else {
                    if (this.f10272a == null) {
                        this.f10272a = new e();
                    }
                    codedInputByteBufferNano.readMessage(this.f10272a);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            e eVar = this.f10272a;
            if (eVar != null) {
                codedOutputByteBufferNano.writeMessage(1, eVar);
            }
            e eVar2 = this.f10273b;
            if (eVar2 != null) {
                codedOutputByteBufferNano.writeMessage(2, eVar2);
            }
            e eVar3 = this.f10274c;
            if (eVar3 != null) {
                codedOutputByteBufferNano.writeMessage(3, eVar3);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class g extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f10275a;

        public g() {
            a();
        }

        public g a() {
            this.f10275a = 1209600L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            long j10 = this.f10275a;
            if (j10 != 1209600) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeUInt64Size(1, j10);
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
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f10275a = codedInputByteBufferNano.readUInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            long j10 = this.f10275a;
            if (j10 != 1209600) {
                codedOutputByteBufferNano.writeUInt64(1, j10);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class h extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public String f10276a;

        /* renamed from: b  reason: collision with root package name */
        public int f10277b;

        /* renamed from: c  reason: collision with root package name */
        public int f10278c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f10279d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f10280e;

        public h() {
            a();
        }

        public h a() {
            this.f10276a = "";
            this.f10277b = PipesConfigBase.DEFAULT_STALE_FETCHER_TIMEOUT_SECONDS;
            this.f10278c = 300;
            this.f10279d = false;
            this.f10280e = true;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!this.f10276a.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f10276a);
            }
            int i10 = this.f10277b;
            if (i10 != 600) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(2, i10);
            }
            int i11 = this.f10278c;
            if (i11 != 300) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(3, i11);
            }
            boolean z10 = this.f10279d;
            if (z10) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(4, z10);
            }
            boolean z11 = this.f10280e;
            if (!z11) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(5, z11);
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
                            if (readTag != 32) {
                                if (readTag != 40) {
                                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                        break;
                                    }
                                } else {
                                    this.f10280e = codedInputByteBufferNano.readBool();
                                }
                            } else {
                                this.f10279d = codedInputByteBufferNano.readBool();
                            }
                        } else {
                            this.f10278c = codedInputByteBufferNano.readUInt32();
                        }
                    } else {
                        this.f10277b = codedInputByteBufferNano.readUInt32();
                    }
                } else {
                    this.f10276a = codedInputByteBufferNano.readString();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            if (!this.f10276a.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.f10276a);
            }
            int i10 = this.f10277b;
            if (i10 != 600) {
                codedOutputByteBufferNano.writeUInt32(2, i10);
            }
            int i11 = this.f10278c;
            if (i11 != 300) {
                codedOutputByteBufferNano.writeUInt32(3, i11);
            }
            boolean z10 = this.f10279d;
            if (z10) {
                codedOutputByteBufferNano.writeBool(4, z10);
            }
            boolean z11 = this.f10280e;
            if (!z11) {
                codedOutputByteBufferNano.writeBool(5, z11);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class i extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public boolean f10281a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f10282b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f10283c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f10284d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f10285e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f10286f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f10287g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f10288h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f10289i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f10290j;

        /* renamed from: k  reason: collision with root package name */
        public boolean f10291k;

        /* renamed from: l  reason: collision with root package name */
        public boolean f10292l;

        /* renamed from: m  reason: collision with root package name */
        public boolean f10293m;

        /* renamed from: n  reason: collision with root package name */
        public boolean f10294n;

        /* renamed from: o  reason: collision with root package name */
        public boolean f10295o;

        /* renamed from: p  reason: collision with root package name */
        public boolean f10296p;

        /* renamed from: q  reason: collision with root package name */
        public boolean f10297q;

        /* renamed from: r  reason: collision with root package name */
        public boolean f10298r;

        /* renamed from: s  reason: collision with root package name */
        public boolean f10299s;

        /* renamed from: t  reason: collision with root package name */
        public boolean f10300t;

        /* renamed from: u  reason: collision with root package name */
        public boolean f10301u;

        /* renamed from: v  reason: collision with root package name */
        public boolean f10302v;

        /* renamed from: w  reason: collision with root package name */
        public boolean f10303w;

        /* renamed from: x  reason: collision with root package name */
        public int f10304x;

        public i() {
            a();
        }

        public i a() {
            this.f10281a = false;
            this.f10282b = false;
            this.f10283c = false;
            this.f10284d = false;
            this.f10285e = false;
            this.f10286f = false;
            this.f10287g = false;
            this.f10288h = false;
            this.f10289i = false;
            this.f10290j = false;
            this.f10291k = true;
            this.f10292l = false;
            this.f10293m = false;
            this.f10294n = false;
            this.f10295o = false;
            this.f10296p = false;
            this.f10297q = false;
            this.f10298r = false;
            this.f10299s = false;
            this.f10300t = true;
            this.f10301u = false;
            this.f10302v = false;
            this.f10303w = false;
            this.f10304x = -1;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeBoolSize(1, this.f10281a) + CodedOutputByteBufferNano.computeBoolSize(2, this.f10282b) + CodedOutputByteBufferNano.computeBoolSize(3, this.f10283c) + CodedOutputByteBufferNano.computeBoolSize(4, this.f10284d) + CodedOutputByteBufferNano.computeBoolSize(6, this.f10285e) + CodedOutputByteBufferNano.computeBoolSize(8, this.f10286f) + CodedOutputByteBufferNano.computeBoolSize(9, this.f10287g) + CodedOutputByteBufferNano.computeBoolSize(11, this.f10288h) + CodedOutputByteBufferNano.computeBoolSize(12, this.f10289i) + CodedOutputByteBufferNano.computeBoolSize(15, this.f10290j) + CodedOutputByteBufferNano.computeBoolSize(16, this.f10291k) + CodedOutputByteBufferNano.computeBoolSize(18, this.f10292l) + CodedOutputByteBufferNano.computeBoolSize(19, this.f10293m) + CodedOutputByteBufferNano.computeBoolSize(21, this.f10294n) + CodedOutputByteBufferNano.computeBoolSize(22, this.f10295o) + CodedOutputByteBufferNano.computeBoolSize(23, this.f10296p) + CodedOutputByteBufferNano.computeBoolSize(24, this.f10297q) + CodedOutputByteBufferNano.computeBoolSize(25, this.f10298r) + CodedOutputByteBufferNano.computeBoolSize(26, this.f10299s) + CodedOutputByteBufferNano.computeBoolSize(27, this.f10300t) + CodedOutputByteBufferNano.computeBoolSize(28, this.f10301u);
            boolean z10 = this.f10302v;
            if (z10) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(29, z10);
            }
            boolean z11 = this.f10303w;
            if (z11) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(33, z11);
            }
            int i10 = this.f10304x;
            if (i10 != -1) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(34, i10);
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
                        this.f10281a = codedInputByteBufferNano.readBool();
                        break;
                    case 16:
                        this.f10282b = codedInputByteBufferNano.readBool();
                        break;
                    case Build.API_LEVELS.API_24 /* 24 */:
                        this.f10283c = codedInputByteBufferNano.readBool();
                        break;
                    case Build.API_LEVELS.API_32 /* 32 */:
                        this.f10284d = codedInputByteBufferNano.readBool();
                        break;
                    case 48:
                        this.f10285e = codedInputByteBufferNano.readBool();
                        break;
                    case 64:
                        this.f10286f = codedInputByteBufferNano.readBool();
                        break;
                    case 72:
                        this.f10287g = codedInputByteBufferNano.readBool();
                        break;
                    case 88:
                        this.f10288h = codedInputByteBufferNano.readBool();
                        break;
                    case 96:
                        this.f10289i = codedInputByteBufferNano.readBool();
                        break;
                    case 120:
                        this.f10290j = codedInputByteBufferNano.readBool();
                        break;
                    case 128:
                        this.f10291k = codedInputByteBufferNano.readBool();
                        break;
                    case 144:
                        this.f10292l = codedInputByteBufferNano.readBool();
                        break;
                    case 152:
                        this.f10293m = codedInputByteBufferNano.readBool();
                        break;
                    case 168:
                        this.f10294n = codedInputByteBufferNano.readBool();
                        break;
                    case 176:
                        this.f10295o = codedInputByteBufferNano.readBool();
                        break;
                    case 184:
                        this.f10296p = codedInputByteBufferNano.readBool();
                        break;
                    case 192:
                        this.f10297q = codedInputByteBufferNano.readBool();
                        break;
                    case 200:
                        this.f10298r = codedInputByteBufferNano.readBool();
                        break;
                    case 208:
                        this.f10299s = codedInputByteBufferNano.readBool();
                        break;
                    case 216:
                        this.f10300t = codedInputByteBufferNano.readBool();
                        break;
                    case 224:
                        this.f10301u = codedInputByteBufferNano.readBool();
                        break;
                    case 232:
                        this.f10302v = codedInputByteBufferNano.readBool();
                        break;
                    case 264:
                        this.f10303w = codedInputByteBufferNano.readBool();
                        break;
                    case 272:
                        int readInt32 = codedInputByteBufferNano.readInt32();
                        if (readInt32 != -1 && readInt32 != 0 && readInt32 != 1) {
                            break;
                        } else {
                            this.f10304x = readInt32;
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
            codedOutputByteBufferNano.writeBool(1, this.f10281a);
            codedOutputByteBufferNano.writeBool(2, this.f10282b);
            codedOutputByteBufferNano.writeBool(3, this.f10283c);
            codedOutputByteBufferNano.writeBool(4, this.f10284d);
            codedOutputByteBufferNano.writeBool(6, this.f10285e);
            codedOutputByteBufferNano.writeBool(8, this.f10286f);
            codedOutputByteBufferNano.writeBool(9, this.f10287g);
            codedOutputByteBufferNano.writeBool(11, this.f10288h);
            codedOutputByteBufferNano.writeBool(12, this.f10289i);
            codedOutputByteBufferNano.writeBool(15, this.f10290j);
            codedOutputByteBufferNano.writeBool(16, this.f10291k);
            codedOutputByteBufferNano.writeBool(18, this.f10292l);
            codedOutputByteBufferNano.writeBool(19, this.f10293m);
            codedOutputByteBufferNano.writeBool(21, this.f10294n);
            codedOutputByteBufferNano.writeBool(22, this.f10295o);
            codedOutputByteBufferNano.writeBool(23, this.f10296p);
            codedOutputByteBufferNano.writeBool(24, this.f10297q);
            codedOutputByteBufferNano.writeBool(25, this.f10298r);
            codedOutputByteBufferNano.writeBool(26, this.f10299s);
            codedOutputByteBufferNano.writeBool(27, this.f10300t);
            codedOutputByteBufferNano.writeBool(28, this.f10301u);
            boolean z10 = this.f10302v;
            if (z10) {
                codedOutputByteBufferNano.writeBool(29, z10);
            }
            boolean z11 = this.f10303w;
            if (z11) {
                codedOutputByteBufferNano.writeBool(33, z11);
            }
            int i10 = this.f10304x;
            if (i10 != -1) {
                codedOutputByteBufferNano.writeInt32(34, i10);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class j extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f10305a;

        public j() {
            a();
        }

        public j a() {
            this.f10305a = 900L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt64Size(1, this.f10305a);
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag != 8) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f10305a = codedInputByteBufferNano.readInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeInt64(1, this.f10305a);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class k extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile k[] f10306c;

        /* renamed from: a  reason: collision with root package name */
        public a f10307a;

        /* renamed from: b  reason: collision with root package name */
        public b f10308b;

        /* loaded from: classes2.dex */
        public static final class a extends MessageNano {

            /* renamed from: a  reason: collision with root package name */
            public long f10309a;

            /* renamed from: b  reason: collision with root package name */
            public float f10310b;

            /* renamed from: c  reason: collision with root package name */
            public int f10311c;

            /* renamed from: d  reason: collision with root package name */
            public int f10312d;

            /* renamed from: e  reason: collision with root package name */
            public long f10313e;

            /* renamed from: f  reason: collision with root package name */
            public int f10314f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f10315g;

            /* renamed from: h  reason: collision with root package name */
            public boolean f10316h;

            /* renamed from: i  reason: collision with root package name */
            public boolean f10317i;

            /* renamed from: j  reason: collision with root package name */
            public long f10318j;

            /* renamed from: k  reason: collision with root package name */
            public C0124a f10319k;

            /* renamed from: l  reason: collision with root package name */
            public C0124a f10320l;

            /* renamed from: m  reason: collision with root package name */
            public C0124a f10321m;

            /* renamed from: n  reason: collision with root package name */
            public C0124a f10322n;

            /* renamed from: o  reason: collision with root package name */
            public b f10323o;

            /* renamed from: p  reason: collision with root package name */
            public boolean f10324p;

            /* renamed from: q  reason: collision with root package name */
            public boolean f10325q;

            /* renamed from: com.yandex.metrica.impl.ob.If$k$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public static final class C0124a extends MessageNano {

                /* renamed from: a  reason: collision with root package name */
                public boolean f10326a;

                /* renamed from: b  reason: collision with root package name */
                public boolean f10327b;

                /* renamed from: c  reason: collision with root package name */
                public C0125a f10328c;

                /* renamed from: com.yandex.metrica.impl.ob.If$k$a$a$a  reason: collision with other inner class name */
                /* loaded from: classes2.dex */
                public static final class C0125a extends MessageNano {

                    /* renamed from: a  reason: collision with root package name */
                    public long f10329a;

                    /* renamed from: b  reason: collision with root package name */
                    public long f10330b;

                    public C0125a() {
                        a();
                    }

                    public C0125a a() {
                        this.f10329a = 0L;
                        this.f10330b = 0L;
                        this.cachedSize = -1;
                        return this;
                    }

                    @Override // com.google.protobuf.nano.ym.MessageNano
                    protected int computeSerializedSize() {
                        return super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt64Size(1, this.f10329a) + CodedOutputByteBufferNano.computeInt64Size(2, this.f10330b);
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
                                    this.f10330b = codedInputByteBufferNano.readInt64();
                                }
                            } else {
                                this.f10329a = codedInputByteBufferNano.readInt64();
                            }
                        }
                        return this;
                    }

                    @Override // com.google.protobuf.nano.ym.MessageNano
                    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
                        codedOutputByteBufferNano.writeInt64(1, this.f10329a);
                        codedOutputByteBufferNano.writeInt64(2, this.f10330b);
                        super.writeTo(codedOutputByteBufferNano);
                    }
                }

                public C0124a() {
                    a();
                }

                public C0124a a() {
                    this.f10326a = true;
                    this.f10327b = false;
                    this.f10328c = null;
                    this.cachedSize = -1;
                    return this;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                protected int computeSerializedSize() {
                    int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeBoolSize(1, this.f10326a) + CodedOutputByteBufferNano.computeBoolSize(2, this.f10327b);
                    C0125a c0125a = this.f10328c;
                    if (c0125a != null) {
                        return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(3, c0125a);
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
                                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                        break;
                                    }
                                } else {
                                    if (this.f10328c == null) {
                                        this.f10328c = new C0125a();
                                    }
                                    codedInputByteBufferNano.readMessage(this.f10328c);
                                }
                            } else {
                                this.f10327b = codedInputByteBufferNano.readBool();
                            }
                        } else {
                            this.f10326a = codedInputByteBufferNano.readBool();
                        }
                    }
                    return this;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
                    codedOutputByteBufferNano.writeBool(1, this.f10326a);
                    codedOutputByteBufferNano.writeBool(2, this.f10327b);
                    C0125a c0125a = this.f10328c;
                    if (c0125a != null) {
                        codedOutputByteBufferNano.writeMessage(3, c0125a);
                    }
                    super.writeTo(codedOutputByteBufferNano);
                }
            }

            /* loaded from: classes2.dex */
            public static final class b extends MessageNano {

                /* renamed from: a  reason: collision with root package name */
                public boolean f10331a;

                /* renamed from: b  reason: collision with root package name */
                public boolean f10332b;

                /* renamed from: c  reason: collision with root package name */
                public C0126a f10333c;

                /* renamed from: com.yandex.metrica.impl.ob.If$k$a$b$a  reason: collision with other inner class name */
                /* loaded from: classes2.dex */
                public static final class C0126a extends MessageNano {

                    /* renamed from: a  reason: collision with root package name */
                    public long f10334a;

                    /* renamed from: b  reason: collision with root package name */
                    public long f10335b;

                    /* renamed from: c  reason: collision with root package name */
                    public int f10336c;

                    public C0126a() {
                        a();
                    }

                    public C0126a a() {
                        this.f10334a = 0L;
                        this.f10335b = 0L;
                        this.f10336c = 0;
                        this.cachedSize = -1;
                        return this;
                    }

                    @Override // com.google.protobuf.nano.ym.MessageNano
                    protected int computeSerializedSize() {
                        return super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt64Size(1, this.f10334a) + CodedOutputByteBufferNano.computeInt64Size(2, this.f10335b) + CodedOutputByteBufferNano.computeInt32Size(3, this.f10336c);
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
                                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                            break;
                                        }
                                    } else {
                                        int readInt32 = codedInputByteBufferNano.readInt32();
                                        if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                                            this.f10336c = readInt32;
                                        }
                                    }
                                } else {
                                    this.f10335b = codedInputByteBufferNano.readInt64();
                                }
                            } else {
                                this.f10334a = codedInputByteBufferNano.readInt64();
                            }
                        }
                        return this;
                    }

                    @Override // com.google.protobuf.nano.ym.MessageNano
                    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
                        codedOutputByteBufferNano.writeInt64(1, this.f10334a);
                        codedOutputByteBufferNano.writeInt64(2, this.f10335b);
                        codedOutputByteBufferNano.writeInt32(3, this.f10336c);
                        super.writeTo(codedOutputByteBufferNano);
                    }
                }

                public b() {
                    a();
                }

                public b a() {
                    this.f10331a = true;
                    this.f10332b = false;
                    this.f10333c = null;
                    this.cachedSize = -1;
                    return this;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                protected int computeSerializedSize() {
                    int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeBoolSize(1, this.f10331a) + CodedOutputByteBufferNano.computeBoolSize(2, this.f10332b);
                    C0126a c0126a = this.f10333c;
                    if (c0126a != null) {
                        return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(3, c0126a);
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
                                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                        break;
                                    }
                                } else {
                                    if (this.f10333c == null) {
                                        this.f10333c = new C0126a();
                                    }
                                    codedInputByteBufferNano.readMessage(this.f10333c);
                                }
                            } else {
                                this.f10332b = codedInputByteBufferNano.readBool();
                            }
                        } else {
                            this.f10331a = codedInputByteBufferNano.readBool();
                        }
                    }
                    return this;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
                    codedOutputByteBufferNano.writeBool(1, this.f10331a);
                    codedOutputByteBufferNano.writeBool(2, this.f10332b);
                    C0126a c0126a = this.f10333c;
                    if (c0126a != null) {
                        codedOutputByteBufferNano.writeMessage(3, c0126a);
                    }
                    super.writeTo(codedOutputByteBufferNano);
                }
            }

            public a() {
                a();
            }

            public a a() {
                this.f10309a = 5000L;
                this.f10310b = 10.0f;
                this.f10311c = 20;
                this.f10312d = 200;
                this.f10313e = 60000L;
                this.f10314f = 10000;
                this.f10315g = false;
                this.f10316h = false;
                this.f10317i = true;
                this.f10318j = 60000L;
                this.f10319k = null;
                this.f10320l = null;
                this.f10321m = null;
                this.f10322n = null;
                this.f10323o = null;
                this.f10324p = false;
                this.f10325q = false;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            protected int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt64Size(1, this.f10309a) + CodedOutputByteBufferNano.computeFloatSize(2, this.f10310b) + CodedOutputByteBufferNano.computeInt32Size(3, this.f10311c) + CodedOutputByteBufferNano.computeInt32Size(4, this.f10312d) + CodedOutputByteBufferNano.computeInt64Size(5, this.f10313e) + CodedOutputByteBufferNano.computeInt32Size(6, this.f10314f) + CodedOutputByteBufferNano.computeBoolSize(7, this.f10315g) + CodedOutputByteBufferNano.computeBoolSize(8, this.f10316h) + CodedOutputByteBufferNano.computeInt64Size(9, this.f10318j);
                C0124a c0124a = this.f10319k;
                if (c0124a != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(10, c0124a);
                }
                C0124a c0124a2 = this.f10320l;
                if (c0124a2 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(11, c0124a2);
                }
                C0124a c0124a3 = this.f10321m;
                if (c0124a3 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(12, c0124a3);
                }
                int computeBoolSize = computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(13, this.f10317i);
                C0124a c0124a4 = this.f10322n;
                if (c0124a4 != null) {
                    computeBoolSize += CodedOutputByteBufferNano.computeMessageSize(14, c0124a4);
                }
                b bVar = this.f10323o;
                if (bVar != null) {
                    computeBoolSize += CodedOutputByteBufferNano.computeMessageSize(15, bVar);
                }
                boolean z10 = this.f10324p;
                if (z10) {
                    computeBoolSize += CodedOutputByteBufferNano.computeBoolSize(16, z10);
                }
                boolean z11 = this.f10325q;
                if (z11) {
                    return computeBoolSize + CodedOutputByteBufferNano.computeBoolSize(17, z11);
                }
                return computeBoolSize;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    switch (readTag) {
                        case 0:
                            break;
                        case 8:
                            this.f10309a = codedInputByteBufferNano.readInt64();
                            break;
                        case 21:
                            this.f10310b = codedInputByteBufferNano.readFloat();
                            break;
                        case Build.API_LEVELS.API_24 /* 24 */:
                            this.f10311c = codedInputByteBufferNano.readInt32();
                            break;
                        case Build.API_LEVELS.API_32 /* 32 */:
                            this.f10312d = codedInputByteBufferNano.readInt32();
                            break;
                        case C1415p9.L /* 40 */:
                            this.f10313e = codedInputByteBufferNano.readInt64();
                            break;
                        case 48:
                            this.f10314f = codedInputByteBufferNano.readInt32();
                            break;
                        case 56:
                            this.f10315g = codedInputByteBufferNano.readBool();
                            break;
                        case 64:
                            this.f10316h = codedInputByteBufferNano.readBool();
                            break;
                        case 72:
                            this.f10318j = codedInputByteBufferNano.readInt64();
                            break;
                        case 82:
                            if (this.f10319k == null) {
                                this.f10319k = new C0124a();
                            }
                            codedInputByteBufferNano.readMessage(this.f10319k);
                            break;
                        case 90:
                            if (this.f10320l == null) {
                                this.f10320l = new C0124a();
                            }
                            codedInputByteBufferNano.readMessage(this.f10320l);
                            break;
                        case 98:
                            if (this.f10321m == null) {
                                this.f10321m = new C0124a();
                            }
                            codedInputByteBufferNano.readMessage(this.f10321m);
                            break;
                        case 104:
                            this.f10317i = codedInputByteBufferNano.readBool();
                            break;
                        case 114:
                            if (this.f10322n == null) {
                                this.f10322n = new C0124a();
                            }
                            codedInputByteBufferNano.readMessage(this.f10322n);
                            break;
                        case 122:
                            if (this.f10323o == null) {
                                this.f10323o = new b();
                            }
                            codedInputByteBufferNano.readMessage(this.f10323o);
                            break;
                        case 128:
                            this.f10324p = codedInputByteBufferNano.readBool();
                            break;
                        case 136:
                            this.f10325q = codedInputByteBufferNano.readBool();
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
                codedOutputByteBufferNano.writeInt64(1, this.f10309a);
                codedOutputByteBufferNano.writeFloat(2, this.f10310b);
                codedOutputByteBufferNano.writeInt32(3, this.f10311c);
                codedOutputByteBufferNano.writeInt32(4, this.f10312d);
                codedOutputByteBufferNano.writeInt64(5, this.f10313e);
                codedOutputByteBufferNano.writeInt32(6, this.f10314f);
                codedOutputByteBufferNano.writeBool(7, this.f10315g);
                codedOutputByteBufferNano.writeBool(8, this.f10316h);
                codedOutputByteBufferNano.writeInt64(9, this.f10318j);
                C0124a c0124a = this.f10319k;
                if (c0124a != null) {
                    codedOutputByteBufferNano.writeMessage(10, c0124a);
                }
                C0124a c0124a2 = this.f10320l;
                if (c0124a2 != null) {
                    codedOutputByteBufferNano.writeMessage(11, c0124a2);
                }
                C0124a c0124a3 = this.f10321m;
                if (c0124a3 != null) {
                    codedOutputByteBufferNano.writeMessage(12, c0124a3);
                }
                codedOutputByteBufferNano.writeBool(13, this.f10317i);
                C0124a c0124a4 = this.f10322n;
                if (c0124a4 != null) {
                    codedOutputByteBufferNano.writeMessage(14, c0124a4);
                }
                b bVar = this.f10323o;
                if (bVar != null) {
                    codedOutputByteBufferNano.writeMessage(15, bVar);
                }
                boolean z10 = this.f10324p;
                if (z10) {
                    codedOutputByteBufferNano.writeBool(16, z10);
                }
                boolean z11 = this.f10325q;
                if (z11) {
                    codedOutputByteBufferNano.writeBool(17, z11);
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends MessageNano {

            /* renamed from: a  reason: collision with root package name */
            public int[] f10337a;

            /* renamed from: b  reason: collision with root package name */
            public int[] f10338b;

            public b() {
                a();
            }

            public b a() {
                int[] iArr = WireFormatNano.EMPTY_INT_ARRAY;
                this.f10337a = iArr;
                this.f10338b = iArr;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            protected int computeSerializedSize() {
                int[] iArr;
                int computeSerializedSize = super.computeSerializedSize();
                int[] iArr2 = this.f10337a;
                int i10 = 0;
                if (iArr2 != null && iArr2.length > 0) {
                    int i11 = 0;
                    int i12 = 0;
                    while (true) {
                        iArr = this.f10337a;
                        if (i11 >= iArr.length) {
                            break;
                        }
                        i12 += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr[i11]);
                        i11++;
                    }
                    computeSerializedSize = computeSerializedSize + i12 + (iArr.length * 1);
                }
                int[] iArr3 = this.f10338b;
                if (iArr3 != null && iArr3.length > 0) {
                    int i13 = 0;
                    while (true) {
                        int[] iArr4 = this.f10338b;
                        if (i10 < iArr4.length) {
                            i13 += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr4[i10]);
                            i10++;
                        } else {
                            return computeSerializedSize + i13 + (iArr4.length * 1);
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
                    } else if (readTag != 8) {
                        if (readTag != 10) {
                            if (readTag != 16) {
                                if (readTag != 18) {
                                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                        break;
                                    }
                                } else {
                                    int pushLimit = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                                    int position = codedInputByteBufferNano.getPosition();
                                    int i10 = 0;
                                    while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                                        int readInt32 = codedInputByteBufferNano.readInt32();
                                        if (readInt32 == 0 || readInt32 == 2 || readInt32 == 3) {
                                            i10++;
                                        }
                                    }
                                    if (i10 != 0) {
                                        codedInputByteBufferNano.rewindToPosition(position);
                                        int[] iArr = this.f10338b;
                                        if (iArr == null) {
                                            length = 0;
                                        } else {
                                            length = iArr.length;
                                        }
                                        int[] iArr2 = new int[i10 + length];
                                        if (length != 0) {
                                            System.arraycopy(iArr, 0, iArr2, 0, length);
                                        }
                                        while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                                            int readInt322 = codedInputByteBufferNano.readInt32();
                                            if (readInt322 == 0 || readInt322 == 2 || readInt322 == 3) {
                                                iArr2[length] = readInt322;
                                                length++;
                                            }
                                        }
                                        this.f10338b = iArr2;
                                    }
                                    codedInputByteBufferNano.popLimit(pushLimit);
                                }
                            } else {
                                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 16);
                                int[] iArr3 = new int[repeatedFieldArrayLength];
                                int i11 = 0;
                                for (int i12 = 0; i12 < repeatedFieldArrayLength; i12++) {
                                    if (i12 != 0) {
                                        codedInputByteBufferNano.readTag();
                                    }
                                    int readInt323 = codedInputByteBufferNano.readInt32();
                                    if (readInt323 == 0 || readInt323 == 2 || readInt323 == 3) {
                                        iArr3[i11] = readInt323;
                                        i11++;
                                    }
                                }
                                if (i11 != 0) {
                                    int[] iArr4 = this.f10338b;
                                    if (iArr4 == null) {
                                        length2 = 0;
                                    } else {
                                        length2 = iArr4.length;
                                    }
                                    if (length2 == 0 && i11 == repeatedFieldArrayLength) {
                                        this.f10338b = iArr3;
                                    } else {
                                        int[] iArr5 = new int[length2 + i11];
                                        if (length2 != 0) {
                                            System.arraycopy(iArr4, 0, iArr5, 0, length2);
                                        }
                                        System.arraycopy(iArr3, 0, iArr5, length2, i11);
                                        this.f10338b = iArr5;
                                    }
                                }
                            }
                        } else {
                            int pushLimit2 = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                            int position2 = codedInputByteBufferNano.getPosition();
                            int i13 = 0;
                            while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                                int readInt324 = codedInputByteBufferNano.readInt32();
                                if (readInt324 == 0 || readInt324 == 1 || readInt324 == 2 || readInt324 == 3 || readInt324 == 4) {
                                    i13++;
                                }
                            }
                            if (i13 != 0) {
                                codedInputByteBufferNano.rewindToPosition(position2);
                                int[] iArr6 = this.f10337a;
                                if (iArr6 == null) {
                                    length3 = 0;
                                } else {
                                    length3 = iArr6.length;
                                }
                                int[] iArr7 = new int[i13 + length3];
                                if (length3 != 0) {
                                    System.arraycopy(iArr6, 0, iArr7, 0, length3);
                                }
                                while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                                    int readInt325 = codedInputByteBufferNano.readInt32();
                                    if (readInt325 == 0 || readInt325 == 1 || readInt325 == 2 || readInt325 == 3 || readInt325 == 4) {
                                        iArr7[length3] = readInt325;
                                        length3++;
                                    }
                                }
                                this.f10337a = iArr7;
                            }
                            codedInputByteBufferNano.popLimit(pushLimit2);
                        }
                    } else {
                        int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 8);
                        int[] iArr8 = new int[repeatedFieldArrayLength2];
                        int i14 = 0;
                        for (int i15 = 0; i15 < repeatedFieldArrayLength2; i15++) {
                            if (i15 != 0) {
                                codedInputByteBufferNano.readTag();
                            }
                            int readInt326 = codedInputByteBufferNano.readInt32();
                            if (readInt326 == 0 || readInt326 == 1 || readInt326 == 2 || readInt326 == 3 || readInt326 == 4) {
                                iArr8[i14] = readInt326;
                                i14++;
                            }
                        }
                        if (i14 != 0) {
                            int[] iArr9 = this.f10337a;
                            if (iArr9 == null) {
                                length4 = 0;
                            } else {
                                length4 = iArr9.length;
                            }
                            if (length4 == 0 && i14 == repeatedFieldArrayLength2) {
                                this.f10337a = iArr8;
                            } else {
                                int[] iArr10 = new int[length4 + i14];
                                if (length4 != 0) {
                                    System.arraycopy(iArr9, 0, iArr10, 0, length4);
                                }
                                System.arraycopy(iArr8, 0, iArr10, length4, i14);
                                this.f10337a = iArr10;
                            }
                        }
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
                int[] iArr = this.f10337a;
                int i10 = 0;
                if (iArr != null && iArr.length > 0) {
                    int i11 = 0;
                    while (true) {
                        int[] iArr2 = this.f10337a;
                        if (i11 >= iArr2.length) {
                            break;
                        }
                        codedOutputByteBufferNano.writeInt32(1, iArr2[i11]);
                        i11++;
                    }
                }
                int[] iArr3 = this.f10338b;
                if (iArr3 != null && iArr3.length > 0) {
                    while (true) {
                        int[] iArr4 = this.f10338b;
                        if (i10 >= iArr4.length) {
                            break;
                        }
                        codedOutputByteBufferNano.writeInt32(2, iArr4[i10]);
                        i10++;
                    }
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        public k() {
            a();
        }

        public static k[] b() {
            if (f10306c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f10306c == null) {
                        f10306c = new k[0];
                    }
                }
            }
            return f10306c;
        }

        public k a() {
            this.f10307a = null;
            this.f10308b = null;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            a aVar = this.f10307a;
            if (aVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, aVar);
            }
            b bVar = this.f10308b;
            if (bVar != null) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, bVar);
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
                        if (this.f10308b == null) {
                            this.f10308b = new b();
                        }
                        codedInputByteBufferNano.readMessage(this.f10308b);
                    }
                } else {
                    if (this.f10307a == null) {
                        this.f10307a = new a();
                    }
                    codedInputByteBufferNano.readMessage(this.f10307a);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            a aVar = this.f10307a;
            if (aVar != null) {
                codedOutputByteBufferNano.writeMessage(1, aVar);
            }
            b bVar = this.f10308b;
            if (bVar != null) {
                codedOutputByteBufferNano.writeMessage(2, bVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class l extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile l[] f10339c;

        /* renamed from: a  reason: collision with root package name */
        public String f10340a;

        /* renamed from: b  reason: collision with root package name */
        public byte[] f10341b;

        public l() {
            a();
        }

        public static l[] b() {
            if (f10339c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f10339c == null) {
                        f10339c = new l[0];
                    }
                }
            }
            return f10339c;
        }

        public l a() {
            this.f10340a = "";
            this.f10341b = WireFormatNano.EMPTY_BYTES;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!this.f10340a.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f10340a);
            }
            if (!Arrays.equals(this.f10341b, WireFormatNano.EMPTY_BYTES)) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(2, this.f10341b);
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
                        this.f10341b = codedInputByteBufferNano.readBytes();
                    }
                } else {
                    this.f10340a = codedInputByteBufferNano.readString();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            if (!this.f10340a.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.f10340a);
            }
            if (!Arrays.equals(this.f10341b, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(2, this.f10341b);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class m extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile m[] f10342c;

        /* renamed from: a  reason: collision with root package name */
        public String f10343a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f10344b;

        public m() {
            a();
        }

        public static m[] b() {
            if (f10342c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f10342c == null) {
                        f10342c = new m[0];
                    }
                }
            }
            return f10342c;
        }

        public m a() {
            this.f10343a = "";
            this.f10344b = false;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f10343a) + CodedOutputByteBufferNano.computeBoolSize(2, this.f10344b);
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
                        this.f10344b = codedInputByteBufferNano.readBool();
                    }
                } else {
                    this.f10343a = codedInputByteBufferNano.readString();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeString(1, this.f10343a);
            codedOutputByteBufferNano.writeBool(2, this.f10344b);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class n extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f10345a;

        /* renamed from: b  reason: collision with root package name */
        public long f10346b;

        public n() {
            a();
        }

        public n a() {
            this.f10345a = 86400L;
            this.f10346b = 432000L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt64Size(1, this.f10345a) + CodedOutputByteBufferNano.computeInt64Size(2, this.f10346b);
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
                        this.f10346b = codedInputByteBufferNano.readInt64();
                    }
                } else {
                    this.f10345a = codedInputByteBufferNano.readInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeInt64(1, this.f10345a);
            codedOutputByteBufferNano.writeInt64(2, this.f10346b);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class o extends MessageNano {

        /* renamed from: g  reason: collision with root package name */
        private static volatile o[] f10347g;

        /* renamed from: a  reason: collision with root package name */
        public String f10348a;

        /* renamed from: b  reason: collision with root package name */
        public String f10349b;

        /* renamed from: c  reason: collision with root package name */
        public String f10350c;

        /* renamed from: d  reason: collision with root package name */
        public a[] f10351d;

        /* renamed from: e  reason: collision with root package name */
        public long f10352e;

        /* renamed from: f  reason: collision with root package name */
        public int[] f10353f;

        /* loaded from: classes2.dex */
        public static final class a extends MessageNano {

            /* renamed from: c  reason: collision with root package name */
            private static volatile a[] f10354c;

            /* renamed from: a  reason: collision with root package name */
            public String f10355a;

            /* renamed from: b  reason: collision with root package name */
            public String f10356b;

            public a() {
                a();
            }

            public static a[] b() {
                if (f10354c == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (f10354c == null) {
                            f10354c = new a[0];
                        }
                    }
                }
                return f10354c;
            }

            public a a() {
                this.f10355a = "";
                this.f10356b = "";
                this.cachedSize = -1;
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            protected int computeSerializedSize() {
                return super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f10355a) + CodedOutputByteBufferNano.computeStringSize(2, this.f10356b);
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
                            this.f10356b = codedInputByteBufferNano.readString();
                        }
                    } else {
                        this.f10355a = codedInputByteBufferNano.readString();
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
                codedOutputByteBufferNano.writeString(1, this.f10355a);
                codedOutputByteBufferNano.writeString(2, this.f10356b);
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        public o() {
            a();
        }

        public static o[] b() {
            if (f10347g == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f10347g == null) {
                        f10347g = new o[0];
                    }
                }
            }
            return f10347g;
        }

        public o a() {
            this.f10348a = "";
            this.f10349b = "";
            this.f10350c = "";
            this.f10351d = a.b();
            this.f10352e = 0L;
            this.f10353f = WireFormatNano.EMPTY_INT_ARRAY;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f10348a) + CodedOutputByteBufferNano.computeStringSize(2, this.f10349b) + CodedOutputByteBufferNano.computeStringSize(3, this.f10350c);
            a[] aVarArr = this.f10351d;
            int i10 = 0;
            if (aVarArr != null && aVarArr.length > 0) {
                int i11 = 0;
                while (true) {
                    a[] aVarArr2 = this.f10351d;
                    if (i11 >= aVarArr2.length) {
                        break;
                    }
                    a aVar = aVarArr2[i11];
                    if (aVar != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, aVar);
                    }
                    i11++;
                }
            }
            int computeInt64Size = computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(5, this.f10352e);
            int[] iArr = this.f10353f;
            if (iArr != null && iArr.length > 0) {
                int i12 = 0;
                while (true) {
                    int[] iArr2 = this.f10353f;
                    if (i10 < iArr2.length) {
                        i12 += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr2[i10]);
                        i10++;
                    } else {
                        return computeInt64Size + i12 + (iArr2.length * 1);
                    }
                }
            } else {
                return computeInt64Size;
            }
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            int length;
            int length2;
            int length3;
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag != 10) {
                    if (readTag != 18) {
                        if (readTag != 26) {
                            if (readTag != 34) {
                                if (readTag != 40) {
                                    if (readTag != 48) {
                                        if (readTag != 50) {
                                            if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                                break;
                                            }
                                        } else {
                                            int pushLimit = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                                            int position = codedInputByteBufferNano.getPosition();
                                            int i10 = 0;
                                            while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                                                int readInt32 = codedInputByteBufferNano.readInt32();
                                                if (readInt32 == 1 || readInt32 == 2) {
                                                    i10++;
                                                }
                                            }
                                            if (i10 != 0) {
                                                codedInputByteBufferNano.rewindToPosition(position);
                                                int[] iArr = this.f10353f;
                                                if (iArr == null) {
                                                    length = 0;
                                                } else {
                                                    length = iArr.length;
                                                }
                                                int[] iArr2 = new int[i10 + length];
                                                if (length != 0) {
                                                    System.arraycopy(iArr, 0, iArr2, 0, length);
                                                }
                                                while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                                                    int readInt322 = codedInputByteBufferNano.readInt32();
                                                    if (readInt322 == 1 || readInt322 == 2) {
                                                        iArr2[length] = readInt322;
                                                        length++;
                                                    }
                                                }
                                                this.f10353f = iArr2;
                                            }
                                            codedInputByteBufferNano.popLimit(pushLimit);
                                        }
                                    } else {
                                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 48);
                                        int[] iArr3 = new int[repeatedFieldArrayLength];
                                        int i11 = 0;
                                        for (int i12 = 0; i12 < repeatedFieldArrayLength; i12++) {
                                            if (i12 != 0) {
                                                codedInputByteBufferNano.readTag();
                                            }
                                            int readInt323 = codedInputByteBufferNano.readInt32();
                                            if (readInt323 == 1 || readInt323 == 2) {
                                                iArr3[i11] = readInt323;
                                                i11++;
                                            }
                                        }
                                        if (i11 != 0) {
                                            int[] iArr4 = this.f10353f;
                                            if (iArr4 == null) {
                                                length2 = 0;
                                            } else {
                                                length2 = iArr4.length;
                                            }
                                            if (length2 == 0 && i11 == repeatedFieldArrayLength) {
                                                this.f10353f = iArr3;
                                            } else {
                                                int[] iArr5 = new int[length2 + i11];
                                                if (length2 != 0) {
                                                    System.arraycopy(iArr4, 0, iArr5, 0, length2);
                                                }
                                                System.arraycopy(iArr3, 0, iArr5, length2, i11);
                                                this.f10353f = iArr5;
                                            }
                                        }
                                    }
                                } else {
                                    this.f10352e = codedInputByteBufferNano.readInt64();
                                }
                            } else {
                                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 34);
                                a[] aVarArr = this.f10351d;
                                if (aVarArr == null) {
                                    length3 = 0;
                                } else {
                                    length3 = aVarArr.length;
                                }
                                int i13 = repeatedFieldArrayLength2 + length3;
                                a[] aVarArr2 = new a[i13];
                                if (length3 != 0) {
                                    System.arraycopy(aVarArr, 0, aVarArr2, 0, length3);
                                }
                                while (length3 < i13 - 1) {
                                    a aVar = new a();
                                    aVarArr2[length3] = aVar;
                                    codedInputByteBufferNano.readMessage(aVar);
                                    codedInputByteBufferNano.readTag();
                                    length3++;
                                }
                                a aVar2 = new a();
                                aVarArr2[length3] = aVar2;
                                codedInputByteBufferNano.readMessage(aVar2);
                                this.f10351d = aVarArr2;
                            }
                        } else {
                            this.f10350c = codedInputByteBufferNano.readString();
                        }
                    } else {
                        this.f10349b = codedInputByteBufferNano.readString();
                    }
                } else {
                    this.f10348a = codedInputByteBufferNano.readString();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeString(1, this.f10348a);
            codedOutputByteBufferNano.writeString(2, this.f10349b);
            codedOutputByteBufferNano.writeString(3, this.f10350c);
            a[] aVarArr = this.f10351d;
            int i10 = 0;
            if (aVarArr != null && aVarArr.length > 0) {
                int i11 = 0;
                while (true) {
                    a[] aVarArr2 = this.f10351d;
                    if (i11 >= aVarArr2.length) {
                        break;
                    }
                    a aVar = aVarArr2[i11];
                    if (aVar != null) {
                        codedOutputByteBufferNano.writeMessage(4, aVar);
                    }
                    i11++;
                }
            }
            codedOutputByteBufferNano.writeInt64(5, this.f10352e);
            int[] iArr = this.f10353f;
            if (iArr != null && iArr.length > 0) {
                while (true) {
                    int[] iArr2 = this.f10353f;
                    if (i10 >= iArr2.length) {
                        break;
                    }
                    codedOutputByteBufferNano.writeInt32(6, iArr2[i10]);
                    i10++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class p extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f10357a;

        /* renamed from: b  reason: collision with root package name */
        public long f10358b;

        /* renamed from: c  reason: collision with root package name */
        public long f10359c;

        /* renamed from: d  reason: collision with root package name */
        public long f10360d;

        public p() {
            a();
        }

        public p a() {
            this.f10357a = 432000000L;
            this.f10358b = 86400000L;
            this.f10359c = 10000L;
            this.f10360d = 3600000L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            long j10 = this.f10357a;
            if (j10 != 432000000) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j10);
            }
            long j11 = this.f10358b;
            if (j11 != 86400000) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(2, j11);
            }
            long j12 = this.f10359c;
            if (j12 != 10000) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(3, j12);
            }
            long j13 = this.f10360d;
            if (j13 != 3600000) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(4, j13);
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
                                this.f10360d = codedInputByteBufferNano.readInt64();
                            }
                        } else {
                            this.f10359c = codedInputByteBufferNano.readInt64();
                        }
                    } else {
                        this.f10358b = codedInputByteBufferNano.readInt64();
                    }
                } else {
                    this.f10357a = codedInputByteBufferNano.readInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            long j10 = this.f10357a;
            if (j10 != 432000000) {
                codedOutputByteBufferNano.writeInt64(1, j10);
            }
            long j11 = this.f10358b;
            if (j11 != 86400000) {
                codedOutputByteBufferNano.writeInt64(2, j11);
            }
            long j12 = this.f10359c;
            if (j12 != 10000) {
                codedOutputByteBufferNano.writeInt64(3, j12);
            }
            long j13 = this.f10360d;
            if (j13 != 3600000) {
                codedOutputByteBufferNano.writeInt64(4, j13);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class q extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f10361a;

        /* renamed from: b  reason: collision with root package name */
        public String f10362b;

        /* renamed from: c  reason: collision with root package name */
        public int[] f10363c;

        /* renamed from: d  reason: collision with root package name */
        public int[] f10364d;

        /* renamed from: e  reason: collision with root package name */
        public long f10365e;

        /* renamed from: f  reason: collision with root package name */
        public int f10366f;

        /* renamed from: g  reason: collision with root package name */
        public long f10367g;

        /* renamed from: h  reason: collision with root package name */
        public long f10368h;

        /* renamed from: i  reason: collision with root package name */
        public long f10369i;

        /* renamed from: j  reason: collision with root package name */
        public long f10370j;

        public q() {
            a();
        }

        public q a() {
            this.f10361a = 0L;
            this.f10362b = "";
            int[] iArr = WireFormatNano.EMPTY_INT_ARRAY;
            this.f10363c = iArr;
            this.f10364d = iArr;
            this.f10365e = 259200L;
            this.f10366f = 10;
            this.f10367g = 43200L;
            this.f10368h = 3600L;
            this.f10369i = 86400L;
            this.f10370j = 30L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int[] iArr;
            int[] iArr2;
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt64Size(1, this.f10361a) + CodedOutputByteBufferNano.computeStringSize(2, this.f10362b);
            int[] iArr3 = this.f10363c;
            int i10 = 0;
            if (iArr3 != null && iArr3.length > 0) {
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    iArr2 = this.f10363c;
                    if (i11 >= iArr2.length) {
                        break;
                    }
                    i12 += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr2[i11]);
                    i11++;
                }
                computeSerializedSize = computeSerializedSize + i12 + (iArr2.length * 1);
            }
            int computeInt64Size = computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(4, this.f10365e) + CodedOutputByteBufferNano.computeInt32Size(5, this.f10366f);
            long j10 = this.f10367g;
            if (j10 != 43200) {
                computeInt64Size += CodedOutputByteBufferNano.computeInt64Size(6, j10);
            }
            long j11 = this.f10368h;
            if (j11 != 3600) {
                computeInt64Size += CodedOutputByteBufferNano.computeInt64Size(7, j11);
            }
            long j12 = this.f10369i;
            if (j12 != 86400) {
                computeInt64Size += CodedOutputByteBufferNano.computeInt64Size(8, j12);
            }
            int[] iArr4 = this.f10364d;
            if (iArr4 != null && iArr4.length > 0) {
                int i13 = 0;
                while (true) {
                    iArr = this.f10364d;
                    if (i10 >= iArr.length) {
                        break;
                    }
                    i13 += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr[i10]);
                    i10++;
                }
                computeInt64Size = computeInt64Size + i13 + (iArr.length * 1);
            }
            long j13 = this.f10370j;
            if (j13 != 30) {
                return computeInt64Size + CodedOutputByteBufferNano.computeInt64Size(10, j13);
            }
            return computeInt64Size;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            int length;
            int length2;
            int length3;
            int length4;
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                switch (readTag) {
                    case 0:
                        break;
                    case 8:
                        this.f10361a = codedInputByteBufferNano.readInt64();
                        break;
                    case 18:
                        this.f10362b = codedInputByteBufferNano.readString();
                        break;
                    case Build.API_LEVELS.API_24 /* 24 */:
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 24);
                        int[] iArr = this.f10363c;
                        if (iArr == null) {
                            length = 0;
                        } else {
                            length = iArr.length;
                        }
                        int i10 = repeatedFieldArrayLength + length;
                        int[] iArr2 = new int[i10];
                        if (length != 0) {
                            System.arraycopy(iArr, 0, iArr2, 0, length);
                        }
                        while (length < i10 - 1) {
                            iArr2[length] = codedInputByteBufferNano.readInt32();
                            codedInputByteBufferNano.readTag();
                            length++;
                        }
                        iArr2[length] = codedInputByteBufferNano.readInt32();
                        this.f10363c = iArr2;
                        break;
                    case 26:
                        int pushLimit = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                        int position = codedInputByteBufferNano.getPosition();
                        int i11 = 0;
                        while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                            codedInputByteBufferNano.readInt32();
                            i11++;
                        }
                        codedInputByteBufferNano.rewindToPosition(position);
                        int[] iArr3 = this.f10363c;
                        if (iArr3 == null) {
                            length2 = 0;
                        } else {
                            length2 = iArr3.length;
                        }
                        int i12 = i11 + length2;
                        int[] iArr4 = new int[i12];
                        if (length2 != 0) {
                            System.arraycopy(iArr3, 0, iArr4, 0, length2);
                        }
                        while (length2 < i12) {
                            iArr4[length2] = codedInputByteBufferNano.readInt32();
                            length2++;
                        }
                        this.f10363c = iArr4;
                        codedInputByteBufferNano.popLimit(pushLimit);
                        break;
                    case Build.API_LEVELS.API_32 /* 32 */:
                        this.f10365e = codedInputByteBufferNano.readInt64();
                        break;
                    case C1415p9.L /* 40 */:
                        this.f10366f = codedInputByteBufferNano.readInt32();
                        break;
                    case 48:
                        this.f10367g = codedInputByteBufferNano.readInt64();
                        break;
                    case 56:
                        this.f10368h = codedInputByteBufferNano.readInt64();
                        break;
                    case 64:
                        this.f10369i = codedInputByteBufferNano.readInt64();
                        break;
                    case 72:
                        int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 72);
                        int[] iArr5 = this.f10364d;
                        if (iArr5 == null) {
                            length3 = 0;
                        } else {
                            length3 = iArr5.length;
                        }
                        int i13 = repeatedFieldArrayLength2 + length3;
                        int[] iArr6 = new int[i13];
                        if (length3 != 0) {
                            System.arraycopy(iArr5, 0, iArr6, 0, length3);
                        }
                        while (length3 < i13 - 1) {
                            iArr6[length3] = codedInputByteBufferNano.readInt32();
                            codedInputByteBufferNano.readTag();
                            length3++;
                        }
                        iArr6[length3] = codedInputByteBufferNano.readInt32();
                        this.f10364d = iArr6;
                        break;
                    case 74:
                        int pushLimit2 = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                        int position2 = codedInputByteBufferNano.getPosition();
                        int i14 = 0;
                        while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                            codedInputByteBufferNano.readInt32();
                            i14++;
                        }
                        codedInputByteBufferNano.rewindToPosition(position2);
                        int[] iArr7 = this.f10364d;
                        if (iArr7 == null) {
                            length4 = 0;
                        } else {
                            length4 = iArr7.length;
                        }
                        int i15 = i14 + length4;
                        int[] iArr8 = new int[i15];
                        if (length4 != 0) {
                            System.arraycopy(iArr7, 0, iArr8, 0, length4);
                        }
                        while (length4 < i15) {
                            iArr8[length4] = codedInputByteBufferNano.readInt32();
                            length4++;
                        }
                        this.f10364d = iArr8;
                        codedInputByteBufferNano.popLimit(pushLimit2);
                        break;
                    case 80:
                        this.f10370j = codedInputByteBufferNano.readInt64();
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
            codedOutputByteBufferNano.writeInt64(1, this.f10361a);
            codedOutputByteBufferNano.writeString(2, this.f10362b);
            int[] iArr = this.f10363c;
            int i10 = 0;
            if (iArr != null && iArr.length > 0) {
                int i11 = 0;
                while (true) {
                    int[] iArr2 = this.f10363c;
                    if (i11 >= iArr2.length) {
                        break;
                    }
                    codedOutputByteBufferNano.writeInt32(3, iArr2[i11]);
                    i11++;
                }
            }
            codedOutputByteBufferNano.writeInt64(4, this.f10365e);
            codedOutputByteBufferNano.writeInt32(5, this.f10366f);
            long j10 = this.f10367g;
            if (j10 != 43200) {
                codedOutputByteBufferNano.writeInt64(6, j10);
            }
            long j11 = this.f10368h;
            if (j11 != 3600) {
                codedOutputByteBufferNano.writeInt64(7, j11);
            }
            long j12 = this.f10369i;
            if (j12 != 86400) {
                codedOutputByteBufferNano.writeInt64(8, j12);
            }
            int[] iArr3 = this.f10364d;
            if (iArr3 != null && iArr3.length > 0) {
                while (true) {
                    int[] iArr4 = this.f10364d;
                    if (i10 >= iArr4.length) {
                        break;
                    }
                    codedOutputByteBufferNano.writeInt32(9, iArr4[i10]);
                    i10++;
                }
            }
            long j13 = this.f10370j;
            if (j13 != 30) {
                codedOutputByteBufferNano.writeInt64(10, j13);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class r extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public int f10371a;

        public r() {
            a();
        }

        public r a() {
            this.f10371a = 86400;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            int i10 = this.f10371a;
            if (i10 != 86400) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeUInt32Size(1, i10);
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
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f10371a = codedInputByteBufferNano.readUInt32();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            int i10 = this.f10371a;
            if (i10 != 86400) {
                codedOutputByteBufferNano.writeUInt32(1, i10);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class s extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f10372a;

        public s() {
            a();
        }

        public s a() {
            this.f10372a = 18000000L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt64Size(1, this.f10372a);
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag != 8) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f10372a = codedInputByteBufferNano.readInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeInt64(1, this.f10372a);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class t extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public u f10373a;

        /* renamed from: b  reason: collision with root package name */
        public u f10374b;

        public t() {
            a();
        }

        public t a() {
            this.f10373a = null;
            this.f10374b = null;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            u uVar = this.f10373a;
            if (uVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, uVar);
            }
            u uVar2 = this.f10374b;
            if (uVar2 != null) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, uVar2);
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
                        if (this.f10374b == null) {
                            this.f10374b = new u();
                        }
                        codedInputByteBufferNano.readMessage(this.f10374b);
                    }
                } else {
                    if (this.f10373a == null) {
                        this.f10373a = new u();
                    }
                    codedInputByteBufferNano.readMessage(this.f10373a);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            u uVar = this.f10373a;
            if (uVar != null) {
                codedOutputByteBufferNano.writeMessage(1, uVar);
            }
            u uVar2 = this.f10374b;
            if (uVar2 != null) {
                codedOutputByteBufferNano.writeMessage(2, uVar2);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class u extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public int f10375a;

        /* renamed from: b  reason: collision with root package name */
        public long f10376b;

        public u() {
            a();
        }

        public u a() {
            this.f10375a = 100;
            this.f10376b = 60L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            int i10 = this.f10375a;
            if (i10 != 100) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i10);
            }
            long j10 = this.f10376b;
            if (j10 != 60) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(2, j10);
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
                        this.f10376b = codedInputByteBufferNano.readInt64();
                    }
                } else {
                    this.f10375a = codedInputByteBufferNano.readInt32();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            int i10 = this.f10375a;
            if (i10 != 100) {
                codedOutputByteBufferNano.writeInt32(1, i10);
            }
            long j10 = this.f10376b;
            if (j10 != 60) {
                codedOutputByteBufferNano.writeInt64(2, j10);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class v extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public boolean f10377a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f10378b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f10379c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f10380d;

        /* renamed from: e  reason: collision with root package name */
        public int f10381e;

        /* renamed from: f  reason: collision with root package name */
        public int f10382f;

        /* renamed from: g  reason: collision with root package name */
        public int f10383g;

        /* renamed from: h  reason: collision with root package name */
        public int f10384h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f10385i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f10386j;

        /* renamed from: k  reason: collision with root package name */
        public boolean f10387k;

        /* renamed from: l  reason: collision with root package name */
        public boolean f10388l;

        /* renamed from: m  reason: collision with root package name */
        public y[] f10389m;

        /* renamed from: n  reason: collision with root package name */
        public boolean f10390n;

        /* renamed from: o  reason: collision with root package name */
        public boolean f10391o;

        /* renamed from: p  reason: collision with root package name */
        public int f10392p;

        public v() {
            a();
        }

        public v a() {
            this.f10377a = true;
            this.f10378b = true;
            this.f10379c = true;
            this.f10380d = true;
            this.f10381e = 10000;
            this.f10382f = 1000;
            this.f10383g = 1000;
            this.f10384h = 200000;
            this.f10385i = false;
            this.f10386j = false;
            this.f10387k = false;
            this.f10388l = false;
            this.f10389m = y.b();
            this.f10390n = false;
            this.f10391o = false;
            this.f10392p = 4000;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            boolean z10 = this.f10377a;
            if (!z10) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(1, z10);
            }
            boolean z11 = this.f10378b;
            if (!z11) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(2, z11);
            }
            boolean z12 = this.f10379c;
            if (!z12) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(3, z12);
            }
            boolean z13 = this.f10380d;
            if (!z13) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(4, z13);
            }
            int i10 = this.f10381e;
            if (i10 != 10000) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, i10);
            }
            int i11 = this.f10382f;
            if (i11 != 1000) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, i11);
            }
            int i12 = this.f10383g;
            if (i12 != 1000) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, i12);
            }
            int i13 = this.f10384h;
            if (i13 != 200000) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, i13);
            }
            boolean z14 = this.f10385i;
            if (z14) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(9, z14);
            }
            boolean z15 = this.f10386j;
            if (z15) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(10, z15);
            }
            boolean z16 = this.f10387k;
            if (z16) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(11, z16);
            }
            boolean z17 = this.f10388l;
            if (z17) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(12, z17);
            }
            y[] yVarArr = this.f10389m;
            if (yVarArr != null && yVarArr.length > 0) {
                int i14 = 0;
                while (true) {
                    y[] yVarArr2 = this.f10389m;
                    if (i14 >= yVarArr2.length) {
                        break;
                    }
                    y yVar = yVarArr2[i14];
                    if (yVar != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(13, yVar);
                    }
                    i14++;
                }
            }
            boolean z18 = this.f10390n;
            if (z18) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(14, z18);
            }
            boolean z19 = this.f10391o;
            if (z19) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(15, z19);
            }
            int i15 = this.f10392p;
            if (i15 != 4000) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(16, i15);
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
                        this.f10377a = codedInputByteBufferNano.readBool();
                        break;
                    case 16:
                        this.f10378b = codedInputByteBufferNano.readBool();
                        break;
                    case Build.API_LEVELS.API_24 /* 24 */:
                        this.f10379c = codedInputByteBufferNano.readBool();
                        break;
                    case Build.API_LEVELS.API_32 /* 32 */:
                        this.f10380d = codedInputByteBufferNano.readBool();
                        break;
                    case C1415p9.L /* 40 */:
                        this.f10381e = codedInputByteBufferNano.readInt32();
                        break;
                    case 48:
                        this.f10382f = codedInputByteBufferNano.readInt32();
                        break;
                    case 56:
                        this.f10383g = codedInputByteBufferNano.readInt32();
                        break;
                    case 64:
                        this.f10384h = codedInputByteBufferNano.readInt32();
                        break;
                    case 72:
                        this.f10385i = codedInputByteBufferNano.readBool();
                        break;
                    case 80:
                        this.f10386j = codedInputByteBufferNano.readBool();
                        break;
                    case 88:
                        this.f10387k = codedInputByteBufferNano.readBool();
                        break;
                    case 96:
                        this.f10388l = codedInputByteBufferNano.readBool();
                        break;
                    case 106:
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 106);
                        y[] yVarArr = this.f10389m;
                        if (yVarArr == null) {
                            length = 0;
                        } else {
                            length = yVarArr.length;
                        }
                        int i10 = repeatedFieldArrayLength + length;
                        y[] yVarArr2 = new y[i10];
                        if (length != 0) {
                            System.arraycopy(yVarArr, 0, yVarArr2, 0, length);
                        }
                        while (length < i10 - 1) {
                            y yVar = new y();
                            yVarArr2[length] = yVar;
                            codedInputByteBufferNano.readMessage(yVar);
                            codedInputByteBufferNano.readTag();
                            length++;
                        }
                        y yVar2 = new y();
                        yVarArr2[length] = yVar2;
                        codedInputByteBufferNano.readMessage(yVar2);
                        this.f10389m = yVarArr2;
                        break;
                    case 112:
                        this.f10390n = codedInputByteBufferNano.readBool();
                        break;
                    case 120:
                        this.f10391o = codedInputByteBufferNano.readBool();
                        break;
                    case 128:
                        this.f10392p = codedInputByteBufferNano.readInt32();
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
            boolean z10 = this.f10377a;
            if (!z10) {
                codedOutputByteBufferNano.writeBool(1, z10);
            }
            boolean z11 = this.f10378b;
            if (!z11) {
                codedOutputByteBufferNano.writeBool(2, z11);
            }
            boolean z12 = this.f10379c;
            if (!z12) {
                codedOutputByteBufferNano.writeBool(3, z12);
            }
            boolean z13 = this.f10380d;
            if (!z13) {
                codedOutputByteBufferNano.writeBool(4, z13);
            }
            int i10 = this.f10381e;
            if (i10 != 10000) {
                codedOutputByteBufferNano.writeInt32(5, i10);
            }
            int i11 = this.f10382f;
            if (i11 != 1000) {
                codedOutputByteBufferNano.writeInt32(6, i11);
            }
            int i12 = this.f10383g;
            if (i12 != 1000) {
                codedOutputByteBufferNano.writeInt32(7, i12);
            }
            int i13 = this.f10384h;
            if (i13 != 200000) {
                codedOutputByteBufferNano.writeInt32(8, i13);
            }
            boolean z14 = this.f10385i;
            if (z14) {
                codedOutputByteBufferNano.writeBool(9, z14);
            }
            boolean z15 = this.f10386j;
            if (z15) {
                codedOutputByteBufferNano.writeBool(10, z15);
            }
            boolean z16 = this.f10387k;
            if (z16) {
                codedOutputByteBufferNano.writeBool(11, z16);
            }
            boolean z17 = this.f10388l;
            if (z17) {
                codedOutputByteBufferNano.writeBool(12, z17);
            }
            y[] yVarArr = this.f10389m;
            if (yVarArr != null && yVarArr.length > 0) {
                int i14 = 0;
                while (true) {
                    y[] yVarArr2 = this.f10389m;
                    if (i14 >= yVarArr2.length) {
                        break;
                    }
                    y yVar = yVarArr2[i14];
                    if (yVar != null) {
                        codedOutputByteBufferNano.writeMessage(13, yVar);
                    }
                    i14++;
                }
            }
            boolean z18 = this.f10390n;
            if (z18) {
                codedOutputByteBufferNano.writeBool(14, z18);
            }
            boolean z19 = this.f10391o;
            if (z19) {
                codedOutputByteBufferNano.writeBool(15, z19);
            }
            int i15 = this.f10392p;
            if (i15 != 4000) {
                codedOutputByteBufferNano.writeInt32(16, i15);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class w extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public int f10393a;

        /* renamed from: b  reason: collision with root package name */
        public int f10394b;

        /* renamed from: c  reason: collision with root package name */
        public int f10395c;

        /* renamed from: d  reason: collision with root package name */
        public long f10396d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f10397e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f10398f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f10399g;

        /* renamed from: h  reason: collision with root package name */
        public y[] f10400h;

        public w() {
            a();
        }

        public w a() {
            this.f10393a = 10000;
            this.f10394b = 1000;
            this.f10395c = 100;
            this.f10396d = 5000L;
            this.f10397e = true;
            this.f10398f = false;
            this.f10399g = true;
            this.f10400h = y.b();
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt32Size(1, this.f10393a) + CodedOutputByteBufferNano.computeInt32Size(2, this.f10394b) + CodedOutputByteBufferNano.computeInt32Size(3, this.f10395c) + CodedOutputByteBufferNano.computeInt64Size(4, this.f10396d) + CodedOutputByteBufferNano.computeBoolSize(5, this.f10397e) + CodedOutputByteBufferNano.computeBoolSize(6, this.f10398f) + CodedOutputByteBufferNano.computeBoolSize(7, this.f10399g);
            y[] yVarArr = this.f10400h;
            if (yVarArr != null && yVarArr.length > 0) {
                int i10 = 0;
                while (true) {
                    y[] yVarArr2 = this.f10400h;
                    if (i10 >= yVarArr2.length) {
                        break;
                    }
                    y yVar = yVarArr2[i10];
                    if (yVar != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(8, yVar);
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
                    if (readTag != 16) {
                        if (readTag != 24) {
                            if (readTag != 32) {
                                if (readTag != 40) {
                                    if (readTag != 48) {
                                        if (readTag != 56) {
                                            if (readTag != 66) {
                                                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                                    break;
                                                }
                                            } else {
                                                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 66);
                                                y[] yVarArr = this.f10400h;
                                                if (yVarArr == null) {
                                                    length = 0;
                                                } else {
                                                    length = yVarArr.length;
                                                }
                                                int i10 = repeatedFieldArrayLength + length;
                                                y[] yVarArr2 = new y[i10];
                                                if (length != 0) {
                                                    System.arraycopy(yVarArr, 0, yVarArr2, 0, length);
                                                }
                                                while (length < i10 - 1) {
                                                    y yVar = new y();
                                                    yVarArr2[length] = yVar;
                                                    codedInputByteBufferNano.readMessage(yVar);
                                                    codedInputByteBufferNano.readTag();
                                                    length++;
                                                }
                                                y yVar2 = new y();
                                                yVarArr2[length] = yVar2;
                                                codedInputByteBufferNano.readMessage(yVar2);
                                                this.f10400h = yVarArr2;
                                            }
                                        } else {
                                            this.f10399g = codedInputByteBufferNano.readBool();
                                        }
                                    } else {
                                        this.f10398f = codedInputByteBufferNano.readBool();
                                    }
                                } else {
                                    this.f10397e = codedInputByteBufferNano.readBool();
                                }
                            } else {
                                this.f10396d = codedInputByteBufferNano.readInt64();
                            }
                        } else {
                            this.f10395c = codedInputByteBufferNano.readInt32();
                        }
                    } else {
                        this.f10394b = codedInputByteBufferNano.readInt32();
                    }
                } else {
                    this.f10393a = codedInputByteBufferNano.readInt32();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeInt32(1, this.f10393a);
            codedOutputByteBufferNano.writeInt32(2, this.f10394b);
            codedOutputByteBufferNano.writeInt32(3, this.f10395c);
            codedOutputByteBufferNano.writeInt64(4, this.f10396d);
            codedOutputByteBufferNano.writeBool(5, this.f10397e);
            codedOutputByteBufferNano.writeBool(6, this.f10398f);
            codedOutputByteBufferNano.writeBool(7, this.f10399g);
            y[] yVarArr = this.f10400h;
            if (yVarArr != null && yVarArr.length > 0) {
                int i10 = 0;
                while (true) {
                    y[] yVarArr2 = this.f10400h;
                    if (i10 >= yVarArr2.length) {
                        break;
                    }
                    y yVar = yVarArr2[i10];
                    if (yVar != null) {
                        codedOutputByteBufferNano.writeMessage(8, yVar);
                    }
                    i10++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class x extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public boolean f10401a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f10402b;

        public x() {
            a();
        }

        public x a() {
            this.f10401a = true;
            this.f10402b = false;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeBoolSize(1, this.f10401a) + CodedOutputByteBufferNano.computeBoolSize(2, this.f10402b);
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
                        this.f10402b = codedInputByteBufferNano.readBool();
                    }
                } else {
                    this.f10401a = codedInputByteBufferNano.readBool();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeBool(1, this.f10401a);
            codedOutputByteBufferNano.writeBool(2, this.f10402b);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes2.dex */
    public static final class y extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile y[] f10403c;

        /* renamed from: a  reason: collision with root package name */
        public int f10404a;

        /* renamed from: b  reason: collision with root package name */
        public String f10405b;

        public y() {
            a();
        }

        public static y[] b() {
            if (f10403c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f10403c == null) {
                        f10403c = new y[0];
                    }
                }
            }
            return f10403c;
        }

        public y a() {
            this.f10404a = 0;
            this.f10405b = "";
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt32Size(1, this.f10404a) + CodedOutputByteBufferNano.computeStringSize(2, this.f10405b);
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag != 8) {
                    if (readTag != 18) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        this.f10405b = codedInputByteBufferNano.readString();
                    }
                } else {
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                        this.f10404a = readInt32;
                    }
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeInt32(1, this.f10404a);
            codedOutputByteBufferNano.writeString(2, this.f10405b);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public If() {
        a();
    }

    public If a() {
        this.f10230a = "";
        this.f10231b = 0L;
        String[] strArr = WireFormatNano.EMPTY_STRING_ARRAY;
        this.f10232c = strArr;
        this.f10233d = "";
        this.f10234e = "";
        this.f10235f = strArr;
        this.f10236g = strArr;
        this.f10237h = strArr;
        this.f10238i = strArr;
        this.f10239j = d.b();
        this.f10240k = null;
        this.f10241l = k.b();
        this.f10242m = null;
        this.f10243n = o.b();
        this.f10244o = "";
        this.f10245p = "";
        this.f10246q = "";
        this.f10247r = false;
        this.f10248s = "";
        this.f10249t = strArr;
        this.f10250u = null;
        this.f10251v = false;
        this.f10252w = m.b();
        this.f10253x = null;
        this.f10254y = "";
        this.f10255z = "";
        this.A = "";
        this.B = "";
        this.C = 0L;
        this.D = 0L;
        this.E = false;
        this.F = null;
        this.G = null;
        this.H = PipesConfigBase.DEFAULT_STALE_FETCHER_TIMEOUT_SECONDS;
        this.I = 1;
        this.J = null;
        this.K = null;
        this.L = null;
        this.M = null;
        this.N = null;
        this.O = null;
        this.P = null;
        this.Q = strArr;
        this.R = null;
        this.S = null;
        this.T = null;
        this.U = null;
        this.V = null;
        this.W = l.b();
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.f10230a.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f10230a);
        }
        int computeInt64Size = computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(3, this.f10231b);
        String[] strArr = this.f10232c;
        int i10 = 0;
        if (strArr != null && strArr.length > 0) {
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            while (true) {
                String[] strArr2 = this.f10232c;
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
            computeInt64Size = computeInt64Size + i12 + (i13 * 1);
        }
        if (!this.f10233d.equals("")) {
            computeInt64Size += CodedOutputByteBufferNano.computeStringSize(5, this.f10233d);
        }
        if (!this.f10234e.equals("")) {
            computeInt64Size += CodedOutputByteBufferNano.computeStringSize(6, this.f10234e);
        }
        String[] strArr3 = this.f10235f;
        if (strArr3 != null && strArr3.length > 0) {
            int i14 = 0;
            int i15 = 0;
            int i16 = 0;
            while (true) {
                String[] strArr4 = this.f10235f;
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
            computeInt64Size = computeInt64Size + i15 + (i16 * 1);
        }
        String[] strArr5 = this.f10236g;
        if (strArr5 != null && strArr5.length > 0) {
            int i17 = 0;
            int i18 = 0;
            int i19 = 0;
            while (true) {
                String[] strArr6 = this.f10236g;
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
            computeInt64Size = computeInt64Size + i18 + (i19 * 1);
        }
        String[] strArr7 = this.f10237h;
        if (strArr7 != null && strArr7.length > 0) {
            int i20 = 0;
            int i21 = 0;
            int i22 = 0;
            while (true) {
                String[] strArr8 = this.f10237h;
                if (i20 >= strArr8.length) {
                    break;
                }
                String str4 = strArr8[i20];
                if (str4 != null) {
                    i22++;
                    i21 += CodedOutputByteBufferNano.computeStringSizeNoTag(str4);
                }
                i20++;
            }
            computeInt64Size = computeInt64Size + i21 + (i22 * 1);
        }
        i iVar = this.f10240k;
        if (iVar != null) {
            computeInt64Size += CodedOutputByteBufferNano.computeMessageSize(10, iVar);
        }
        k[] kVarArr = this.f10241l;
        if (kVarArr != null && kVarArr.length > 0) {
            int i23 = 0;
            while (true) {
                k[] kVarArr2 = this.f10241l;
                if (i23 >= kVarArr2.length) {
                    break;
                }
                k kVar = kVarArr2[i23];
                if (kVar != null) {
                    computeInt64Size += CodedOutputByteBufferNano.computeMessageSize(11, kVar);
                }
                i23++;
            }
        }
        q qVar = this.f10242m;
        if (qVar != null) {
            computeInt64Size += CodedOutputByteBufferNano.computeMessageSize(13, qVar);
        }
        o[] oVarArr = this.f10243n;
        if (oVarArr != null && oVarArr.length > 0) {
            int i24 = 0;
            while (true) {
                o[] oVarArr2 = this.f10243n;
                if (i24 >= oVarArr2.length) {
                    break;
                }
                o oVar = oVarArr2[i24];
                if (oVar != null) {
                    computeInt64Size += CodedOutputByteBufferNano.computeMessageSize(14, oVar);
                }
                i24++;
            }
        }
        if (!this.f10244o.equals("")) {
            computeInt64Size += CodedOutputByteBufferNano.computeStringSize(15, this.f10244o);
        }
        if (!this.f10245p.equals("")) {
            computeInt64Size += CodedOutputByteBufferNano.computeStringSize(16, this.f10245p);
        }
        int computeBoolSize = computeInt64Size + CodedOutputByteBufferNano.computeBoolSize(17, this.f10247r);
        if (!this.f10248s.equals("")) {
            computeBoolSize += CodedOutputByteBufferNano.computeStringSize(19, this.f10248s);
        }
        String[] strArr9 = this.f10249t;
        if (strArr9 != null && strArr9.length > 0) {
            int i25 = 0;
            int i26 = 0;
            int i27 = 0;
            while (true) {
                String[] strArr10 = this.f10249t;
                if (i25 >= strArr10.length) {
                    break;
                }
                String str5 = strArr10[i25];
                if (str5 != null) {
                    i27++;
                    i26 += CodedOutputByteBufferNano.computeStringSizeNoTag(str5);
                }
                i25++;
            }
            computeBoolSize = computeBoolSize + i26 + (i27 * 2);
        }
        s sVar = this.f10250u;
        if (sVar != null) {
            computeBoolSize += CodedOutputByteBufferNano.computeMessageSize(21, sVar);
        }
        boolean z10 = this.f10251v;
        if (z10) {
            computeBoolSize += CodedOutputByteBufferNano.computeBoolSize(22, z10);
        }
        m[] mVarArr = this.f10252w;
        if (mVarArr != null && mVarArr.length > 0) {
            int i28 = 0;
            while (true) {
                m[] mVarArr2 = this.f10252w;
                if (i28 >= mVarArr2.length) {
                    break;
                }
                m mVar = mVarArr2[i28];
                if (mVar != null) {
                    computeBoolSize += CodedOutputByteBufferNano.computeMessageSize(23, mVar);
                }
                i28++;
            }
        }
        p pVar = this.f10253x;
        if (pVar != null) {
            computeBoolSize += CodedOutputByteBufferNano.computeMessageSize(24, pVar);
        }
        if (!this.f10254y.equals("")) {
            computeBoolSize += CodedOutputByteBufferNano.computeStringSize(25, this.f10254y);
        }
        if (!this.f10255z.equals("")) {
            computeBoolSize += CodedOutputByteBufferNano.computeStringSize(26, this.f10255z);
        }
        if (!this.A.equals("")) {
            computeBoolSize += CodedOutputByteBufferNano.computeStringSize(27, this.A);
        }
        int computeInt64Size2 = computeBoolSize + CodedOutputByteBufferNano.computeInt64Size(28, this.C) + CodedOutputByteBufferNano.computeInt64Size(29, this.D);
        boolean z11 = this.E;
        if (z11) {
            computeInt64Size2 += CodedOutputByteBufferNano.computeBoolSize(30, z11);
        }
        n nVar = this.F;
        if (nVar != null) {
            computeInt64Size2 += CodedOutputByteBufferNano.computeMessageSize(32, nVar);
        }
        j jVar = this.G;
        if (jVar != null) {
            computeInt64Size2 += CodedOutputByteBufferNano.computeMessageSize(33, jVar);
        }
        int computeInt32Size = computeInt64Size2 + CodedOutputByteBufferNano.computeInt32Size(35, this.H) + CodedOutputByteBufferNano.computeInt32Size(36, this.I);
        w wVar = this.J;
        if (wVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(37, wVar);
        }
        v vVar = this.K;
        if (vVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(38, vVar);
        }
        v vVar2 = this.L;
        if (vVar2 != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(39, vVar2);
        }
        t tVar = this.N;
        if (tVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(41, tVar);
        }
        c cVar = this.O;
        if (cVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(42, cVar);
        }
        v vVar3 = this.M;
        if (vVar3 != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(43, vVar3);
        }
        if (!this.f10246q.equals("")) {
            computeInt32Size += CodedOutputByteBufferNano.computeStringSize(44, this.f10246q);
        }
        f fVar = this.P;
        if (fVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(45, fVar);
        }
        String[] strArr11 = this.f10238i;
        if (strArr11 != null && strArr11.length > 0) {
            int i29 = 0;
            int i30 = 0;
            int i31 = 0;
            while (true) {
                String[] strArr12 = this.f10238i;
                if (i29 >= strArr12.length) {
                    break;
                }
                String str6 = strArr12[i29];
                if (str6 != null) {
                    i31++;
                    i30 += CodedOutputByteBufferNano.computeStringSizeNoTag(str6);
                }
                i29++;
            }
            computeInt32Size = computeInt32Size + i30 + (i31 * 2);
        }
        String[] strArr13 = this.Q;
        if (strArr13 != null && strArr13.length > 0) {
            int i32 = 0;
            int i33 = 0;
            int i34 = 0;
            while (true) {
                String[] strArr14 = this.Q;
                if (i32 >= strArr14.length) {
                    break;
                }
                String str7 = strArr14[i32];
                if (str7 != null) {
                    i34++;
                    i33 += CodedOutputByteBufferNano.computeStringSizeNoTag(str7);
                }
                i32++;
            }
            computeInt32Size = computeInt32Size + i33 + (i34 * 2);
        }
        b bVar = this.R;
        if (bVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(48, bVar);
        }
        if (!this.B.equals("")) {
            computeInt32Size += CodedOutputByteBufferNano.computeStringSize(49, this.B);
        }
        a aVar = this.S;
        if (aVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(51, aVar);
        }
        h hVar = this.T;
        if (hVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(52, hVar);
        }
        g gVar = this.U;
        if (gVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(53, gVar);
        }
        d[] dVarArr = this.f10239j;
        if (dVarArr != null && dVarArr.length > 0) {
            int i35 = 0;
            while (true) {
                d[] dVarArr2 = this.f10239j;
                if (i35 >= dVarArr2.length) {
                    break;
                }
                d dVar = dVarArr2[i35];
                if (dVar != null) {
                    computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(54, dVar);
                }
                i35++;
            }
        }
        r rVar = this.V;
        if (rVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(55, rVar);
        }
        l[] lVarArr = this.W;
        if (lVarArr != null && lVarArr.length > 0) {
            while (true) {
                l[] lVarArr2 = this.W;
                if (i10 >= lVarArr2.length) {
                    break;
                }
                l lVar = lVarArr2[i10];
                if (lVar != null) {
                    computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(56, lVar);
                }
                i10++;
            }
        }
        return computeInt32Size;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            switch (readTag) {
                case 0:
                    break;
                case 10:
                    this.f10230a = codedInputByteBufferNano.readString();
                    break;
                case Build.API_LEVELS.API_24 /* 24 */:
                    this.f10231b = codedInputByteBufferNano.readInt64();
                    break;
                case Build.API_LEVELS.API_34 /* 34 */:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 34);
                    String[] strArr = this.f10232c;
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
                    this.f10232c = strArr2;
                    break;
                case C1415p9.M /* 42 */:
                    this.f10233d = codedInputByteBufferNano.readString();
                    break;
                case 50:
                    this.f10234e = codedInputByteBufferNano.readString();
                    break;
                case 58:
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 58);
                    String[] strArr3 = this.f10235f;
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
                    this.f10235f = strArr4;
                    break;
                case 66:
                    int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 66);
                    String[] strArr5 = this.f10236g;
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
                    this.f10236g = strArr6;
                    break;
                case 74:
                    int repeatedFieldArrayLength4 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 74);
                    String[] strArr7 = this.f10237h;
                    int length4 = strArr7 == null ? 0 : strArr7.length;
                    int i13 = repeatedFieldArrayLength4 + length4;
                    String[] strArr8 = new String[i13];
                    if (length4 != 0) {
                        System.arraycopy(strArr7, 0, strArr8, 0, length4);
                    }
                    while (length4 < i13 - 1) {
                        strArr8[length4] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length4++;
                    }
                    strArr8[length4] = codedInputByteBufferNano.readString();
                    this.f10237h = strArr8;
                    break;
                case 82:
                    if (this.f10240k == null) {
                        this.f10240k = new i();
                    }
                    codedInputByteBufferNano.readMessage(this.f10240k);
                    break;
                case 90:
                    int repeatedFieldArrayLength5 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 90);
                    k[] kVarArr = this.f10241l;
                    int length5 = kVarArr == null ? 0 : kVarArr.length;
                    int i14 = repeatedFieldArrayLength5 + length5;
                    k[] kVarArr2 = new k[i14];
                    if (length5 != 0) {
                        System.arraycopy(kVarArr, 0, kVarArr2, 0, length5);
                    }
                    while (length5 < i14 - 1) {
                        k kVar = new k();
                        kVarArr2[length5] = kVar;
                        codedInputByteBufferNano.readMessage(kVar);
                        codedInputByteBufferNano.readTag();
                        length5++;
                    }
                    k kVar2 = new k();
                    kVarArr2[length5] = kVar2;
                    codedInputByteBufferNano.readMessage(kVar2);
                    this.f10241l = kVarArr2;
                    break;
                case 106:
                    if (this.f10242m == null) {
                        this.f10242m = new q();
                    }
                    codedInputByteBufferNano.readMessage(this.f10242m);
                    break;
                case 114:
                    int repeatedFieldArrayLength6 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 114);
                    o[] oVarArr = this.f10243n;
                    int length6 = oVarArr == null ? 0 : oVarArr.length;
                    int i15 = repeatedFieldArrayLength6 + length6;
                    o[] oVarArr2 = new o[i15];
                    if (length6 != 0) {
                        System.arraycopy(oVarArr, 0, oVarArr2, 0, length6);
                    }
                    while (length6 < i15 - 1) {
                        o oVar = new o();
                        oVarArr2[length6] = oVar;
                        codedInputByteBufferNano.readMessage(oVar);
                        codedInputByteBufferNano.readTag();
                        length6++;
                    }
                    o oVar2 = new o();
                    oVarArr2[length6] = oVar2;
                    codedInputByteBufferNano.readMessage(oVar2);
                    this.f10243n = oVarArr2;
                    break;
                case 122:
                    this.f10244o = codedInputByteBufferNano.readString();
                    break;
                case 130:
                    this.f10245p = codedInputByteBufferNano.readString();
                    break;
                case 136:
                    this.f10247r = codedInputByteBufferNano.readBool();
                    break;
                case 154:
                    this.f10248s = codedInputByteBufferNano.readString();
                    break;
                case 162:
                    int repeatedFieldArrayLength7 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 162);
                    String[] strArr9 = this.f10249t;
                    int length7 = strArr9 == null ? 0 : strArr9.length;
                    int i16 = repeatedFieldArrayLength7 + length7;
                    String[] strArr10 = new String[i16];
                    if (length7 != 0) {
                        System.arraycopy(strArr9, 0, strArr10, 0, length7);
                    }
                    while (length7 < i16 - 1) {
                        strArr10[length7] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length7++;
                    }
                    strArr10[length7] = codedInputByteBufferNano.readString();
                    this.f10249t = strArr10;
                    break;
                case 170:
                    if (this.f10250u == null) {
                        this.f10250u = new s();
                    }
                    codedInputByteBufferNano.readMessage(this.f10250u);
                    break;
                case 176:
                    this.f10251v = codedInputByteBufferNano.readBool();
                    break;
                case 186:
                    int repeatedFieldArrayLength8 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 186);
                    m[] mVarArr = this.f10252w;
                    int length8 = mVarArr == null ? 0 : mVarArr.length;
                    int i17 = repeatedFieldArrayLength8 + length8;
                    m[] mVarArr2 = new m[i17];
                    if (length8 != 0) {
                        System.arraycopy(mVarArr, 0, mVarArr2, 0, length8);
                    }
                    while (length8 < i17 - 1) {
                        m mVar = new m();
                        mVarArr2[length8] = mVar;
                        codedInputByteBufferNano.readMessage(mVar);
                        codedInputByteBufferNano.readTag();
                        length8++;
                    }
                    m mVar2 = new m();
                    mVarArr2[length8] = mVar2;
                    codedInputByteBufferNano.readMessage(mVar2);
                    this.f10252w = mVarArr2;
                    break;
                case 194:
                    if (this.f10253x == null) {
                        this.f10253x = new p();
                    }
                    codedInputByteBufferNano.readMessage(this.f10253x);
                    break;
                case 202:
                    this.f10254y = codedInputByteBufferNano.readString();
                    break;
                case 210:
                    this.f10255z = codedInputByteBufferNano.readString();
                    break;
                case 218:
                    this.A = codedInputByteBufferNano.readString();
                    break;
                case 224:
                    this.C = codedInputByteBufferNano.readInt64();
                    break;
                case 232:
                    this.D = codedInputByteBufferNano.readInt64();
                    break;
                case 240:
                    this.E = codedInputByteBufferNano.readBool();
                    break;
                case 258:
                    if (this.F == null) {
                        this.F = new n();
                    }
                    codedInputByteBufferNano.readMessage(this.F);
                    break;
                case 266:
                    if (this.G == null) {
                        this.G = new j();
                    }
                    codedInputByteBufferNano.readMessage(this.G);
                    break;
                case 280:
                    this.H = codedInputByteBufferNano.readInt32();
                    break;
                case 288:
                    this.I = codedInputByteBufferNano.readInt32();
                    break;
                case 298:
                    if (this.J == null) {
                        this.J = new w();
                    }
                    codedInputByteBufferNano.readMessage(this.J);
                    break;
                case 306:
                    if (this.K == null) {
                        this.K = new v();
                    }
                    codedInputByteBufferNano.readMessage(this.K);
                    break;
                case 314:
                    if (this.L == null) {
                        this.L = new v();
                    }
                    codedInputByteBufferNano.readMessage(this.L);
                    break;
                case 330:
                    if (this.N == null) {
                        this.N = new t();
                    }
                    codedInputByteBufferNano.readMessage(this.N);
                    break;
                case 338:
                    if (this.O == null) {
                        this.O = new c();
                    }
                    codedInputByteBufferNano.readMessage(this.O);
                    break;
                case 346:
                    if (this.M == null) {
                        this.M = new v();
                    }
                    codedInputByteBufferNano.readMessage(this.M);
                    break;
                case 354:
                    this.f10246q = codedInputByteBufferNano.readString();
                    break;
                case 362:
                    if (this.P == null) {
                        this.P = new f();
                    }
                    codedInputByteBufferNano.readMessage(this.P);
                    break;
                case 370:
                    int repeatedFieldArrayLength9 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 370);
                    String[] strArr11 = this.f10238i;
                    int length9 = strArr11 == null ? 0 : strArr11.length;
                    int i18 = repeatedFieldArrayLength9 + length9;
                    String[] strArr12 = new String[i18];
                    if (length9 != 0) {
                        System.arraycopy(strArr11, 0, strArr12, 0, length9);
                    }
                    while (length9 < i18 - 1) {
                        strArr12[length9] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length9++;
                    }
                    strArr12[length9] = codedInputByteBufferNano.readString();
                    this.f10238i = strArr12;
                    break;
                case 378:
                    int repeatedFieldArrayLength10 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 378);
                    String[] strArr13 = this.Q;
                    int length10 = strArr13 == null ? 0 : strArr13.length;
                    int i19 = repeatedFieldArrayLength10 + length10;
                    String[] strArr14 = new String[i19];
                    if (length10 != 0) {
                        System.arraycopy(strArr13, 0, strArr14, 0, length10);
                    }
                    while (length10 < i19 - 1) {
                        strArr14[length10] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length10++;
                    }
                    strArr14[length10] = codedInputByteBufferNano.readString();
                    this.Q = strArr14;
                    break;
                case 386:
                    if (this.R == null) {
                        this.R = new b();
                    }
                    codedInputByteBufferNano.readMessage(this.R);
                    break;
                case 394:
                    this.B = codedInputByteBufferNano.readString();
                    break;
                case 410:
                    if (this.S == null) {
                        this.S = new a();
                    }
                    codedInputByteBufferNano.readMessage(this.S);
                    break;
                case 418:
                    if (this.T == null) {
                        this.T = new h();
                    }
                    codedInputByteBufferNano.readMessage(this.T);
                    break;
                case 426:
                    if (this.U == null) {
                        this.U = new g();
                    }
                    codedInputByteBufferNano.readMessage(this.U);
                    break;
                case 434:
                    int repeatedFieldArrayLength11 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 434);
                    d[] dVarArr = this.f10239j;
                    int length11 = dVarArr == null ? 0 : dVarArr.length;
                    int i20 = repeatedFieldArrayLength11 + length11;
                    d[] dVarArr2 = new d[i20];
                    if (length11 != 0) {
                        System.arraycopy(dVarArr, 0, dVarArr2, 0, length11);
                    }
                    while (length11 < i20 - 1) {
                        d dVar = new d();
                        dVarArr2[length11] = dVar;
                        codedInputByteBufferNano.readMessage(dVar);
                        codedInputByteBufferNano.readTag();
                        length11++;
                    }
                    d dVar2 = new d();
                    dVarArr2[length11] = dVar2;
                    codedInputByteBufferNano.readMessage(dVar2);
                    this.f10239j = dVarArr2;
                    break;
                case 442:
                    if (this.V == null) {
                        this.V = new r();
                    }
                    codedInputByteBufferNano.readMessage(this.V);
                    break;
                case 450:
                    int repeatedFieldArrayLength12 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 450);
                    l[] lVarArr = this.W;
                    int length12 = lVarArr == null ? 0 : lVarArr.length;
                    int i21 = repeatedFieldArrayLength12 + length12;
                    l[] lVarArr2 = new l[i21];
                    if (length12 != 0) {
                        System.arraycopy(lVarArr, 0, lVarArr2, 0, length12);
                    }
                    while (length12 < i21 - 1) {
                        l lVar = new l();
                        lVarArr2[length12] = lVar;
                        codedInputByteBufferNano.readMessage(lVar);
                        codedInputByteBufferNano.readTag();
                        length12++;
                    }
                    l lVar2 = new l();
                    lVarArr2[length12] = lVar2;
                    codedInputByteBufferNano.readMessage(lVar2);
                    this.W = lVarArr2;
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
        if (!this.f10230a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.f10230a);
        }
        codedOutputByteBufferNano.writeInt64(3, this.f10231b);
        String[] strArr = this.f10232c;
        int i10 = 0;
        if (strArr != null && strArr.length > 0) {
            int i11 = 0;
            while (true) {
                String[] strArr2 = this.f10232c;
                if (i11 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i11];
                if (str != null) {
                    codedOutputByteBufferNano.writeString(4, str);
                }
                i11++;
            }
        }
        if (!this.f10233d.equals("")) {
            codedOutputByteBufferNano.writeString(5, this.f10233d);
        }
        if (!this.f10234e.equals("")) {
            codedOutputByteBufferNano.writeString(6, this.f10234e);
        }
        String[] strArr3 = this.f10235f;
        if (strArr3 != null && strArr3.length > 0) {
            int i12 = 0;
            while (true) {
                String[] strArr4 = this.f10235f;
                if (i12 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i12];
                if (str2 != null) {
                    codedOutputByteBufferNano.writeString(7, str2);
                }
                i12++;
            }
        }
        String[] strArr5 = this.f10236g;
        if (strArr5 != null && strArr5.length > 0) {
            int i13 = 0;
            while (true) {
                String[] strArr6 = this.f10236g;
                if (i13 >= strArr6.length) {
                    break;
                }
                String str3 = strArr6[i13];
                if (str3 != null) {
                    codedOutputByteBufferNano.writeString(8, str3);
                }
                i13++;
            }
        }
        String[] strArr7 = this.f10237h;
        if (strArr7 != null && strArr7.length > 0) {
            int i14 = 0;
            while (true) {
                String[] strArr8 = this.f10237h;
                if (i14 >= strArr8.length) {
                    break;
                }
                String str4 = strArr8[i14];
                if (str4 != null) {
                    codedOutputByteBufferNano.writeString(9, str4);
                }
                i14++;
            }
        }
        i iVar = this.f10240k;
        if (iVar != null) {
            codedOutputByteBufferNano.writeMessage(10, iVar);
        }
        k[] kVarArr = this.f10241l;
        if (kVarArr != null && kVarArr.length > 0) {
            int i15 = 0;
            while (true) {
                k[] kVarArr2 = this.f10241l;
                if (i15 >= kVarArr2.length) {
                    break;
                }
                k kVar = kVarArr2[i15];
                if (kVar != null) {
                    codedOutputByteBufferNano.writeMessage(11, kVar);
                }
                i15++;
            }
        }
        q qVar = this.f10242m;
        if (qVar != null) {
            codedOutputByteBufferNano.writeMessage(13, qVar);
        }
        o[] oVarArr = this.f10243n;
        if (oVarArr != null && oVarArr.length > 0) {
            int i16 = 0;
            while (true) {
                o[] oVarArr2 = this.f10243n;
                if (i16 >= oVarArr2.length) {
                    break;
                }
                o oVar = oVarArr2[i16];
                if (oVar != null) {
                    codedOutputByteBufferNano.writeMessage(14, oVar);
                }
                i16++;
            }
        }
        if (!this.f10244o.equals("")) {
            codedOutputByteBufferNano.writeString(15, this.f10244o);
        }
        if (!this.f10245p.equals("")) {
            codedOutputByteBufferNano.writeString(16, this.f10245p);
        }
        codedOutputByteBufferNano.writeBool(17, this.f10247r);
        if (!this.f10248s.equals("")) {
            codedOutputByteBufferNano.writeString(19, this.f10248s);
        }
        String[] strArr9 = this.f10249t;
        if (strArr9 != null && strArr9.length > 0) {
            int i17 = 0;
            while (true) {
                String[] strArr10 = this.f10249t;
                if (i17 >= strArr10.length) {
                    break;
                }
                String str5 = strArr10[i17];
                if (str5 != null) {
                    codedOutputByteBufferNano.writeString(20, str5);
                }
                i17++;
            }
        }
        s sVar = this.f10250u;
        if (sVar != null) {
            codedOutputByteBufferNano.writeMessage(21, sVar);
        }
        boolean z10 = this.f10251v;
        if (z10) {
            codedOutputByteBufferNano.writeBool(22, z10);
        }
        m[] mVarArr = this.f10252w;
        if (mVarArr != null && mVarArr.length > 0) {
            int i18 = 0;
            while (true) {
                m[] mVarArr2 = this.f10252w;
                if (i18 >= mVarArr2.length) {
                    break;
                }
                m mVar = mVarArr2[i18];
                if (mVar != null) {
                    codedOutputByteBufferNano.writeMessage(23, mVar);
                }
                i18++;
            }
        }
        p pVar = this.f10253x;
        if (pVar != null) {
            codedOutputByteBufferNano.writeMessage(24, pVar);
        }
        if (!this.f10254y.equals("")) {
            codedOutputByteBufferNano.writeString(25, this.f10254y);
        }
        if (!this.f10255z.equals("")) {
            codedOutputByteBufferNano.writeString(26, this.f10255z);
        }
        if (!this.A.equals("")) {
            codedOutputByteBufferNano.writeString(27, this.A);
        }
        codedOutputByteBufferNano.writeInt64(28, this.C);
        codedOutputByteBufferNano.writeInt64(29, this.D);
        boolean z11 = this.E;
        if (z11) {
            codedOutputByteBufferNano.writeBool(30, z11);
        }
        n nVar = this.F;
        if (nVar != null) {
            codedOutputByteBufferNano.writeMessage(32, nVar);
        }
        j jVar = this.G;
        if (jVar != null) {
            codedOutputByteBufferNano.writeMessage(33, jVar);
        }
        codedOutputByteBufferNano.writeInt32(35, this.H);
        codedOutputByteBufferNano.writeInt32(36, this.I);
        w wVar = this.J;
        if (wVar != null) {
            codedOutputByteBufferNano.writeMessage(37, wVar);
        }
        v vVar = this.K;
        if (vVar != null) {
            codedOutputByteBufferNano.writeMessage(38, vVar);
        }
        v vVar2 = this.L;
        if (vVar2 != null) {
            codedOutputByteBufferNano.writeMessage(39, vVar2);
        }
        t tVar = this.N;
        if (tVar != null) {
            codedOutputByteBufferNano.writeMessage(41, tVar);
        }
        c cVar = this.O;
        if (cVar != null) {
            codedOutputByteBufferNano.writeMessage(42, cVar);
        }
        v vVar3 = this.M;
        if (vVar3 != null) {
            codedOutputByteBufferNano.writeMessage(43, vVar3);
        }
        if (!this.f10246q.equals("")) {
            codedOutputByteBufferNano.writeString(44, this.f10246q);
        }
        f fVar = this.P;
        if (fVar != null) {
            codedOutputByteBufferNano.writeMessage(45, fVar);
        }
        String[] strArr11 = this.f10238i;
        if (strArr11 != null && strArr11.length > 0) {
            int i19 = 0;
            while (true) {
                String[] strArr12 = this.f10238i;
                if (i19 >= strArr12.length) {
                    break;
                }
                String str6 = strArr12[i19];
                if (str6 != null) {
                    codedOutputByteBufferNano.writeString(46, str6);
                }
                i19++;
            }
        }
        String[] strArr13 = this.Q;
        if (strArr13 != null && strArr13.length > 0) {
            int i20 = 0;
            while (true) {
                String[] strArr14 = this.Q;
                if (i20 >= strArr14.length) {
                    break;
                }
                String str7 = strArr14[i20];
                if (str7 != null) {
                    codedOutputByteBufferNano.writeString(47, str7);
                }
                i20++;
            }
        }
        b bVar = this.R;
        if (bVar != null) {
            codedOutputByteBufferNano.writeMessage(48, bVar);
        }
        if (!this.B.equals("")) {
            codedOutputByteBufferNano.writeString(49, this.B);
        }
        a aVar = this.S;
        if (aVar != null) {
            codedOutputByteBufferNano.writeMessage(51, aVar);
        }
        h hVar = this.T;
        if (hVar != null) {
            codedOutputByteBufferNano.writeMessage(52, hVar);
        }
        g gVar = this.U;
        if (gVar != null) {
            codedOutputByteBufferNano.writeMessage(53, gVar);
        }
        d[] dVarArr = this.f10239j;
        if (dVarArr != null && dVarArr.length > 0) {
            int i21 = 0;
            while (true) {
                d[] dVarArr2 = this.f10239j;
                if (i21 >= dVarArr2.length) {
                    break;
                }
                d dVar = dVarArr2[i21];
                if (dVar != null) {
                    codedOutputByteBufferNano.writeMessage(54, dVar);
                }
                i21++;
            }
        }
        r rVar = this.V;
        if (rVar != null) {
            codedOutputByteBufferNano.writeMessage(55, rVar);
        }
        l[] lVarArr = this.W;
        if (lVarArr != null && lVarArr.length > 0) {
            while (true) {
                l[] lVarArr2 = this.W;
                if (i10 >= lVarArr2.length) {
                    break;
                }
                l lVar = lVarArr2[i10];
                if (lVar != null) {
                    codedOutputByteBufferNano.writeMessage(56, lVar);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
