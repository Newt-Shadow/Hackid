package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.dm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1129dm extends MessageNano {

    /* renamed from: g  reason: collision with root package name */
    public static volatile C1129dm[] f19538g;

    /* renamed from: a  reason: collision with root package name */
    public boolean f19539a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f19540b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f19541c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f19542d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f19543e;

    /* renamed from: f  reason: collision with root package name */
    public int f19544f;

    public C1129dm() {
        a();
    }

    public static C1129dm[] b() {
        if (f19538g == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19538g == null) {
                    f19538g = new C1129dm[0];
                }
            }
        }
        return f19538g;
    }

    public final C1129dm a() {
        this.f19539a = false;
        this.f19540b = false;
        this.f19541c = false;
        this.f19542d = false;
        this.f19543e = false;
        this.f19544f = -1;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeBoolSize = CodedOutputByteBufferNano.computeBoolSize(4, this.f19542d) + CodedOutputByteBufferNano.computeBoolSize(3, this.f19541c) + CodedOutputByteBufferNano.computeBoolSize(2, this.f19540b) + CodedOutputByteBufferNano.computeBoolSize(1, this.f19539a) + super.computeSerializedSize();
        boolean z10 = this.f19543e;
        if (z10) {
            computeBoolSize += CodedOutputByteBufferNano.computeBoolSize(5, z10);
        }
        int i10 = this.f19544f;
        if (i10 != -1) {
            return computeBoolSize + CodedOutputByteBufferNano.computeInt32Size(6, i10);
        }
        return computeBoolSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeBool(1, this.f19539a);
        codedOutputByteBufferNano.writeBool(2, this.f19540b);
        codedOutputByteBufferNano.writeBool(3, this.f19541c);
        codedOutputByteBufferNano.writeBool(4, this.f19542d);
        boolean z10 = this.f19543e;
        if (z10) {
            codedOutputByteBufferNano.writeBool(5, z10);
        }
        int i10 = this.f19544f;
        if (i10 != -1) {
            codedOutputByteBufferNano.writeInt32(6, i10);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1129dm b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1129dm().mergeFrom(codedInputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1129dm mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                this.f19539a = codedInputByteBufferNano.readBool();
            } else if (readTag == 16) {
                this.f19540b = codedInputByteBufferNano.readBool();
            } else if (readTag == 24) {
                this.f19541c = codedInputByteBufferNano.readBool();
            } else if (readTag == 32) {
                this.f19542d = codedInputByteBufferNano.readBool();
            } else if (readTag == 40) {
                this.f19543e = codedInputByteBufferNano.readBool();
            } else if (readTag != 48) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int readInt32 = codedInputByteBufferNano.readInt32();
                if (readInt32 == -1 || readInt32 == 0 || readInt32 == 1) {
                    this.f19544f = readInt32;
                }
            }
        }
    }

    public static C1129dm a(byte[] bArr) {
        return (C1129dm) MessageNano.mergeFrom(new C1129dm(), bArr);
    }
}
