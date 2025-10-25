package org.apache.tika.pipes;
/* loaded from: classes2.dex */
public class LoggingPipesReporter extends PipesReporter {
    mf.c LOGGER = mf.e.l(LoggingPipesReporter.class);

    @Override // org.apache.tika.pipes.PipesReporter
    public void error(Throwable th) {
        this.LOGGER.g("pipes error", th);
    }

    @Override // org.apache.tika.pipes.PipesReporter
    public void report(FetchEmitTuple fetchEmitTuple, PipesResult pipesResult, long j10) {
        this.LOGGER.t("{} {} {}", fetchEmitTuple, pipesResult, Long.valueOf(j10));
    }

    @Override // org.apache.tika.pipes.PipesReporter
    public void error(String str) {
        this.LOGGER.r("error {}", str);
    }
}
