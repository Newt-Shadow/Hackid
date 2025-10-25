package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
/* renamed from: io.appmetrica.analytics.impl.bm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1079bm extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C1079bm[] f19441c;

    /* renamed from: a  reason: collision with root package name */
    public String f19442a;

    /* renamed from: b  reason: collision with root package name */
    public String[] f19443b;

    public C1079bm() {
        a();
    }

    public static C1079bm[] b() {
        if (f19441c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f19441c == null) {
                    f19441c = new C1079bm[0];
                }
            }
        }
        return f19441c;
    }

    public final C1079bm a() {
        this.f19442a = "";
        this.f19443b = WireFormatNano.EMPTY_STRING_ARRAY;
        this.cachedSize = -1;
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.f19442a.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f19442a);
        }
        String[] strArr = this.f19443b;
        if (strArr != null && strArr.length > 0) {
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                String[] strArr2 = this.f19443b;
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
        if (!this.f19442a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.f19442a);
        }
        String[] strArr = this.f19443b;
        if (strArr != null && strArr.length > 0) {
            int i10 = 0;
            while (true) {
                String[] strArr2 = this.f19443b;
                if (i10 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i10];
                if (str != null) {
                    codedOutputByteBufferNano.writeString(2, str);
                }
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* renamed from: a */
    public final C1079bm mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                return this;
            }
            if (readTag == 10) {
                this.f19442a = codedInputByteBufferNano.readString();
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                String[] strArr = this.f19443b;
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
                this.f19443b = strArr2;
            }
        }
    }

    public static C1079bm b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1079bm().mergeFrom(codedInputByteBufferNano);
    }

    public static C1079bm a(byte[] bArr) {
        return (C1079bm) MessageNano.mergeFrom(new C1079bm(), bArr);
    }
}
