package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
/* renamed from: com.yandex.metrica.impl.ob.rf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0831rf extends MessageNano {

    /* renamed from: f  reason: collision with root package name */
    private static volatile C0831rf[] f13513f;

    /* renamed from: a  reason: collision with root package name */
    public String f13514a;

    /* renamed from: b  reason: collision with root package name */
    public int f13515b;

    /* renamed from: c  reason: collision with root package name */
    public String f13516c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f13517d;

    /* renamed from: e  reason: collision with root package name */
    public long f13518e;

    public C0831rf() {
        a();
    }

    public static C0831rf[] b() {
        if (f13513f == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f13513f == null) {
                    f13513f = new C0831rf[0];
                }
            }
        }
        return f13513f;
    }

    public C0831rf a() {
        this.f13514a = "";
        this.f13515b = 0;
        this.f13516c = "";
        this.f13517d = false;
        this.f13518e = 0L;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f13514a);
        int i10 = this.f13515b;
        if (i10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeSInt32Size(2, i10);
        }
        if (!this.f13516c.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(3, this.f13516c);
        }
        boolean z10 = this.f13517d;
        if (z10) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(4, z10);
        }
        long j10 = this.f13518e;
        if (j10 != 0) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeUInt64Size(5, j10);
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
                        if (readTag != 32) {
                            if (readTag != 40) {
                                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                    break;
                                }
                            } else {
                                this.f13518e = codedInputByteBufferNano.readUInt64();
                            }
                        } else {
                            this.f13517d = codedInputByteBufferNano.readBool();
                        }
                    } else {
                        this.f13516c = codedInputByteBufferNano.readString();
                    }
                } else {
                    this.f13515b = codedInputByteBufferNano.readSInt32();
                }
            } else {
                this.f13514a = codedInputByteBufferNano.readString();
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeString(1, this.f13514a);
        int i10 = this.f13515b;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeSInt32(2, i10);
        }
        if (!this.f13516c.equals("")) {
            codedOutputByteBufferNano.writeString(3, this.f13516c);
        }
        boolean z10 = this.f13517d;
        if (z10) {
            codedOutputByteBufferNano.writeBool(4, z10);
        }
        long j10 = this.f13518e;
        if (j10 != 0) {
            codedOutputByteBufferNano.writeUInt64(5, j10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
