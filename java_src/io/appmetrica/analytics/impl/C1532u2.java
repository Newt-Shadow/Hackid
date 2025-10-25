package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.u2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1532u2 extends MessageNano {

    /* renamed from: f  reason: collision with root package name */
    public static volatile C1532u2[] f20694f;

    /* renamed from: a  reason: collision with root package name */
    public int f20695a;

    /* renamed from: b  reason: collision with root package name */
    public String f20696b;

    /* renamed from: c  reason: collision with root package name */
    public String f20697c;

    /* renamed from: d  reason: collision with root package name */
    public long f20698d;

    /* renamed from: e  reason: collision with root package name */
    public long f20699e;

    public C1532u2() {
        a();
    }

    public static C1532u2[] b() {
        if (f20694f == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20694f == null) {
                    f20694f = new C1532u2[0];
                }
            }
        }
        return f20694f;
    }

    public final C1532u2 a() {
        this.f20695a = 1;
        this.f20696b = "";
        this.f20697c = "";
        this.f20698d = 0L;
        this.f20699e = 0L;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        return CodedOutputByteBufferNano.computeUInt64Size(5, this.f20699e) + CodedOutputByteBufferNano.computeUInt64Size(4, this.f20698d) + CodedOutputByteBufferNano.computeStringSize(3, this.f20697c) + CodedOutputByteBufferNano.computeStringSize(2, this.f20696b) + CodedOutputByteBufferNano.computeInt32Size(1, this.f20695a) + super.computeSerializedSize();
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeInt32(1, this.f20695a);
        codedOutputByteBufferNano.writeString(2, this.f20696b);
        codedOutputByteBufferNano.writeString(3, this.f20697c);
        codedOutputByteBufferNano.writeUInt64(4, this.f20698d);
        codedOutputByteBufferNano.writeUInt64(5, this.f20699e);
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1532u2 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1532u2().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1532u2 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                int readInt32 = codedInputByteBufferNano.readInt32();
                if (readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                    this.f20695a = readInt32;
                }
            } else if (readTag == 18) {
                this.f20696b = codedInputByteBufferNano.readString();
            } else if (readTag == 26) {
                this.f20697c = codedInputByteBufferNano.readString();
            } else if (readTag == 32) {
                this.f20698d = codedInputByteBufferNano.readUInt64();
            } else if (readTag != 40) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                this.f20699e = codedInputByteBufferNano.readUInt64();
            }
        }
    }

    public static C1532u2 a(byte[] bArr) {
        return (C1532u2) MessageNano.mergeFrom(new C1532u2(), bArr);
    }
}
