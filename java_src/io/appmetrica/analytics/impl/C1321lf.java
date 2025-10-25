package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.lf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1321lf extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static final int f20026c = 0;

    /* renamed from: d  reason: collision with root package name */
    public static final int f20027d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f20028e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f20029f = 3;

    /* renamed from: g  reason: collision with root package name */
    public static volatile C1321lf[] f20030g;

    /* renamed from: a  reason: collision with root package name */
    public C1271jf f20031a;

    /* renamed from: b  reason: collision with root package name */
    public C1296kf[] f20032b;

    public C1321lf() {
        a();
    }

    public static C1321lf[] b() {
        if (f20030g == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f20030g == null) {
                    f20030g = new C1321lf[0];
                }
            }
        }
        return f20030g;
    }

    public final C1321lf a() {
        this.f20031a = null;
        this.f20032b = C1296kf.b();
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1271jf c1271jf = this.f20031a;
        if (c1271jf != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1271jf);
        }
        C1296kf[] c1296kfArr = this.f20032b;
        if (c1296kfArr != null && c1296kfArr.length > 0) {
            int i10 = 0;
            while (true) {
                C1296kf[] c1296kfArr2 = this.f20032b;
                if (i10 >= c1296kfArr2.length) {
                    break;
                }
                C1296kf c1296kf = c1296kfArr2[i10];
                if (c1296kf != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c1296kf);
                }
                i10++;
            }
        }
        return computeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1271jf c1271jf = this.f20031a;
        if (c1271jf != null) {
            codedOutputByteBufferNano.writeMessage(1, c1271jf);
        }
        C1296kf[] c1296kfArr = this.f20032b;
        if (c1296kfArr != null && c1296kfArr.length > 0) {
            int i10 = 0;
            while (true) {
                C1296kf[] c1296kfArr2 = this.f20032b;
                if (i10 >= c1296kfArr2.length) {
                    break;
                }
                C1296kf c1296kf = c1296kfArr2[i10];
                if (c1296kf != null) {
                    codedOutputByteBufferNano.writeMessage(2, c1296kf);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1321lf mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                if (this.f20031a == null) {
                    this.f20031a = new C1271jf();
                }
                codedInputByteBufferNano.readMessage(this.f20031a);
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                C1296kf[] c1296kfArr = this.f20032b;
                int length = c1296kfArr == null ? 0 : c1296kfArr.length;
                int i10 = repeatedFieldArrayLength + length;
                C1296kf[] c1296kfArr2 = new C1296kf[i10];
                if (length != 0) {
                    System.arraycopy(c1296kfArr, 0, c1296kfArr2, 0, length);
                }
                while (length < i10 - 1) {
                    C1296kf c1296kf = new C1296kf();
                    c1296kfArr2[length] = c1296kf;
                    codedInputByteBufferNano.readMessage(c1296kf);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C1296kf c1296kf2 = new C1296kf();
                c1296kfArr2[length] = c1296kf2;
                codedInputByteBufferNano.readMessage(c1296kf2);
                this.f20032b = c1296kfArr2;
            }
        }
    }

    public static C1321lf b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1321lf().mergeFrom(codedInputByteBufferNano);
    }

    public static C1321lf a(byte[] bArr) {
        return (C1321lf) MessageNano.mergeFrom(new C1321lf(), bArr);
    }
}
