package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
/* renamed from: com.yandex.metrica.impl.ob.tf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0879tf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public String f13640a;

    /* renamed from: b  reason: collision with root package name */
    public long f13641b;

    /* renamed from: c  reason: collision with root package name */
    public long f13642c;

    /* renamed from: d  reason: collision with root package name */
    public int f13643d;

    public C0879tf() {
        a();
    }

    public C0879tf a() {
        this.f13640a = "";
        this.f13641b = 0L;
        this.f13642c = 0L;
        this.f13643d = 0;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.f13640a.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f13640a);
        }
        long j10 = this.f13641b;
        if (j10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(2, j10);
        }
        long j11 = this.f13642c;
        if (j11 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(3, j11);
        }
        int i10 = this.f13643d;
        if (i10 != 0) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(4, i10);
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
                            if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                break;
                            }
                        } else {
                            int readInt32 = codedInputByteBufferNano.readInt32();
                            if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2) {
                                this.f13643d = readInt32;
                            }
                        }
                    } else {
                        this.f13642c = codedInputByteBufferNano.readUInt64();
                    }
                } else {
                    this.f13641b = codedInputByteBufferNano.readUInt64();
                }
            } else {
                this.f13640a = codedInputByteBufferNano.readString();
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!this.f13640a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.f13640a);
        }
        long j10 = this.f13641b;
        if (j10 != 0) {
            codedOutputByteBufferNano.writeUInt64(2, j10);
        }
        long j11 = this.f13642c;
        if (j11 != 0) {
            codedOutputByteBufferNano.writeUInt64(3, j11);
        }
        int i10 = this.f13643d;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeInt32(4, i10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C0879tf a(byte[] bArr) {
        return (C0879tf) MessageNano.mergeFrom(new C0879tf(), bArr);
    }
}
