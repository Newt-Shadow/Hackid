package io.appmetrica.analytics.protobuf.nano;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2.dex */
public abstract class MessageNano {
    protected volatile int cachedSize = -1;

    public static final <T extends MessageNano> T mergeFrom(T t10, byte[] bArr) {
        return (T) mergeFrom(t10, bArr, 0, bArr.length);
    }

    public static final boolean messageNanoEquals(MessageNano messageNano, MessageNano messageNano2) {
        int serializedSize;
        if (messageNano == messageNano2) {
            return true;
        }
        if (messageNano == null || messageNano2 == null || messageNano.getClass() != messageNano2.getClass() || messageNano2.getSerializedSize() != (serializedSize = messageNano.getSerializedSize())) {
            return false;
        }
        byte[] bArr = new byte[serializedSize];
        byte[] bArr2 = new byte[serializedSize];
        toByteArray(messageNano, bArr, 0, serializedSize);
        toByteArray(messageNano2, bArr2, 0, serializedSize);
        return Arrays.equals(bArr, bArr2);
    }

    public static final byte[] toByteArray(MessageNano messageNano) {
        int serializedSize = messageNano.getSerializedSize();
        byte[] bArr = new byte[serializedSize];
        toByteArray(messageNano, bArr, 0, serializedSize);
        return bArr;
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

    public static final <T extends MessageNano> T mergeFrom(T t10, byte[] bArr, int i10, int i11) {
        try {
            CodedInputByteBufferNano newInstance = CodedInputByteBufferNano.newInstance(bArr, i10, i11);
            t10.mergeFrom(newInstance);
            newInstance.checkLastTagWas(0);
            return t10;
        } catch (InvalidProtocolBufferNanoException e10) {
            throw e10;
        } catch (IOException unused) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
        }
    }

    @Override // 
    /* renamed from: clone */
    public MessageNano mo0clone() {
        return (MessageNano) super.clone();
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
}
