package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class F9 extends MessageNano {

    /* renamed from: e  reason: collision with root package name */
    public static volatile F9[] f18217e;

    /* renamed from: a  reason: collision with root package name */
    public boolean f18218a;

    /* renamed from: b  reason: collision with root package name */
    public int f18219b;

    /* renamed from: c  reason: collision with root package name */
    public int f18220c;

    /* renamed from: d  reason: collision with root package name */
    public int[] f18221d;

    public F9() {
        a();
    }

    public static F9[] b() {
        if (f18217e == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f18217e == null) {
                    f18217e = new F9[0];
                }
            }
        }
        return f18217e;
    }

    public final F9 a() {
        this.f18218a = false;
        this.f18219b = 0;
        this.f18220c = 0;
        this.f18221d = WireFormatNano.EMPTY_INT_ARRAY;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeUInt32Size = CodedOutputByteBufferNano.computeUInt32Size(3, this.f18220c) + CodedOutputByteBufferNano.computeUInt32Size(2, this.f18219b) + CodedOutputByteBufferNano.computeBoolSize(1, this.f18218a) + super.computeSerializedSize();
        int[] iArr = this.f18221d;
        if (iArr != null && iArr.length > 0) {
            int i10 = 0;
            int i11 = 0;
            while (true) {
                int[] iArr2 = this.f18221d;
                if (i10 < iArr2.length) {
                    i11 += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr2[i10]);
                    i10++;
                } else {
                    return computeUInt32Size + i11 + iArr2.length;
                }
            }
        } else {
            return computeUInt32Size;
        }
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeBool(1, this.f18218a);
        codedOutputByteBufferNano.writeUInt32(2, this.f18219b);
        codedOutputByteBufferNano.writeUInt32(3, this.f18220c);
        int[] iArr = this.f18221d;
        if (iArr != null && iArr.length > 0) {
            int i10 = 0;
            while (true) {
                int[] iArr2 = this.f18221d;
                if (i10 >= iArr2.length) {
                    break;
                }
                codedOutputByteBufferNano.writeInt32(4, iArr2[i10]);
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final F9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                this.f18218a = codedInputByteBufferNano.readBool();
            } else if (readTag == 16) {
                this.f18219b = codedInputByteBufferNano.readUInt32();
            } else if (readTag == 24) {
                this.f18220c = codedInputByteBufferNano.readUInt32();
            } else if (readTag == 32) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 32);
                int[] iArr = this.f18221d;
                int length = iArr == null ? 0 : iArr.length;
                int i10 = repeatedFieldArrayLength + length;
                int[] iArr2 = new int[i10];
                if (length != 0) {
                    System.arraycopy(iArr, 0, iArr2, 0, length);
                }
                while (length < i10 - 1) {
                    iArr2[length] = codedInputByteBufferNano.readInt32();
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                iArr2[length] = codedInputByteBufferNano.readInt32();
                this.f18221d = iArr2;
            } else if (readTag != 34) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int pushLimit = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                int position = codedInputByteBufferNano.getPosition();
                int i11 = 0;
                while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                    codedInputByteBufferNano.readInt32();
                    i11++;
                }
                codedInputByteBufferNano.rewindToPosition(position);
                int[] iArr3 = this.f18221d;
                int length2 = iArr3 == null ? 0 : iArr3.length;
                int i12 = i11 + length2;
                int[] iArr4 = new int[i12];
                if (length2 != 0) {
                    System.arraycopy(iArr3, 0, iArr4, 0, length2);
                }
                while (length2 < i12) {
                    iArr4[length2] = codedInputByteBufferNano.readInt32();
                    length2++;
                }
                this.f18221d = iArr4;
                codedInputByteBufferNano.popLimit(pushLimit);
            }
        }
    }

    public static F9 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new F9().mergeFrom(codedInputByteBufferNano);
    }

    public static F9 a(byte[] bArr) {
        return (F9) MessageNano.mergeFrom(new F9(), bArr);
    }
}
