package org.apache.tika.pipes.async;
/* loaded from: classes2.dex */
public class OfferLargerThanQueueSize extends IllegalArgumentException {
    private final int queueSize;
    private final int sizeOffered;

    public OfferLargerThanQueueSize(int i10, int i11) {
        this.sizeOffered = i10;
        this.queueSize = i11;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        int i10 = this.sizeOffered;
        int i11 = this.queueSize;
        return "sizeOffered (" + i10 + ") is greater than queue size (" + i11 + ")";
    }

    public int getQueueSize() {
        return this.queueSize;
    }

    public int getSizeOffered() {
        return this.sizeOffered;
    }
}
