package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
/* loaded from: classes2.dex */
public final class Af extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public boolean f9713a;

    /* renamed from: b  reason: collision with root package name */
    public int f9714b;

    /* renamed from: c  reason: collision with root package name */
    public int f9715c;

    /* renamed from: d  reason: collision with root package name */
    public int[] f9716d;

    public Af() {
        a();
    }

    public Af a() {
        this.f9713a = false;
        this.f9714b = 0;
        this.f9715c = 0;
        this.f9716d = WireFormatNano.EMPTY_INT_ARRAY;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeBoolSize(1, this.f9713a) + CodedOutputByteBufferNano.computeUInt32Size(2, this.f9714b) + CodedOutputByteBufferNano.computeUInt32Size(3, this.f9715c);
        int[] iArr = this.f9716d;
        if (iArr != null && iArr.length > 0) {
            int i10 = 0;
            int i11 = 0;
            while (true) {
                int[] iArr2 = this.f9716d;
                if (i10 < iArr2.length) {
                    i11 += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr2[i10]);
                    i10++;
                } else {
                    return computeSerializedSize + i11 + (iArr2.length * 1);
                }
            }
        } else {
            return computeSerializedSize;
        }
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        int length;
        int length2;
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                break;
            } else if (readTag != 8) {
                if (readTag != 16) {
                    if (readTag != 24) {
                        if (readTag != 32) {
                            if (readTag != 34) {
                                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                    break;
                                }
                            } else {
                                int pushLimit = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                                int position = codedInputByteBufferNano.getPosition();
                                int i10 = 0;
                                while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                                    codedInputByteBufferNano.readInt32();
                                    i10++;
                                }
                                codedInputByteBufferNano.rewindToPosition(position);
                                int[] iArr = this.f9716d;
                                if (iArr == null) {
                                    length = 0;
                                } else {
                                    length = iArr.length;
                                }
                                int i11 = i10 + length;
                                int[] iArr2 = new int[i11];
                                if (length != 0) {
                                    System.arraycopy(iArr, 0, iArr2, 0, length);
                                }
                                while (length < i11) {
                                    iArr2[length] = codedInputByteBufferNano.readInt32();
                                    length++;
                                }
                                this.f9716d = iArr2;
                                codedInputByteBufferNano.popLimit(pushLimit);
                            }
                        } else {
                            int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 32);
                            int[] iArr3 = this.f9716d;
                            if (iArr3 == null) {
                                length2 = 0;
                            } else {
                                length2 = iArr3.length;
                            }
                            int i12 = repeatedFieldArrayLength + length2;
                            int[] iArr4 = new int[i12];
                            if (length2 != 0) {
                                System.arraycopy(iArr3, 0, iArr4, 0, length2);
                            }
                            while (length2 < i12 - 1) {
                                iArr4[length2] = codedInputByteBufferNano.readInt32();
                                codedInputByteBufferNano.readTag();
                                length2++;
                            }
                            iArr4[length2] = codedInputByteBufferNano.readInt32();
                            this.f9716d = iArr4;
                        }
                    } else {
                        this.f9715c = codedInputByteBufferNano.readUInt32();
                    }
                } else {
                    this.f9714b = codedInputByteBufferNano.readUInt32();
                }
            } else {
                this.f9713a = codedInputByteBufferNano.readBool();
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeBool(1, this.f9713a);
        codedOutputByteBufferNano.writeUInt32(2, this.f9714b);
        codedOutputByteBufferNano.writeUInt32(3, this.f9715c);
        int[] iArr = this.f9716d;
        if (iArr != null && iArr.length > 0) {
            int i10 = 0;
            while (true) {
                int[] iArr2 = this.f9716d;
                if (i10 >= iArr2.length) {
                    break;
                }
                codedOutputByteBufferNano.writeInt32(4, iArr2[i10]);
                i10++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
