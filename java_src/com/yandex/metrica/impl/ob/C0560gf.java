package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.gf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0560gf extends MessageNano {

    /* renamed from: k  reason: collision with root package name */
    private static byte[] f12461k;

    /* renamed from: l  reason: collision with root package name */
    private static volatile boolean f12462l;

    /* renamed from: a  reason: collision with root package name */
    public C0684lf f12463a;

    /* renamed from: b  reason: collision with root package name */
    public C0485df f12464b;

    /* renamed from: c  reason: collision with root package name */
    public String f12465c;

    /* renamed from: d  reason: collision with root package name */
    public int f12466d;

    /* renamed from: e  reason: collision with root package name */
    public C0634jf[] f12467e;

    /* renamed from: f  reason: collision with root package name */
    public int f12468f;

    /* renamed from: g  reason: collision with root package name */
    public a f12469g;

    /* renamed from: h  reason: collision with root package name */
    public byte[] f12470h;

    /* renamed from: i  reason: collision with root package name */
    public byte[] f12471i;

    /* renamed from: j  reason: collision with root package name */
    public C0535ff[] f12472j;

    /* renamed from: com.yandex.metrica.impl.ob.gf$a */
    /* loaded from: classes2.dex */
    public static final class a extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f12473a;

        /* renamed from: b  reason: collision with root package name */
        public Cif f12474b;

        public a() {
            a();
        }

        public a a() {
            this.f12473a = WireFormatNano.EMPTY_BYTES;
            this.f12474b = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!Arrays.equals(this.f12473a, WireFormatNano.EMPTY_BYTES)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f12473a);
            }
            Cif cif = this.f12474b;
            if (cif != null) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, cif);
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
                        if (this.f12474b == null) {
                            this.f12474b = new Cif();
                        }
                        codedInputByteBufferNano.readMessage(this.f12474b);
                    }
                } else {
                    this.f12473a = codedInputByteBufferNano.readBytes();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            if (!Arrays.equals(this.f12473a, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(1, this.f12473a);
            }
            Cif cif = this.f12474b;
            if (cif != null) {
                codedOutputByteBufferNano.writeMessage(2, cif);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C0560gf() {
        if (!f12462l) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (!f12462l) {
                    f12461k = InternalNano.bytesDefaultValue("JVM");
                    f12462l = true;
                }
            }
        }
        a();
    }

    public C0560gf a() {
        this.f12463a = null;
        this.f12464b = null;
        this.f12465c = "";
        this.f12466d = -1;
        this.f12467e = C0634jf.b();
        this.f12468f = 0;
        this.f12469g = null;
        this.f12470h = (byte[]) f12461k.clone();
        this.f12471i = WireFormatNano.EMPTY_BYTES;
        this.f12472j = C0535ff.b();
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C0684lf c0684lf = this.f12463a;
        if (c0684lf != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c0684lf);
        }
        C0485df c0485df = this.f12464b;
        if (c0485df != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c0485df);
        }
        if (!this.f12465c.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(3, this.f12465c);
        }
        int i10 = this.f12466d;
        if (i10 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i10);
        }
        C0634jf[] c0634jfArr = this.f12467e;
        int i11 = 0;
        if (c0634jfArr != null && c0634jfArr.length > 0) {
            int i12 = 0;
            while (true) {
                C0634jf[] c0634jfArr2 = this.f12467e;
                if (i12 >= c0634jfArr2.length) {
                    break;
                }
                C0634jf c0634jf = c0634jfArr2[i12];
                if (c0634jf != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, c0634jf);
                }
                i12++;
            }
        }
        int i13 = this.f12468f;
        if (i13 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, i13);
        }
        a aVar = this.f12469g;
        if (aVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(7, aVar);
        }
        if (!Arrays.equals(this.f12470h, f12461k)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(8, this.f12470h);
        }
        if (!Arrays.equals(this.f12471i, WireFormatNano.EMPTY_BYTES)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(9, this.f12471i);
        }
        C0535ff[] c0535ffArr = this.f12472j;
        if (c0535ffArr != null && c0535ffArr.length > 0) {
            while (true) {
                C0535ff[] c0535ffArr2 = this.f12472j;
                if (i11 >= c0535ffArr2.length) {
                    break;
                }
                C0535ff c0535ff = c0535ffArr2[i11];
                if (c0535ff != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(10, c0535ff);
                }
                i11++;
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
            switch (readTag) {
                case 0:
                    break;
                case 10:
                    if (this.f12463a == null) {
                        this.f12463a = new C0684lf();
                    }
                    codedInputByteBufferNano.readMessage(this.f12463a);
                    break;
                case 18:
                    if (this.f12464b == null) {
                        this.f12464b = new C0485df();
                    }
                    codedInputByteBufferNano.readMessage(this.f12464b);
                    break;
                case 26:
                    this.f12465c = codedInputByteBufferNano.readString();
                    break;
                case Build.API_LEVELS.API_32 /* 32 */:
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 != -1 && readInt32 != 0 && readInt32 != 1) {
                        break;
                    } else {
                        this.f12466d = readInt32;
                        break;
                    }
                case C1415p9.M /* 42 */:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 42);
                    C0634jf[] c0634jfArr = this.f12467e;
                    if (c0634jfArr == null) {
                        length = 0;
                    } else {
                        length = c0634jfArr.length;
                    }
                    int i10 = repeatedFieldArrayLength + length;
                    C0634jf[] c0634jfArr2 = new C0634jf[i10];
                    if (length != 0) {
                        System.arraycopy(c0634jfArr, 0, c0634jfArr2, 0, length);
                    }
                    while (length < i10 - 1) {
                        C0634jf c0634jf = new C0634jf();
                        c0634jfArr2[length] = c0634jf;
                        codedInputByteBufferNano.readMessage(c0634jf);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    C0634jf c0634jf2 = new C0634jf();
                    c0634jfArr2[length] = c0634jf2;
                    codedInputByteBufferNano.readMessage(c0634jf2);
                    this.f12467e = c0634jfArr2;
                    break;
                case 48:
                    int readInt322 = codedInputByteBufferNano.readInt32();
                    if (readInt322 != 0 && readInt322 != 1) {
                        break;
                    } else {
                        this.f12468f = readInt322;
                        break;
                    }
                case 58:
                    if (this.f12469g == null) {
                        this.f12469g = new a();
                    }
                    codedInputByteBufferNano.readMessage(this.f12469g);
                    break;
                case 66:
                    this.f12470h = codedInputByteBufferNano.readBytes();
                    break;
                case 74:
                    this.f12471i = codedInputByteBufferNano.readBytes();
                    break;
                case 82:
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 82);
                    C0535ff[] c0535ffArr = this.f12472j;
                    if (c0535ffArr == null) {
                        length2 = 0;
                    } else {
                        length2 = c0535ffArr.length;
                    }
                    int i11 = repeatedFieldArrayLength2 + length2;
                    C0535ff[] c0535ffArr2 = new C0535ff[i11];
                    if (length2 != 0) {
                        System.arraycopy(c0535ffArr, 0, c0535ffArr2, 0, length2);
                    }
                    while (length2 < i11 - 1) {
                        C0535ff c0535ff = new C0535ff();
                        c0535ffArr2[length2] = c0535ff;
                        codedInputByteBufferNano.readMessage(c0535ff);
                        codedInputByteBufferNano.readTag();
                        length2++;
                    }
                    C0535ff c0535ff2 = new C0535ff();
                    c0535ffArr2[length2] = c0535ff2;
                    codedInputByteBufferNano.readMessage(c0535ff2);
                    this.f12472j = c0535ffArr2;
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
        C0684lf c0684lf = this.f12463a;
        if (c0684lf != null) {
            codedOutputByteBufferNano.writeMessage(1, c0684lf);
        }
        C0485df c0485df = this.f12464b;
        if (c0485df != null) {
            codedOutputByteBufferNano.writeMessage(2, c0485df);
        }
        if (!this.f12465c.equals("")) {
            codedOutputByteBufferNano.writeString(3, this.f12465c);
        }
        int i10 = this.f12466d;
        if (i10 != -1) {
            codedOutputByteBufferNano.writeInt32(4, i10);
        }
        C0634jf[] c0634jfArr = this.f12467e;
        int i11 = 0;
        if (c0634jfArr != null && c0634jfArr.length > 0) {
            int i12 = 0;
            while (true) {
                C0634jf[] c0634jfArr2 = this.f12467e;
                if (i12 >= c0634jfArr2.length) {
                    break;
                }
                C0634jf c0634jf = c0634jfArr2[i12];
                if (c0634jf != null) {
                    codedOutputByteBufferNano.writeMessage(5, c0634jf);
                }
                i12++;
            }
        }
        int i13 = this.f12468f;
        if (i13 != 0) {
            codedOutputByteBufferNano.writeInt32(6, i13);
        }
        a aVar = this.f12469g;
        if (aVar != null) {
            codedOutputByteBufferNano.writeMessage(7, aVar);
        }
        if (!Arrays.equals(this.f12470h, f12461k)) {
            codedOutputByteBufferNano.writeBytes(8, this.f12470h);
        }
        if (!Arrays.equals(this.f12471i, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(9, this.f12471i);
        }
        C0535ff[] c0535ffArr = this.f12472j;
        if (c0535ffArr != null && c0535ffArr.length > 0) {
            while (true) {
                C0535ff[] c0535ffArr2 = this.f12472j;
                if (i11 >= c0535ffArr2.length) {
                    break;
                }
                C0535ff c0535ff = c0535ffArr2[i11];
                if (c0535ff != null) {
                    codedOutputByteBufferNano.writeMessage(10, c0535ff);
                }
                i11++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
