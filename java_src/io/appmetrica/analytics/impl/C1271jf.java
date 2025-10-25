package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.jf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1271jf extends MessageNano {

    /* renamed from: f  reason: collision with root package name */
    public static volatile C1271jf[] f19854f;

    /* renamed from: a  reason: collision with root package name */
    public String f19855a;

    /* renamed from: b  reason: collision with root package name */
    public String f19856b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f19857c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f19858d;

    /* renamed from: e  reason: collision with root package name */
    public int f19859e;

    public C1271jf() {
        a();
    }

    public static C1271jf[] b() {
        if (f19854f == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19854f == null) {
                    f19854f = new C1271jf[0];
                }
            }
        }
        return f19854f;
    }

    public final C1271jf a() {
        this.f19855a = "";
        this.f19856b = "";
        this.f19857c = false;
        this.f19858d = false;
        this.f19859e = 0;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.f19855a.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f19855a);
        }
        if (!this.f19856b.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f19856b);
        }
        boolean z10 = this.f19857c;
        if (z10) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(3, z10);
        }
        boolean z11 = this.f19858d;
        if (z11) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(4, z11);
        }
        return CodedOutputByteBufferNano.computeInt32Size(5, this.f19859e) + computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!this.f19855a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.f19855a);
        }
        if (!this.f19856b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.f19856b);
        }
        boolean z10 = this.f19857c;
        if (z10) {
            codedOutputByteBufferNano.writeBool(3, z10);
        }
        boolean z11 = this.f19858d;
        if (z11) {
            codedOutputByteBufferNano.writeBool(4, z11);
        }
        codedOutputByteBufferNano.writeInt32(5, this.f19859e);
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1271jf b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1271jf().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1271jf mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f19855a = codedInputByteBufferNano.readString();
            } else if (readTag == 18) {
                this.f19856b = codedInputByteBufferNano.readString();
            } else if (readTag == 24) {
                this.f19857c = codedInputByteBufferNano.readBool();
            } else if (readTag == 32) {
                this.f19858d = codedInputByteBufferNano.readBool();
            } else if (readTag != 40) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int readInt32 = codedInputByteBufferNano.readInt32();
                if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                    this.f19859e = readInt32;
                }
            }
        }
    }

    public static C1271jf a(byte[] bArr) {
        return (C1271jf) MessageNano.mergeFrom(new C1271jf(), bArr);
    }
}
