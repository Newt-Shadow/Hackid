package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
/* renamed from: com.yandex.metrica.impl.ob.kf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0659kf extends MessageNano {

    /* renamed from: g  reason: collision with root package name */
    private static volatile C0659kf[] f12743g;

    /* renamed from: a  reason: collision with root package name */
    public String f12744a;

    /* renamed from: b  reason: collision with root package name */
    public int f12745b;

    /* renamed from: c  reason: collision with root package name */
    public long f12746c;

    /* renamed from: d  reason: collision with root package name */
    public String f12747d;

    /* renamed from: e  reason: collision with root package name */
    public int f12748e;

    /* renamed from: f  reason: collision with root package name */
    public C0634jf[] f12749f;

    public C0659kf() {
        a();
    }

    public static C0659kf[] b() {
        if (f12743g == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f12743g == null) {
                    f12743g = new C0659kf[0];
                }
            }
        }
        return f12743g;
    }

    public C0659kf a() {
        this.f12744a = "";
        this.f12745b = 0;
        this.f12746c = 0L;
        this.f12747d = "";
        this.f12748e = 0;
        this.f12749f = C0634jf.b();
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f12744a) + CodedOutputByteBufferNano.computeSInt32Size(2, this.f12745b) + CodedOutputByteBufferNano.computeSInt64Size(3, this.f12746c);
        if (!this.f12747d.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(4, this.f12747d);
        }
        int i10 = this.f12748e;
        if (i10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(5, i10);
        }
        C0634jf[] c0634jfArr = this.f12749f;
        if (c0634jfArr != null && c0634jfArr.length > 0) {
            int i11 = 0;
            while (true) {
                C0634jf[] c0634jfArr2 = this.f12749f;
                if (i11 >= c0634jfArr2.length) {
                    break;
                }
                C0634jf c0634jf = c0634jfArr2[i11];
                if (c0634jf != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(6, c0634jf);
                }
                i11++;
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
                if (readTag != 16) {
                    if (readTag != 24) {
                        if (readTag != 34) {
                            if (readTag != 40) {
                                if (readTag != 50) {
                                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                        break;
                                    }
                                } else {
                                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 50);
                                    C0634jf[] c0634jfArr = this.f12749f;
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
                                    this.f12749f = c0634jfArr2;
                                }
                            } else {
                                this.f12748e = codedInputByteBufferNano.readUInt32();
                            }
                        } else {
                            this.f12747d = codedInputByteBufferNano.readString();
                        }
                    } else {
                        this.f12746c = codedInputByteBufferNano.readSInt64();
                    }
                } else {
                    this.f12745b = codedInputByteBufferNano.readSInt32();
                }
            } else {
                this.f12744a = codedInputByteBufferNano.readString();
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeString(1, this.f12744a);
        codedOutputByteBufferNano.writeSInt32(2, this.f12745b);
        codedOutputByteBufferNano.writeSInt64(3, this.f12746c);
        if (!this.f12747d.equals("")) {
            codedOutputByteBufferNano.writeString(4, this.f12747d);
        }
        int i10 = this.f12748e;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeUInt32(5, i10);
        }
        C0634jf[] c0634jfArr = this.f12749f;
        if (c0634jfArr != null && c0634jfArr.length > 0) {
            int i11 = 0;
            while (true) {
                C0634jf[] c0634jfArr2 = this.f12749f;
                if (i11 >= c0634jfArr2.length) {
                    break;
                }
                C0634jf c0634jf = c0634jfArr2[i11];
                if (c0634jf != null) {
                    codedOutputByteBufferNano.writeMessage(6, c0634jf);
                }
                i11++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
