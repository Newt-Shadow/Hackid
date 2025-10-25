package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.vf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0927vf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public a[] f13825a;

    /* renamed from: com.yandex.metrica.impl.ob.vf$a */
    /* loaded from: classes2.dex */
    public static final class a extends MessageNano {

        /* renamed from: e  reason: collision with root package name */
        private static volatile a[] f13826e;

        /* renamed from: a  reason: collision with root package name */
        public byte[] f13827a;

        /* renamed from: b  reason: collision with root package name */
        public int f13828b;

        /* renamed from: c  reason: collision with root package name */
        public b f13829c;

        /* renamed from: d  reason: collision with root package name */
        public c f13830d;

        public a() {
            a();
        }

        public static a[] b() {
            if (f13826e == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f13826e == null) {
                        f13826e = new a[0];
                    }
                }
            }
            return f13826e;
        }

        public a a() {
            this.f13827a = WireFormatNano.EMPTY_BYTES;
            this.f13828b = 0;
            this.f13829c = null;
            this.f13830d = null;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeBytesSize(1, this.f13827a) + CodedOutputByteBufferNano.computeInt32Size(2, this.f13828b);
            b bVar = this.f13829c;
            if (bVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, bVar);
            }
            c cVar = this.f13830d;
            if (cVar != null) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(4, cVar);
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
                        if (readTag != 26) {
                            if (readTag != 34) {
                                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                    break;
                                }
                            } else {
                                if (this.f13830d == null) {
                                    this.f13830d = new c();
                                }
                                codedInputByteBufferNano.readMessage(this.f13830d);
                            }
                        } else {
                            if (this.f13829c == null) {
                                this.f13829c = new b();
                            }
                            codedInputByteBufferNano.readMessage(this.f13829c);
                        }
                    } else {
                        int readInt32 = codedInputByteBufferNano.readInt32();
                        if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                            this.f13828b = readInt32;
                        }
                    }
                } else {
                    this.f13827a = codedInputByteBufferNano.readBytes();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            codedOutputByteBufferNano.writeBytes(1, this.f13827a);
            codedOutputByteBufferNano.writeInt32(2, this.f13828b);
            b bVar = this.f13829c;
            if (bVar != null) {
                codedOutputByteBufferNano.writeMessage(3, bVar);
            }
            c cVar = this.f13830d;
            if (cVar != null) {
                codedOutputByteBufferNano.writeMessage(4, cVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.vf$b */
    /* loaded from: classes2.dex */
    public static final class b extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public boolean f13831a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f13832b;

        public b() {
            a();
        }

        public b a() {
            this.f13831a = false;
            this.f13832b = false;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            boolean z10 = this.f13831a;
            if (z10) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(1, z10);
            }
            boolean z11 = this.f13832b;
            if (z11) {
                return computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(2, z11);
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
                        this.f13832b = codedInputByteBufferNano.readBool();
                    }
                } else {
                    this.f13831a = codedInputByteBufferNano.readBool();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            boolean z10 = this.f13831a;
            if (z10) {
                codedOutputByteBufferNano.writeBool(1, z10);
            }
            boolean z11 = this.f13832b;
            if (z11) {
                codedOutputByteBufferNano.writeBool(2, z11);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.vf$c */
    /* loaded from: classes2.dex */
    public static final class c extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f13833a;

        /* renamed from: b  reason: collision with root package name */
        public double f13834b;

        /* renamed from: c  reason: collision with root package name */
        public double f13835c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f13836d;

        public c() {
            a();
        }

        public c a() {
            this.f13833a = WireFormatNano.EMPTY_BYTES;
            this.f13834b = 0.0d;
            this.f13835c = 0.0d;
            this.f13836d = false;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!Arrays.equals(this.f13833a, WireFormatNano.EMPTY_BYTES)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f13833a);
            }
            if (Double.doubleToLongBits(this.f13834b) != Double.doubleToLongBits(0.0d)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeDoubleSize(2, this.f13834b);
            }
            if (Double.doubleToLongBits(this.f13835c) != Double.doubleToLongBits(0.0d)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeDoubleSize(3, this.f13835c);
            }
            boolean z10 = this.f13836d;
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
                } else if (readTag != 10) {
                    if (readTag != 17) {
                        if (readTag != 25) {
                            if (readTag != 32) {
                                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                    break;
                                }
                            } else {
                                this.f13836d = codedInputByteBufferNano.readBool();
                            }
                        } else {
                            this.f13835c = codedInputByteBufferNano.readDouble();
                        }
                    } else {
                        this.f13834b = codedInputByteBufferNano.readDouble();
                    }
                } else {
                    this.f13833a = codedInputByteBufferNano.readBytes();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
            if (!Arrays.equals(this.f13833a, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(1, this.f13833a);
            }
            if (Double.doubleToLongBits(this.f13834b) != Double.doubleToLongBits(0.0d)) {
                codedOutputByteBufferNano.writeDouble(2, this.f13834b);
            }
            if (Double.doubleToLongBits(this.f13835c) != Double.doubleToLongBits(0.0d)) {
                codedOutputByteBufferNano.writeDouble(3, this.f13835c);
            }
            boolean z10 = this.f13836d;
            if (z10) {
                codedOutputByteBufferNano.writeBool(4, z10);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C0927vf() {
        a();
    }

    public C0927vf a() {
        this.f13825a = a.b();
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        a[] aVarArr = this.f13825a;
        if (aVarArr != null && aVarArr.length > 0) {
            int i10 = 0;
            while (true) {
                a[] aVarArr2 = this.f13825a;
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
                a[] aVarArr = this.f13825a;
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
                this.f13825a = aVarArr2;
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        a[] aVarArr = this.f13825a;
        if (aVarArr != null && aVarArr.length > 0) {
            int i10 = 0;
            while (true) {
                a[] aVarArr2 = this.f13825a;
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
        super.writeTo(codedOutputByteBufferNano);
    }
}
