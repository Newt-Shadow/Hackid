package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.mf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0709mf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public int f12880a;

    /* renamed from: b  reason: collision with root package name */
    public q f12881b;

    /* renamed from: c  reason: collision with root package name */
    public o f12882c;

    /* renamed from: d  reason: collision with root package name */
    public p f12883d;

    /* renamed from: e  reason: collision with root package name */
    public b f12884e;

    /* renamed from: f  reason: collision with root package name */
    public h f12885f;

    /* renamed from: com.yandex.metrica.impl.ob.mf$a */
    /* loaded from: classes2.dex */
    public static final class a extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile a[] f12886c;

        /* renamed from: a  reason: collision with root package name */
        public byte[] f12887a;

        /* renamed from: b  reason: collision with root package name */
        public e f12888b;

        public a() {
            a();
        }

        public static a[] b() {
            if (f12886c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f12886c == null) {
                        f12886c = new a[0];
                    }
                }
            }
            return f12886c;
        }

        public a a() {
            this.f12887a = WireFormatNano.EMPTY_BYTES;
            this.f12888b = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!Arrays.equals(this.f12887a, WireFormatNano.EMPTY_BYTES)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f12887a);
            }
            e eVar = this.f12888b;
            if (eVar != null) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, eVar);
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
                        if (this.f12888b == null) {
                            this.f12888b = new e();
                        }
                        codedInputByteBufferNano.readMessage(this.f12888b);
                    }
                } else {
                    this.f12887a = codedInputByteBufferNano.readBytes();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            if (!Arrays.equals(this.f12887a, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(1, this.f12887a);
            }
            e eVar = this.f12888b;
            if (eVar != null) {
                codedOutputByteBufferNano.writeMessage(2, eVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$b */
    /* loaded from: classes2.dex */
    public static final class b extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public c f12889a;

        public b() {
            a();
        }

        public b a() {
            this.f12889a = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            c cVar = this.f12889a;
            if (cVar != null) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(1, cVar);
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
                    if (this.f12889a == null) {
                        this.f12889a = new c();
                    }
                    codedInputByteBufferNano.readMessage(this.f12889a);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            c cVar = this.f12889a;
            if (cVar != null) {
                codedOutputByteBufferNano.writeMessage(1, cVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$c */
    /* loaded from: classes2.dex */
    public static final class c extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public k f12890a;

        /* renamed from: b  reason: collision with root package name */
        public m f12891b;

        /* renamed from: c  reason: collision with root package name */
        public e f12892c;

        /* renamed from: d  reason: collision with root package name */
        public j f12893d;

        public c() {
            a();
        }

        public c a() {
            this.f12890a = null;
            this.f12891b = null;
            this.f12892c = null;
            this.f12893d = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            k kVar = this.f12890a;
            if (kVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, kVar);
            }
            m mVar = this.f12891b;
            if (mVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, mVar);
            }
            e eVar = this.f12892c;
            if (eVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, eVar);
            }
            j jVar = this.f12893d;
            if (jVar != null) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(4, jVar);
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
                            if (readTag != 34) {
                                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                    break;
                                }
                            } else {
                                if (this.f12893d == null) {
                                    this.f12893d = new j();
                                }
                                codedInputByteBufferNano.readMessage(this.f12893d);
                            }
                        } else {
                            if (this.f12892c == null) {
                                this.f12892c = new e();
                            }
                            codedInputByteBufferNano.readMessage(this.f12892c);
                        }
                    } else {
                        if (this.f12891b == null) {
                            this.f12891b = new m();
                        }
                        codedInputByteBufferNano.readMessage(this.f12891b);
                    }
                } else {
                    if (this.f12890a == null) {
                        this.f12890a = new k();
                    }
                    codedInputByteBufferNano.readMessage(this.f12890a);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            k kVar = this.f12890a;
            if (kVar != null) {
                codedOutputByteBufferNano.writeMessage(1, kVar);
            }
            m mVar = this.f12891b;
            if (mVar != null) {
                codedOutputByteBufferNano.writeMessage(2, mVar);
            }
            e eVar = this.f12892c;
            if (eVar != null) {
                codedOutputByteBufferNano.writeMessage(3, eVar);
            }
            j jVar = this.f12893d;
            if (jVar != null) {
                codedOutputByteBufferNano.writeMessage(4, jVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$d */
    /* loaded from: classes2.dex */
    public static final class d extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public byte[][] f12894a;

        public d() {
            a();
        }

        public d a() {
            this.f12894a = WireFormatNano.EMPTY_BYTES_ARRAY;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            byte[][] bArr = this.f12894a;
            if (bArr != null && bArr.length > 0) {
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    byte[][] bArr2 = this.f12894a;
                    if (i10 < bArr2.length) {
                        byte[] bArr3 = bArr2[i10];
                        if (bArr3 != null) {
                            i12++;
                            i11 += CodedOutputByteBufferNano.computeBytesSizeNoTag(bArr3);
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
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                    byte[][] bArr = this.f12894a;
                    if (bArr == null) {
                        length = 0;
                    } else {
                        length = bArr.length;
                    }
                    int i10 = repeatedFieldArrayLength + length;
                    byte[][] bArr2 = new byte[i10];
                    if (length != 0) {
                        System.arraycopy(bArr, 0, bArr2, 0, length);
                    }
                    while (length < i10 - 1) {
                        bArr2[length] = codedInputByteBufferNano.readBytes();
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    bArr2[length] = codedInputByteBufferNano.readBytes();
                    this.f12894a = bArr2;
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            byte[][] bArr = this.f12894a;
            if (bArr != null && bArr.length > 0) {
                int i10 = 0;
                while (true) {
                    byte[][] bArr2 = this.f12894a;
                    if (i10 >= bArr2.length) {
                        break;
                    }
                    byte[] bArr3 = bArr2[i10];
                    if (bArr3 != null) {
                        codedOutputByteBufferNano.writeBytes(1, bArr3);
                    }
                    i10++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$e */
    /* loaded from: classes2.dex */
    public static final class e extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f12895a;

        /* renamed from: b  reason: collision with root package name */
        public int f12896b;

        public e() {
            a();
        }

        public e a() {
            this.f12895a = 0L;
            this.f12896b = 0;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            long j10 = this.f12895a;
            if (j10 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j10);
            }
            int i10 = this.f12896b;
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
                        this.f12896b = codedInputByteBufferNano.readInt32();
                    }
                } else {
                    this.f12895a = codedInputByteBufferNano.readInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            long j10 = this.f12895a;
            if (j10 != 0) {
                codedOutputByteBufferNano.writeInt64(1, j10);
            }
            int i10 = this.f12896b;
            if (i10 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i10);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$f */
    /* loaded from: classes2.dex */
    public static final class f extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f12897a;

        /* renamed from: b  reason: collision with root package name */
        public byte[] f12898b;

        /* renamed from: c  reason: collision with root package name */
        public i f12899c;

        /* renamed from: d  reason: collision with root package name */
        public g[] f12900d;

        /* renamed from: e  reason: collision with root package name */
        public int f12901e;

        public f() {
            a();
        }

        public f a() {
            byte[] bArr = WireFormatNano.EMPTY_BYTES;
            this.f12897a = bArr;
            this.f12898b = bArr;
            this.f12899c = null;
            this.f12900d = g.b();
            this.f12901e = 0;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            byte[] bArr = this.f12897a;
            byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
            if (!Arrays.equals(bArr, bArr2)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f12897a);
            }
            if (!Arrays.equals(this.f12898b, bArr2)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(2, this.f12898b);
            }
            i iVar = this.f12899c;
            if (iVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, iVar);
            }
            g[] gVarArr = this.f12900d;
            if (gVarArr != null && gVarArr.length > 0) {
                int i10 = 0;
                while (true) {
                    g[] gVarArr2 = this.f12900d;
                    if (i10 >= gVarArr2.length) {
                        break;
                    }
                    g gVar = gVarArr2[i10];
                    if (gVar != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, gVar);
                    }
                    i10++;
                }
            }
            int i11 = this.f12901e;
            if (i11 != 0) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeUInt32Size(5, i11);
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
                    if (readTag != 18) {
                        if (readTag != 26) {
                            if (readTag != 34) {
                                if (readTag != 40) {
                                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                        break;
                                    }
                                } else {
                                    this.f12901e = codedInputByteBufferNano.readUInt32();
                                }
                            } else {
                                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 34);
                                g[] gVarArr = this.f12900d;
                                if (gVarArr == null) {
                                    length = 0;
                                } else {
                                    length = gVarArr.length;
                                }
                                int i10 = repeatedFieldArrayLength + length;
                                g[] gVarArr2 = new g[i10];
                                if (length != 0) {
                                    System.arraycopy(gVarArr, 0, gVarArr2, 0, length);
                                }
                                while (length < i10 - 1) {
                                    g gVar = new g();
                                    gVarArr2[length] = gVar;
                                    codedInputByteBufferNano.readMessage(gVar);
                                    codedInputByteBufferNano.readTag();
                                    length++;
                                }
                                g gVar2 = new g();
                                gVarArr2[length] = gVar2;
                                codedInputByteBufferNano.readMessage(gVar2);
                                this.f12900d = gVarArr2;
                            }
                        } else {
                            if (this.f12899c == null) {
                                this.f12899c = new i();
                            }
                            codedInputByteBufferNano.readMessage(this.f12899c);
                        }
                    } else {
                        this.f12898b = codedInputByteBufferNano.readBytes();
                    }
                } else {
                    this.f12897a = codedInputByteBufferNano.readBytes();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            byte[] bArr = this.f12897a;
            byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
            if (!Arrays.equals(bArr, bArr2)) {
                codedOutputByteBufferNano.writeBytes(1, this.f12897a);
            }
            if (!Arrays.equals(this.f12898b, bArr2)) {
                codedOutputByteBufferNano.writeBytes(2, this.f12898b);
            }
            i iVar = this.f12899c;
            if (iVar != null) {
                codedOutputByteBufferNano.writeMessage(3, iVar);
            }
            g[] gVarArr = this.f12900d;
            if (gVarArr != null && gVarArr.length > 0) {
                int i10 = 0;
                while (true) {
                    g[] gVarArr2 = this.f12900d;
                    if (i10 >= gVarArr2.length) {
                        break;
                    }
                    g gVar = gVarArr2[i10];
                    if (gVar != null) {
                        codedOutputByteBufferNano.writeMessage(4, gVar);
                    }
                    i10++;
                }
            }
            int i11 = this.f12901e;
            if (i11 != 0) {
                codedOutputByteBufferNano.writeUInt32(5, i11);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$g */
    /* loaded from: classes2.dex */
    public static final class g extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile g[] f12902c;

        /* renamed from: a  reason: collision with root package name */
        public int f12903a;

        /* renamed from: b  reason: collision with root package name */
        public c f12904b;

        public g() {
            a();
        }

        public static g[] b() {
            if (f12902c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f12902c == null) {
                        f12902c = new g[0];
                    }
                }
            }
            return f12902c;
        }

        public g a() {
            this.f12903a = 0;
            this.f12904b = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            int i10 = this.f12903a;
            if (i10 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(1, i10);
            }
            c cVar = this.f12904b;
            if (cVar != null) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, cVar);
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
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        if (this.f12904b == null) {
                            this.f12904b = new c();
                        }
                        codedInputByteBufferNano.readMessage(this.f12904b);
                    }
                } else {
                    this.f12903a = codedInputByteBufferNano.readUInt32();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            int i10 = this.f12903a;
            if (i10 != 0) {
                codedOutputByteBufferNano.writeUInt32(1, i10);
            }
            c cVar = this.f12904b;
            if (cVar != null) {
                codedOutputByteBufferNano.writeMessage(2, cVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$h */
    /* loaded from: classes2.dex */
    public static final class h extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public f f12905a;

        public h() {
            a();
        }

        public h a() {
            this.f12905a = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            f fVar = this.f12905a;
            if (fVar != null) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(1, fVar);
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
                    if (this.f12905a == null) {
                        this.f12905a = new f();
                    }
                    codedInputByteBufferNano.readMessage(this.f12905a);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            f fVar = this.f12905a;
            if (fVar != null) {
                codedOutputByteBufferNano.writeMessage(1, fVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$i */
    /* loaded from: classes2.dex */
    public static final class i extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public a[] f12906a;

        /* renamed from: b  reason: collision with root package name */
        public int f12907b;

        /* renamed from: com.yandex.metrica.impl.ob.mf$i$a */
        /* loaded from: classes2.dex */
        public static final class a extends MessageNano {

            /* renamed from: c  reason: collision with root package name */
            private static volatile a[] f12908c;

            /* renamed from: a  reason: collision with root package name */
            public byte[] f12909a;

            /* renamed from: b  reason: collision with root package name */
            public byte[] f12910b;

            public a() {
                a();
            }

            public static a[] b() {
                if (f12908c == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (f12908c == null) {
                            f12908c = new a[0];
                        }
                    }
                }
                return f12908c;
            }

            public a a() {
                byte[] bArr = WireFormatNano.EMPTY_BYTES;
                this.f12909a = bArr;
                this.f12910b = bArr;
                this.cachedSize = -1;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.nano.ym.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                byte[] bArr = this.f12909a;
                byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
                if (!Arrays.equals(bArr, bArr2)) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f12909a);
                }
                if (!Arrays.equals(this.f12910b, bArr2)) {
                    return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(2, this.f12910b);
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
                            this.f12910b = codedInputByteBufferNano.readBytes();
                        }
                    } else {
                        this.f12909a = codedInputByteBufferNano.readBytes();
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
                byte[] bArr = this.f12909a;
                byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
                if (!Arrays.equals(bArr, bArr2)) {
                    codedOutputByteBufferNano.writeBytes(1, this.f12909a);
                }
                if (!Arrays.equals(this.f12910b, bArr2)) {
                    codedOutputByteBufferNano.writeBytes(2, this.f12910b);
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        public i() {
            a();
        }

        public i a() {
            this.f12906a = a.b();
            this.f12907b = 0;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            a[] aVarArr = this.f12906a;
            if (aVarArr != null && aVarArr.length > 0) {
                int i10 = 0;
                while (true) {
                    a[] aVarArr2 = this.f12906a;
                    if (i10 >= aVarArr2.length) {
                        break;
                    }
                    a aVar = aVarArr2[i10];
                    if (aVar != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, aVar);
                    }
                    i10++;
                }
            }
            int i11 = this.f12907b;
            if (i11 != 0) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeUInt32Size(2, i11);
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
                    if (readTag != 16) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        this.f12907b = codedInputByteBufferNano.readUInt32();
                    }
                } else {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                    a[] aVarArr = this.f12906a;
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
                    this.f12906a = aVarArr2;
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            a[] aVarArr = this.f12906a;
            if (aVarArr != null && aVarArr.length > 0) {
                int i10 = 0;
                while (true) {
                    a[] aVarArr2 = this.f12906a;
                    if (i10 >= aVarArr2.length) {
                        break;
                    }
                    a aVar = aVarArr2[i10];
                    if (aVar != null) {
                        codedOutputByteBufferNano.writeMessage(1, aVar);
                    }
                    i10++;
                }
            }
            int i11 = this.f12907b;
            if (i11 != 0) {
                codedOutputByteBufferNano.writeUInt32(2, i11);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$j */
    /* loaded from: classes2.dex */
    public static final class j extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public a f12911a;

        /* renamed from: b  reason: collision with root package name */
        public a[] f12912b;

        public j() {
            a();
        }

        public j a() {
            this.f12911a = null;
            this.f12912b = a.b();
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            a aVar = this.f12911a;
            if (aVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, aVar);
            }
            a[] aVarArr = this.f12912b;
            if (aVarArr != null && aVarArr.length > 0) {
                int i10 = 0;
                while (true) {
                    a[] aVarArr2 = this.f12912b;
                    if (i10 >= aVarArr2.length) {
                        break;
                    }
                    a aVar2 = aVarArr2[i10];
                    if (aVar2 != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, aVar2);
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
                    if (readTag != 18) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                        a[] aVarArr = this.f12912b;
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
                        this.f12912b = aVarArr2;
                    }
                } else {
                    if (this.f12911a == null) {
                        this.f12911a = new a();
                    }
                    codedInputByteBufferNano.readMessage(this.f12911a);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            a aVar = this.f12911a;
            if (aVar != null) {
                codedOutputByteBufferNano.writeMessage(1, aVar);
            }
            a[] aVarArr = this.f12912b;
            if (aVarArr != null && aVarArr.length > 0) {
                int i10 = 0;
                while (true) {
                    a[] aVarArr2 = this.f12912b;
                    if (i10 >= aVarArr2.length) {
                        break;
                    }
                    a aVar2 = aVarArr2[i10];
                    if (aVar2 != null) {
                        codedOutputByteBufferNano.writeMessage(2, aVar2);
                    }
                    i10++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$k */
    /* loaded from: classes2.dex */
    public static final class k extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f12913a;

        /* renamed from: b  reason: collision with root package name */
        public byte[] f12914b;

        /* renamed from: c  reason: collision with root package name */
        public d f12915c;

        /* renamed from: d  reason: collision with root package name */
        public i f12916d;

        /* renamed from: e  reason: collision with root package name */
        public j f12917e;

        /* renamed from: f  reason: collision with root package name */
        public j f12918f;

        /* renamed from: g  reason: collision with root package name */
        public l[] f12919g;

        public k() {
            a();
        }

        public k a() {
            byte[] bArr = WireFormatNano.EMPTY_BYTES;
            this.f12913a = bArr;
            this.f12914b = bArr;
            this.f12915c = null;
            this.f12916d = null;
            this.f12917e = null;
            this.f12918f = null;
            this.f12919g = l.b();
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            byte[] bArr = this.f12913a;
            byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
            if (!Arrays.equals(bArr, bArr2)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f12913a);
            }
            if (!Arrays.equals(this.f12914b, bArr2)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(2, this.f12914b);
            }
            d dVar = this.f12915c;
            if (dVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, dVar);
            }
            i iVar = this.f12916d;
            if (iVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, iVar);
            }
            j jVar = this.f12917e;
            if (jVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, jVar);
            }
            j jVar2 = this.f12918f;
            if (jVar2 != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(6, jVar2);
            }
            l[] lVarArr = this.f12919g;
            if (lVarArr != null && lVarArr.length > 0) {
                int i10 = 0;
                while (true) {
                    l[] lVarArr2 = this.f12919g;
                    if (i10 >= lVarArr2.length) {
                        break;
                    }
                    l lVar = lVarArr2[i10];
                    if (lVar != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(7, lVar);
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
                    if (readTag != 18) {
                        if (readTag != 26) {
                            if (readTag != 34) {
                                if (readTag != 42) {
                                    if (readTag != 50) {
                                        if (readTag != 58) {
                                            if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                                break;
                                            }
                                        } else {
                                            int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 58);
                                            l[] lVarArr = this.f12919g;
                                            if (lVarArr == null) {
                                                length = 0;
                                            } else {
                                                length = lVarArr.length;
                                            }
                                            int i10 = repeatedFieldArrayLength + length;
                                            l[] lVarArr2 = new l[i10];
                                            if (length != 0) {
                                                System.arraycopy(lVarArr, 0, lVarArr2, 0, length);
                                            }
                                            while (length < i10 - 1) {
                                                l lVar = new l();
                                                lVarArr2[length] = lVar;
                                                codedInputByteBufferNano.readMessage(lVar);
                                                codedInputByteBufferNano.readTag();
                                                length++;
                                            }
                                            l lVar2 = new l();
                                            lVarArr2[length] = lVar2;
                                            codedInputByteBufferNano.readMessage(lVar2);
                                            this.f12919g = lVarArr2;
                                        }
                                    } else {
                                        if (this.f12918f == null) {
                                            this.f12918f = new j();
                                        }
                                        codedInputByteBufferNano.readMessage(this.f12918f);
                                    }
                                } else {
                                    if (this.f12917e == null) {
                                        this.f12917e = new j();
                                    }
                                    codedInputByteBufferNano.readMessage(this.f12917e);
                                }
                            } else {
                                if (this.f12916d == null) {
                                    this.f12916d = new i();
                                }
                                codedInputByteBufferNano.readMessage(this.f12916d);
                            }
                        } else {
                            if (this.f12915c == null) {
                                this.f12915c = new d();
                            }
                            codedInputByteBufferNano.readMessage(this.f12915c);
                        }
                    } else {
                        this.f12914b = codedInputByteBufferNano.readBytes();
                    }
                } else {
                    this.f12913a = codedInputByteBufferNano.readBytes();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            byte[] bArr = this.f12913a;
            byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
            if (!Arrays.equals(bArr, bArr2)) {
                codedOutputByteBufferNano.writeBytes(1, this.f12913a);
            }
            if (!Arrays.equals(this.f12914b, bArr2)) {
                codedOutputByteBufferNano.writeBytes(2, this.f12914b);
            }
            d dVar = this.f12915c;
            if (dVar != null) {
                codedOutputByteBufferNano.writeMessage(3, dVar);
            }
            i iVar = this.f12916d;
            if (iVar != null) {
                codedOutputByteBufferNano.writeMessage(4, iVar);
            }
            j jVar = this.f12917e;
            if (jVar != null) {
                codedOutputByteBufferNano.writeMessage(5, jVar);
            }
            j jVar2 = this.f12918f;
            if (jVar2 != null) {
                codedOutputByteBufferNano.writeMessage(6, jVar2);
            }
            l[] lVarArr = this.f12919g;
            if (lVarArr != null && lVarArr.length > 0) {
                int i10 = 0;
                while (true) {
                    l[] lVarArr2 = this.f12919g;
                    if (i10 >= lVarArr2.length) {
                        break;
                    }
                    l lVar = lVarArr2[i10];
                    if (lVar != null) {
                        codedOutputByteBufferNano.writeMessage(7, lVar);
                    }
                    i10++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$l */
    /* loaded from: classes2.dex */
    public static final class l extends MessageNano {

        /* renamed from: b  reason: collision with root package name */
        private static volatile l[] f12920b;

        /* renamed from: a  reason: collision with root package name */
        public byte[] f12921a;

        public l() {
            a();
        }

        public static l[] b() {
            if (f12920b == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f12920b == null) {
                        f12920b = new l[0];
                    }
                }
            }
            return f12920b;
        }

        public l a() {
            this.f12921a = WireFormatNano.EMPTY_BYTES;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!Arrays.equals(this.f12921a, WireFormatNano.EMPTY_BYTES)) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(1, this.f12921a);
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
                    this.f12921a = codedInputByteBufferNano.readBytes();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            if (!Arrays.equals(this.f12921a, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(1, this.f12921a);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$m */
    /* loaded from: classes2.dex */
    public static final class m extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f12922a;

        /* renamed from: b  reason: collision with root package name */
        public byte[] f12923b;

        /* renamed from: c  reason: collision with root package name */
        public n f12924c;

        public m() {
            a();
        }

        public m a() {
            byte[] bArr = WireFormatNano.EMPTY_BYTES;
            this.f12922a = bArr;
            this.f12923b = bArr;
            this.f12924c = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            byte[] bArr = this.f12922a;
            byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
            if (!Arrays.equals(bArr, bArr2)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f12922a);
            }
            if (!Arrays.equals(this.f12923b, bArr2)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(2, this.f12923b);
            }
            n nVar = this.f12924c;
            if (nVar != null) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(3, nVar);
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
                            if (this.f12924c == null) {
                                this.f12924c = new n();
                            }
                            codedInputByteBufferNano.readMessage(this.f12924c);
                        }
                    } else {
                        this.f12923b = codedInputByteBufferNano.readBytes();
                    }
                } else {
                    this.f12922a = codedInputByteBufferNano.readBytes();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            byte[] bArr = this.f12922a;
            byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
            if (!Arrays.equals(bArr, bArr2)) {
                codedOutputByteBufferNano.writeBytes(1, this.f12922a);
            }
            if (!Arrays.equals(this.f12923b, bArr2)) {
                codedOutputByteBufferNano.writeBytes(2, this.f12923b);
            }
            n nVar = this.f12924c;
            if (nVar != null) {
                codedOutputByteBufferNano.writeMessage(3, nVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$n */
    /* loaded from: classes2.dex */
    public static final class n extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f12925a;

        /* renamed from: b  reason: collision with root package name */
        public d f12926b;

        /* renamed from: c  reason: collision with root package name */
        public byte[] f12927c;

        /* renamed from: d  reason: collision with root package name */
        public i f12928d;

        public n() {
            a();
        }

        public n a() {
            byte[] bArr = WireFormatNano.EMPTY_BYTES;
            this.f12925a = bArr;
            this.f12926b = null;
            this.f12927c = bArr;
            this.f12928d = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            byte[] bArr = this.f12925a;
            byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
            if (!Arrays.equals(bArr, bArr2)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f12925a);
            }
            d dVar = this.f12926b;
            if (dVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, dVar);
            }
            if (!Arrays.equals(this.f12927c, bArr2)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(3, this.f12927c);
            }
            i iVar = this.f12928d;
            if (iVar != null) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(4, iVar);
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
                            if (readTag != 34) {
                                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                    break;
                                }
                            } else {
                                if (this.f12928d == null) {
                                    this.f12928d = new i();
                                }
                                codedInputByteBufferNano.readMessage(this.f12928d);
                            }
                        } else {
                            this.f12927c = codedInputByteBufferNano.readBytes();
                        }
                    } else {
                        if (this.f12926b == null) {
                            this.f12926b = new d();
                        }
                        codedInputByteBufferNano.readMessage(this.f12926b);
                    }
                } else {
                    this.f12925a = codedInputByteBufferNano.readBytes();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            byte[] bArr = this.f12925a;
            byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
            if (!Arrays.equals(bArr, bArr2)) {
                codedOutputByteBufferNano.writeBytes(1, this.f12925a);
            }
            d dVar = this.f12926b;
            if (dVar != null) {
                codedOutputByteBufferNano.writeMessage(2, dVar);
            }
            if (!Arrays.equals(this.f12927c, bArr2)) {
                codedOutputByteBufferNano.writeBytes(3, this.f12927c);
            }
            i iVar = this.f12928d;
            if (iVar != null) {
                codedOutputByteBufferNano.writeMessage(4, iVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$o */
    /* loaded from: classes2.dex */
    public static final class o extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public k f12929a;

        /* renamed from: b  reason: collision with root package name */
        public n f12930b;

        public o() {
            a();
        }

        public o a() {
            this.f12929a = null;
            this.f12930b = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            k kVar = this.f12929a;
            if (kVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, kVar);
            }
            n nVar = this.f12930b;
            if (nVar != null) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, nVar);
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
                        if (this.f12930b == null) {
                            this.f12930b = new n();
                        }
                        codedInputByteBufferNano.readMessage(this.f12930b);
                    }
                } else {
                    if (this.f12929a == null) {
                        this.f12929a = new k();
                    }
                    codedInputByteBufferNano.readMessage(this.f12929a);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            k kVar = this.f12929a;
            if (kVar != null) {
                codedOutputByteBufferNano.writeMessage(1, kVar);
            }
            n nVar = this.f12930b;
            if (nVar != null) {
                codedOutputByteBufferNano.writeMessage(2, nVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$p */
    /* loaded from: classes2.dex */
    public static final class p extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public k f12931a;

        /* renamed from: b  reason: collision with root package name */
        public m f12932b;

        public p() {
            a();
        }

        public p a() {
            this.f12931a = null;
            this.f12932b = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            k kVar = this.f12931a;
            if (kVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, kVar);
            }
            m mVar = this.f12932b;
            if (mVar != null) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, mVar);
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
                        if (this.f12932b == null) {
                            this.f12932b = new m();
                        }
                        codedInputByteBufferNano.readMessage(this.f12932b);
                    }
                } else {
                    if (this.f12931a == null) {
                        this.f12931a = new k();
                    }
                    codedInputByteBufferNano.readMessage(this.f12931a);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            k kVar = this.f12931a;
            if (kVar != null) {
                codedOutputByteBufferNano.writeMessage(1, kVar);
            }
            m mVar = this.f12932b;
            if (mVar != null) {
                codedOutputByteBufferNano.writeMessage(2, mVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$q */
    /* loaded from: classes2.dex */
    public static final class q extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public n f12933a;

        public q() {
            a();
        }

        public q a() {
            this.f12933a = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            n nVar = this.f12933a;
            if (nVar != null) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(1, nVar);
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
                    if (this.f12933a == null) {
                        this.f12933a = new n();
                    }
                    codedInputByteBufferNano.readMessage(this.f12933a);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            n nVar = this.f12933a;
            if (nVar != null) {
                codedOutputByteBufferNano.writeMessage(1, nVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C0709mf() {
        a();
    }

    public C0709mf a() {
        this.f12880a = 0;
        this.f12881b = null;
        this.f12882c = null;
        this.f12883d = null;
        this.f12884e = null;
        this.f12885f = null;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        int i10 = this.f12880a;
        if (i10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i10);
        }
        q qVar = this.f12881b;
        if (qVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, qVar);
        }
        o oVar = this.f12882c;
        if (oVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, oVar);
        }
        p pVar = this.f12883d;
        if (pVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, pVar);
        }
        b bVar = this.f12884e;
        if (bVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, bVar);
        }
        h hVar = this.f12885f;
        if (hVar != null) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(6, hVar);
        }
        return computeSerializedSize;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag != 0) {
                if (readTag != 8) {
                    if (readTag != 18) {
                        if (readTag != 26) {
                            if (readTag != 34) {
                                if (readTag != 42) {
                                    if (readTag != 50) {
                                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                        }
                                    } else {
                                        if (this.f12885f == null) {
                                            this.f12885f = new h();
                                        }
                                        codedInputByteBufferNano.readMessage(this.f12885f);
                                    }
                                } else {
                                    if (this.f12884e == null) {
                                        this.f12884e = new b();
                                    }
                                    codedInputByteBufferNano.readMessage(this.f12884e);
                                }
                            } else {
                                if (this.f12883d == null) {
                                    this.f12883d = new p();
                                }
                                codedInputByteBufferNano.readMessage(this.f12883d);
                            }
                        } else {
                            if (this.f12882c == null) {
                                this.f12882c = new o();
                            }
                            codedInputByteBufferNano.readMessage(this.f12882c);
                        }
                    } else {
                        if (this.f12881b == null) {
                            this.f12881b = new q();
                        }
                        codedInputByteBufferNano.readMessage(this.f12881b);
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
                            this.f12880a = readInt32;
                            continue;
                    }
                }
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        int i10 = this.f12880a;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeInt32(1, i10);
        }
        q qVar = this.f12881b;
        if (qVar != null) {
            codedOutputByteBufferNano.writeMessage(2, qVar);
        }
        o oVar = this.f12882c;
        if (oVar != null) {
            codedOutputByteBufferNano.writeMessage(3, oVar);
        }
        p pVar = this.f12883d;
        if (pVar != null) {
            codedOutputByteBufferNano.writeMessage(4, pVar);
        }
        b bVar = this.f12884e;
        if (bVar != null) {
            codedOutputByteBufferNano.writeMessage(5, bVar);
        }
        h hVar = this.f12885f;
        if (hVar != null) {
            codedOutputByteBufferNano.writeMessage(6, hVar);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
