package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
/* renamed from: com.yandex.metrica.impl.ob.ef  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0510ef extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public C0485df f12328a;

    /* renamed from: b  reason: collision with root package name */
    public String f12329b;

    /* renamed from: c  reason: collision with root package name */
    public int f12330c;

    public C0510ef() {
        a();
    }

    public C0510ef a() {
        this.f12328a = null;
        this.f12329b = "";
        this.f12330c = -1;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C0485df c0485df = this.f12328a;
        if (c0485df != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c0485df);
        }
        if (!this.f12329b.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f12329b);
        }
        int i10 = this.f12330c;
        if (i10 != -1) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, i10);
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
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        int readInt32 = codedInputByteBufferNano.readInt32();
                        if (readInt32 == -1 || readInt32 == 0 || readInt32 == 1) {
                            this.f12330c = readInt32;
                        }
                    }
                } else {
                    this.f12329b = codedInputByteBufferNano.readString();
                }
            } else {
                if (this.f12328a == null) {
                    this.f12328a = new C0485df();
                }
                codedInputByteBufferNano.readMessage(this.f12328a);
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C0485df c0485df = this.f12328a;
        if (c0485df != null) {
            codedOutputByteBufferNano.writeMessage(1, c0485df);
        }
        if (!this.f12329b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.f12329b);
        }
        int i10 = this.f12330c;
        if (i10 != -1) {
            codedOutputByteBufferNano.writeInt32(3, i10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
