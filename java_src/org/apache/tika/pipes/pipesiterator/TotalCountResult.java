package org.apache.tika.pipes.pipesiterator;
/* loaded from: classes2.dex */
public class TotalCountResult {
    public static TotalCountResult UNSUPPORTED = new TotalCountResult(-1, STATUS.UNSUPPORTED);
    private STATUS status;
    private long totalCount;

    /* loaded from: classes2.dex */
    public enum STATUS {
        UNSUPPORTED,
        EXCEPTION,
        NOT_COMPLETED,
        COMPLETED
    }

    public TotalCountResult() {
        this.totalCount = 0L;
        this.status = STATUS.NOT_COMPLETED;
    }

    public STATUS getStatus() {
        return this.status;
    }

    public long getTotalCount() {
        return this.totalCount;
    }

    public String toString() {
        long j10 = this.totalCount;
        STATUS status = this.status;
        return "TotalCountResult{totalCount=" + j10 + ", status=" + status + "}";
    }

    public TotalCountResult(long j10, STATUS status) {
        this.totalCount = j10;
        this.status = status;
    }
}
