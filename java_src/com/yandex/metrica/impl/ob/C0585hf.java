package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.hf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0585hf extends MessageNano {

    /* renamed from: l  reason: collision with root package name */
    private static byte[] f12529l;

    /* renamed from: m  reason: collision with root package name */
    private static volatile boolean f12530m;

    /* renamed from: a  reason: collision with root package name */
    public C0684lf f12531a;

    /* renamed from: b  reason: collision with root package name */
    public C0485df f12532b;

    /* renamed from: c  reason: collision with root package name */
    public String f12533c;

    /* renamed from: d  reason: collision with root package name */
    public int f12534d;

    /* renamed from: e  reason: collision with root package name */
    public C0634jf[] f12535e;

    /* renamed from: f  reason: collision with root package name */
    public String f12536f;

    /* renamed from: g  reason: collision with root package name */
    public int f12537g;

    /* renamed from: h  reason: collision with root package name */
    public a f12538h;

    /* renamed from: i  reason: collision with root package name */
    public byte[] f12539i;

    /* renamed from: j  reason: collision with root package name */
    public byte[] f12540j;

    /* renamed from: k  reason: collision with root package name */
    public C0535ff[] f12541k;

    /* renamed from: com.yandex.metrica.impl.ob.hf$a */
    /* loaded from: classes2.dex */
    public static final class a extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public String f12542a;

        public a() {
            a();
        }

        public a a() {
            this.f12542a = "";
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f12542a);
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
                    this.f12542a = codedInputByteBufferNano.readString();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeString(1, this.f12542a);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C0585hf() {
        if (!f12530m) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (!f12530m) {
                    f12529l = InternalNano.bytesDefaultValue("JVM");
                    f12530m = true;
                }
            }
        }
        a();
    }

    public C0585hf a() {
        this.f12531a = null;
        this.f12532b = null;
        this.f12533c = "";
        this.f12534d = -1;
        this.f12535e = C0634jf.b();
        this.f12536f = "";
        this.f12537g = 0;
        this.f12538h = null;
        this.f12539i = (byte[]) f12529l.clone();
        this.f12540j = WireFormatNano.EMPTY_BYTES;
        this.f12541k = C0535ff.b();
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C0684lf c0684lf = this.f12531a;
        if (c0684lf != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c0684lf);
        }
        C0485df c0485df = this.f12532b;
        if (c0485df != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c0485df);
        }
        if (!this.f12533c.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(3, this.f12533c);
        }
        int i10 = this.f12534d;
        if (i10 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i10);
        }
        C0634jf[] c0634jfArr = this.f12535e;
        int i11 = 0;
        if (c0634jfArr != null && c0634jfArr.length > 0) {
            int i12 = 0;
            while (true) {
                C0634jf[] c0634jfArr2 = this.f12535e;
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
        if (!this.f12536f.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(6, this.f12536f);
        }
        int i13 = this.f12537g;
        if (i13 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, i13);
        }
        a aVar = this.f12538h;
        if (aVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(8, aVar);
        }
        if (!Arrays.equals(this.f12539i, f12529l)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(9, this.f12539i);
        }
        if (!Arrays.equals(this.f12540j, WireFormatNano.EMPTY_BYTES)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(10, this.f12540j);
        }
        C0535ff[] c0535ffArr = this.f12541k;
        if (c0535ffArr != null && c0535ffArr.length > 0) {
            while (true) {
                C0535ff[] c0535ffArr2 = this.f12541k;
                if (i11 >= c0535ffArr2.length) {
                    break;
                }
                C0535ff c0535ff = c0535ffArr2[i11];
                if (c0535ff != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(11, c0535ff);
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
                    if (this.f12531a == null) {
                        this.f12531a = new C0684lf();
                    }
                    codedInputByteBufferNano.readMessage(this.f12531a);
                    break;
                case 18:
                    if (this.f12532b == null) {
                        this.f12532b = new C0485df();
                    }
                    codedInputByteBufferNano.readMessage(this.f12532b);
                    break;
                case 26:
                    this.f12533c = codedInputByteBufferNano.readString();
                    break;
                case Build.API_LEVELS.API_32 /* 32 */:
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 != -1 && readInt32 != 0 && readInt32 != 1) {
                        break;
                    } else {
                        this.f12534d = readInt32;
                        break;
                    }
                case C1415p9.M /* 42 */:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 42);
                    C0634jf[] c0634jfArr = this.f12535e;
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
                    this.f12535e = c0634jfArr2;
                    break;
                case 50:
                    this.f12536f = codedInputByteBufferNano.readString();
                    break;
                case 56:
                    int readInt322 = codedInputByteBufferNano.readInt32();
                    if (readInt322 != 0 && readInt322 != 1) {
                        break;
                    } else {
                        this.f12537g = readInt322;
                        break;
                    }
                case 66:
                    if (this.f12538h == null) {
                        this.f12538h = new a();
                    }
                    codedInputByteBufferNano.readMessage(this.f12538h);
                    break;
                case 74:
                    this.f12539i = codedInputByteBufferNano.readBytes();
                    break;
                case 82:
                    this.f12540j = codedInputByteBufferNano.readBytes();
                    break;
                case 90:
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 90);
                    C0535ff[] c0535ffArr = this.f12541k;
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
                    this.f12541k = c0535ffArr2;
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
        C0684lf c0684lf = this.f12531a;
        if (c0684lf != null) {
            codedOutputByteBufferNano.writeMessage(1, c0684lf);
        }
        C0485df c0485df = this.f12532b;
        if (c0485df != null) {
            codedOutputByteBufferNano.writeMessage(2, c0485df);
        }
        if (!this.f12533c.equals("")) {
            codedOutputByteBufferNano.writeString(3, this.f12533c);
        }
        int i10 = this.f12534d;
        if (i10 != -1) {
            codedOutputByteBufferNano.writeInt32(4, i10);
        }
        C0634jf[] c0634jfArr = this.f12535e;
        int i11 = 0;
        if (c0634jfArr != null && c0634jfArr.length > 0) {
            int i12 = 0;
            while (true) {
                C0634jf[] c0634jfArr2 = this.f12535e;
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
        if (!this.f12536f.equals("")) {
            codedOutputByteBufferNano.writeString(6, this.f12536f);
        }
        int i13 = this.f12537g;
        if (i13 != 0) {
            codedOutputByteBufferNano.writeInt32(7, i13);
        }
        a aVar = this.f12538h;
        if (aVar != null) {
            codedOutputByteBufferNano.writeMessage(8, aVar);
        }
        if (!Arrays.equals(this.f12539i, f12529l)) {
            codedOutputByteBufferNano.writeBytes(9, this.f12539i);
        }
        if (!Arrays.equals(this.f12540j, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(10, this.f12540j);
        }
        C0535ff[] c0535ffArr = this.f12541k;
        if (c0535ffArr != null && c0535ffArr.length > 0) {
            while (true) {
                C0535ff[] c0535ffArr2 = this.f12541k;
                if (i11 >= c0535ffArr2.length) {
                    break;
                }
                C0535ff c0535ff = c0535ffArr2[i11];
                if (c0535ff != null) {
                    codedOutputByteBufferNano.writeMessage(11, c0535ff);
                }
                i11++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
