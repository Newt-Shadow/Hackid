package io.appmetrica.analytics.screenshot.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* loaded from: classes2.dex */
public final class L extends MessageNano {

    /* renamed from: d  reason: collision with root package name */
    public static volatile L[] f21378d;

    /* renamed from: a  reason: collision with root package name */
    public boolean f21379a;

    /* renamed from: b  reason: collision with root package name */
    public long f21380b;

    /* renamed from: c  reason: collision with root package name */
    public String[] f21381c;

    public L() {
        a();
    }

    public static L[] b() {
        if (f21378d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f21378d == null) {
                    f21378d = new L[0];
                }
            }
        }
        return f21378d;
    }

    public final L a() {
        this.f21379a = true;
        this.f21380b = 5L;
        this.f21381c = WireFormatNano.EMPTY_STRING_ARRAY;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        boolean z10 = this.f21379a;
        if (!z10) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(1, z10);
        }
        long j10 = this.f21380b;
        if (j10 != 5) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(2, j10);
        }
        String[] strArr = this.f21381c;
        if (strArr != null && strArr.length > 0) {
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                String[] strArr2 = this.f21381c;
                if (i10 < strArr2.length) {
                    String str = strArr2[i10];
                    if (str != null) {
                        i12++;
                        i11 = CodedOutputByteBufferNano.computeStringSizeNoTag(str) + i11;
                    }
                    i10++;
                } else {
                    return computeSerializedSize + i11 + i12;
                }
            }
        } else {
            return computeSerializedSize;
        }
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        boolean z10 = this.f21379a;
        if (!z10) {
            codedOutputByteBufferNano.writeBool(1, z10);
        }
        long j10 = this.f21380b;
        if (j10 != 5) {
            codedOutputByteBufferNano.writeInt64(2, j10);
        }
        String[] strArr = this.f21381c;
        if (strArr != null && strArr.length > 0) {
            int i10 = 0;
            while (true) {
                String[] strArr2 = this.f21381c;
                if (i10 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i10];
                if (str != null) {
                    codedOutputByteBufferNano.writeString(3, str);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final L mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 8) {
                this.f21379a = codedInputByteBufferNano.readBool();
            } else if (readTag == 16) {
                this.f21380b = codedInputByteBufferNano.readInt64();
            } else if (readTag != 26) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                String[] strArr = this.f21381c;
                int length = strArr == null ? 0 : strArr.length;
                int i10 = repeatedFieldArrayLength + length;
                String[] strArr2 = new String[i10];
                if (length != 0) {
                    System.arraycopy(strArr, 0, strArr2, 0, length);
                }
                while (length < i10 - 1) {
                    strArr2[length] = codedInputByteBufferNano.readString();
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                strArr2[length] = codedInputByteBufferNano.readString();
                this.f21381c = strArr2;
            }
        }
    }

    public static L b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new L().mergeFrom(codedInputByteBufferNano);
    }

    public static L a(byte[] bArr) {
        return (L) MessageNano.mergeFrom(new L(), bArr);
    }
}
