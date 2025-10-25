package org.apache.tika.pipes;

import java.io.Closeable;
import org.apache.tika.pipes.pipesiterator.TotalCountResult;
/* loaded from: classes2.dex */
public abstract class PipesReporter implements Closeable {
    public static final PipesReporter NO_OP_REPORTER = new PipesReporter() { // from class: org.apache.tika.pipes.PipesReporter.1
        @Override // org.apache.tika.pipes.PipesReporter
        public void error(String str) {
        }

        @Override // org.apache.tika.pipes.PipesReporter
        public void report(FetchEmitTuple fetchEmitTuple, PipesResult pipesResult, long j10) {
        }

        @Override // org.apache.tika.pipes.PipesReporter
        public void error(Throwable th) {
        }
    };

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public abstract void error(String str);

    public abstract void error(Throwable th);

    public abstract void report(FetchEmitTuple fetchEmitTuple, PipesResult pipesResult, long j10);

    public void report(TotalCountResult totalCountResult) {
    }

    public boolean supportsTotalCount() {
        return false;
    }
}
