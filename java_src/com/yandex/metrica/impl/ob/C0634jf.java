package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
/* renamed from: com.yandex.metrica.impl.ob.jf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0634jf extends MessageNano {

    /* renamed from: g  reason: collision with root package name */
    private static volatile C0634jf[] f12723g;

    /* renamed from: a  reason: collision with root package name */
    public String f12724a;

    /* renamed from: b  reason: collision with root package name */
    public String f12725b;

    /* renamed from: c  reason: collision with root package name */
    public int f12726c;

    /* renamed from: d  reason: collision with root package name */
    public String f12727d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f12728e;

    /* renamed from: f  reason: collision with root package name */
    public int f12729f;

    public C0634jf() {
        a();
    }

    public static C0634jf[] b() {
        if (f12723g == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f12723g == null) {
                    f12723g = new C0634jf[0];
                }
            }
        }
        return f12723g;
    }

    public C0634jf a() {
        this.f12724a = "";
        this.f12725b = "";
        this.f12726c = -1;
        this.f12727d = "";
        this.f12728e = false;
        this.f12729f = -1;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.f12724a.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f12724a);
        }
        if (!this.f12725b.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f12725b);
        }
        int i10 = this.f12726c;
        if (i10 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeSInt32Size(3, i10);
        }
        if (!this.f12727d.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(4, this.f12727d);
        }
        boolean z10 = this.f12728e;
        if (z10) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(5, z10);
        }
        int i11 = this.f12729f;
        if (i11 != -1) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeSInt32Size(6, i11);
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
                    if (readTag != 24) {
                        if (readTag != 34) {
                            if (readTag != 40) {
                                if (readTag != 48) {
                                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                        break;
                                    }
                                } else {
                                    this.f12729f = codedInputByteBufferNano.readSInt32();
                                }
                            } else {
                                this.f12728e = codedInputByteBufferNano.readBool();
                            }
                        } else {
                            this.f12727d = codedInputByteBufferNano.readString();
                        }
                    } else {
                        this.f12726c = codedInputByteBufferNano.readSInt32();
                    }
                } else {
                    this.f12725b = codedInputByteBufferNano.readString();
                }
            } else {
                this.f12724a = codedInputByteBufferNano.readString();
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!this.f12724a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.f12724a);
        }
        if (!this.f12725b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.f12725b);
        }
        int i10 = this.f12726c;
        if (i10 != -1) {
            codedOutputByteBufferNano.writeSInt32(3, i10);
        }
        if (!this.f12727d.equals("")) {
            codedOutputByteBufferNano.writeString(4, this.f12727d);
        }
        boolean z10 = this.f12728e;
        if (z10) {
            codedOutputByteBufferNano.writeBool(5, z10);
        }
        int i11 = this.f12729f;
        if (i11 != -1) {
            codedOutputByteBufferNano.writeSInt32(6, i11);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
