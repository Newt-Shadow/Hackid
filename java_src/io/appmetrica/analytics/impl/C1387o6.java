package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.o6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1387o6 extends MessageNano {

    /* renamed from: g  reason: collision with root package name */
    public static volatile C1387o6[] f20274g;

    /* renamed from: a  reason: collision with root package name */
    public String f20275a;

    /* renamed from: b  reason: collision with root package name */
    public String f20276b;

    /* renamed from: c  reason: collision with root package name */
    public int f20277c;

    /* renamed from: d  reason: collision with root package name */
    public String f20278d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f20279e;

    /* renamed from: f  reason: collision with root package name */
    public int f20280f;

    public C1387o6() {
        a();
    }

    public static C1387o6[] b() {
        if (f20274g == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20274g == null) {
                    f20274g = new C1387o6[0];
                }
            }
        }
        return f20274g;
    }

    public final C1387o6 a() {
        this.f20275a = "";
        this.f20276b = "";
        this.f20277c = -1;
        this.f20278d = "";
        this.f20279e = false;
        this.f20280f = -1;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.f20275a.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f20275a);
        }
        if (!this.f20276b.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f20276b);
        }
        int i10 = this.f20277c;
        if (i10 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeSInt32Size(3, i10);
        }
        if (!this.f20278d.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(4, this.f20278d);
        }
        boolean z10 = this.f20279e;
        if (z10) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(5, z10);
        }
        int i11 = this.f20280f;
        if (i11 != -1) {
            return computeSerializedSize + CodedOutputByteBufferNano.computeSInt32Size(6, i11);
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!this.f20275a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.f20275a);
        }
        if (!this.f20276b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.f20276b);
        }
        int i10 = this.f20277c;
        if (i10 != -1) {
            codedOutputByteBufferNano.writeSInt32(3, i10);
        }
        if (!this.f20278d.equals("")) {
            codedOutputByteBufferNano.writeString(4, this.f20278d);
        }
        boolean z10 = this.f20279e;
        if (z10) {
            codedOutputByteBufferNano.writeBool(5, z10);
        }
        int i11 = this.f20280f;
        if (i11 != -1) {
            codedOutputByteBufferNano.writeSInt32(6, i11);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1387o6 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1387o6().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1387o6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f20275a = codedInputByteBufferNano.readString();
            } else if (readTag == 18) {
                this.f20276b = codedInputByteBufferNano.readString();
            } else if (readTag == 24) {
                this.f20277c = codedInputByteBufferNano.readSInt32();
            } else if (readTag == 34) {
                this.f20278d = codedInputByteBufferNano.readString();
            } else if (readTag == 40) {
                this.f20279e = codedInputByteBufferNano.readBool();
            } else if (readTag != 48) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f20280f = codedInputByteBufferNano.readSInt32();
            }
        }
    }

    public static C1387o6 a(byte[] bArr) {
        return (C1387o6) MessageNano.mergeFrom(new C1387o6(), bArr);
    }
}
