package com.google.protobuf.nano.ym;

import java.io.IOException;
/* loaded from: classes.dex */
public abstract class MessageNano {
    protected volatile int cachedSize = -1;

    public static final MessageNano mergeFrom(MessageNano messageNano, byte[] bArr) {
        return mergeFrom(messageNano, bArr, 0, bArr.length);
    }

    public static final void toByteArray(MessageNano messageNano, byte[] bArr, int i10, int i11) {
        try {
            CodedOutputByteBufferNano newInstance = CodedOutputByteBufferNano.newInstance(bArr, i10, i11);
            messageNano.writeTo(newInstance);
            newInstance.checkNoSpaceLeft();
        } catch (IOException e10) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int computeSerializedSize() {
        return 0;
    }

    public int getCachedSize() {
        if (this.cachedSize < 0) {
            getSerializedSize();
        }
        return this.cachedSize;
    }

    public int getSerializedSize() {
        int computeSerializedSize = computeSerializedSize();
        this.cachedSize = computeSerializedSize;
        return computeSerializedSize;
    }

    public abstract MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano);

    public String toString() {
        return MessageNanoPrinter.print(this);
    }

    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
    }

    public static final MessageNano mergeFrom(MessageNano messageNano, byte[] bArr, int i10, int i11) {
        try {
            CodedInputByteBufferNano newInstance = CodedInputByteBufferNano.newInstance(bArr, i10, i11);
            messageNano.mergeFrom(newInstance);
            newInstance.checkLastTagWas(0);
            return messageNano;
        } catch (InvalidProtocolBufferNanoException e10) {
            throw e10;
        } catch (IOException unused) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
        }
    }

    public static final byte[] toByteArray(MessageNano messageNano) {
        int serializedSize = messageNano.getSerializedSize();
        byte[] bArr = new byte[serializedSize];
        toByteArray(messageNano, bArr, 0, serializedSize);
        return bArr;
    }
}
