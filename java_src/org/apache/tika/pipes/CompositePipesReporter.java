package org.apache.tika.pipes;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.tika.config.Field;
import org.apache.tika.config.Initializable;
import org.apache.tika.config.InitializableProblemHandler;
import org.apache.tika.config.Param;
import org.apache.tika.exception.TikaConfigException;
import org.apache.tika.pipes.pipesiterator.TotalCountResult;
/* loaded from: classes2.dex */
public class CompositePipesReporter extends PipesReporter implements Initializable {
    private List<PipesReporter> pipesReporters = new ArrayList();

    @Field
    public void addPipesReporter(PipesReporter pipesReporter) {
        this.pipesReporters.add(pipesReporter);
    }

    @Override // org.apache.tika.config.Initializable
    public void checkInitialization(InitializableProblemHandler initializableProblemHandler) {
        List<PipesReporter> list = this.pipesReporters;
        if (list != null) {
            if (list.size() != 0) {
                return;
            }
            throw new TikaConfigException("must specify at least one pipes reporter");
        }
        throw new TikaConfigException("must specify 'pipesReporters'");
    }

    @Override // org.apache.tika.pipes.PipesReporter, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        IOException e10 = null;
        for (PipesReporter pipesReporter : this.pipesReporters) {
            try {
                pipesReporter.close();
            } catch (IOException e11) {
                e10 = e11;
            }
        }
        if (e10 == null) {
            return;
        }
        throw e10;
    }

    @Override // org.apache.tika.pipes.PipesReporter
    public void error(Throwable th) {
        for (PipesReporter pipesReporter : this.pipesReporters) {
            pipesReporter.error(th);
        }
    }

    public List<PipesReporter> getPipesReporters() {
        return this.pipesReporters;
    }

    @Override // org.apache.tika.config.Initializable
    public void initialize(Map<String, Param> map) {
    }

    @Override // org.apache.tika.pipes.PipesReporter
    public void report(FetchEmitTuple fetchEmitTuple, PipesResult pipesResult, long j10) {
        for (PipesReporter pipesReporter : this.pipesReporters) {
            pipesReporter.report(fetchEmitTuple, pipesResult, j10);
        }
    }

    @Override // org.apache.tika.pipes.PipesReporter
    public boolean supportsTotalCount() {
        for (PipesReporter pipesReporter : this.pipesReporters) {
            if (pipesReporter.supportsTotalCount()) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.tika.pipes.PipesReporter
    public void error(String str) {
        for (PipesReporter pipesReporter : this.pipesReporters) {
            pipesReporter.error(str);
        }
    }

    @Override // org.apache.tika.pipes.PipesReporter
    public void report(TotalCountResult totalCountResult) {
        for (PipesReporter pipesReporter : this.pipesReporters) {
            pipesReporter.report(totalCountResult);
        }
    }
}
