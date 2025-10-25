package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
/* renamed from: com.yandex.metrica.impl.ob.sf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0855sf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f13585a;

    /* renamed from: b  reason: collision with root package name */
    public long f13586b;

    /* renamed from: c  reason: collision with root package name */
    public long f13587c;

    /* renamed from: d  reason: collision with root package name */
    public int f13588d;

    public C0855sf() {
        a();
    }

    public C0855sf a() {
        this.f13585a = WireFormatNano.EMPTY_BYTES;
        this.f13586b = 0L;
        this.f13587c = 0L;
        this.f13588d = 0;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeBytesSize(1, this.f13585a);
        long j10 = this.f13586b;
        if (j10 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(2, j10);
        }
        long j11 = this.f13587c;
        if (j11 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(3, j11);
        }
        int i10 = this.f13588d;
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
                                this.f13588d = readInt32;
                            }
                        }
                    } else {
                        this.f13587c = codedInputByteBufferNano.readUInt64();
                    }
                } else {
                    this.f13586b = codedInputByteBufferNano.readUInt64();
                }
            } else {
                this.f13585a = codedInputByteBufferNano.readBytes();
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeBytes(1, this.f13585a);
        long j10 = this.f13586b;
        if (j10 != 0) {
            codedOutputByteBufferNano.writeUInt64(2, j10);
        }
        long j11 = this.f13587c;
        if (j11 != 0) {
            codedOutputByteBufferNano.writeUInt64(3, j11);
        }
        int i10 = this.f13588d;
        if (i10 != 0) {
            codedOutputByteBufferNano.writeInt32(4, i10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
