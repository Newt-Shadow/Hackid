package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class Lb extends MessageNano {

    /* renamed from: f  reason: collision with root package name */
    public static volatile Lb[] f18522f;

    /* renamed from: a  reason: collision with root package name */
    public String f18523a;

    /* renamed from: b  reason: collision with root package name */
    public String f18524b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f18525c;

    /* renamed from: d  reason: collision with root package name */
    public String f18526d;

    /* renamed from: e  reason: collision with root package name */
    public String f18527e;

    public Lb() {
        a();
    }

    public static Lb[] b() {
        if (f18522f == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18522f == null) {
                    f18522f = new Lb[0];
                }
            }
        }
        return f18522f;
    }

    public final Lb a() {
        this.f18523a = "";
        this.f18524b = "";
        this.f18525c = false;
        this.f18526d = "";
        this.f18527e = "";
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.f18523a.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f18523a);
        }
        if (!this.f18524b.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(19, this.f18524b);
        }
        boolean z10 = this.f18525c;
        if (z10) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(22, z10);
        }
        if (!this.f18526d.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(25, this.f18526d);
        }
        if (!this.f18527e.equals("")) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(26, this.f18527e);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!this.f18523a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.f18523a);
        }
        if (!this.f18524b.equals("")) {
            codedOutputByteBufferNano.writeString(19, this.f18524b);
        }
        boolean z10 = this.f18525c;
        if (z10) {
            codedOutputByteBufferNano.writeBool(22, z10);
        }
        if (!this.f18526d.equals("")) {
            codedOutputByteBufferNano.writeString(25, this.f18526d);
        }
        if (!this.f18527e.equals("")) {
            codedOutputByteBufferNano.writeString(26, this.f18527e);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static Lb b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Lb().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final Lb mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f18523a = codedInputByteBufferNano.readString();
            } else if (readTag == 154) {
                this.f18524b = codedInputByteBufferNano.readString();
            } else if (readTag == 176) {
                this.f18525c = codedInputByteBufferNano.readBool();
            } else if (readTag == 202) {
                this.f18526d = codedInputByteBufferNano.readString();
            } else if (readTag != 210) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f18527e = codedInputByteBufferNano.readString();
            }
        }
    }

    public static Lb a(byte[] bArr) {
        return (Lb) MessageNano.mergeFrom(new Lb(), bArr);
    }
}
