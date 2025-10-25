package com.google.protobuf.nano.ym;

import java.util.Arrays;
/* loaded from: classes.dex */
final class UnknownFieldData {
    final byte[] bytes;
    final int tag;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnknownFieldData(int i10, byte[] bArr) {
        this.tag = i10;
        this.bytes = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int computeSerializedSize() {
        return CodedOutputByteBufferNano.computeRawVarint32Size(this.tag) + 0 + this.bytes.length;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof UnknownFieldData) {
            UnknownFieldData unknownFieldData = (UnknownFieldData) obj;
            return this.tag == unknownFieldData.tag && Arrays.equals(this.bytes, unknownFieldData.bytes);
        }
        return false;
    }

    public int hashCode() {
        return ((this.tag + 527) * 31) + Arrays.hashCode(this.bytes);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeRawVarint32(this.tag);
        codedOutputByteBufferNano.writeRawBytes(this.bytes);
    }
}
