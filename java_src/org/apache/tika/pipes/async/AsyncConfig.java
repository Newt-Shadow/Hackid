package org.apache.tika.pipes.async;

import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import org.apache.tika.pipes.PipesConfigBase;
import org.apache.tika.pipes.PipesReporter;
/* loaded from: classes2.dex */
public class AsyncConfig extends PipesConfigBase {
    private long emitWithinMillis = 10000;
    private long emitMaxEstimatedBytes = PipesConfigBase.DEFAULT_MAX_FOR_EMIT_BATCH;
    private int queueSize = 10000;
    private int numEmitters = 1;
    private boolean emitIntermediateResults = false;
    private PipesReporter pipesReporter = PipesReporter.NO_OP_REPORTER;

    public static AsyncConfig load(Path path) {
        InputStream newInputStream;
        AsyncConfig asyncConfig = new AsyncConfig();
        newInputStream = Files.newInputStream(path, new OpenOption[0]);
        try {
            asyncConfig.configure("async", newInputStream);
            if (newInputStream != null) {
                newInputStream.close();
            }
            if (asyncConfig.getTikaConfig() == null) {
                asyncConfig.setTikaConfig(path);
            }
            return asyncConfig;
        } catch (Throwable th) {
            if (newInputStream != null) {
                try {
                    newInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public long getEmitMaxEstimatedBytes() {
        return this.emitMaxEstimatedBytes;
    }

    public long getEmitWithinMillis() {
        return this.emitWithinMillis;
    }

    public int getNumEmitters() {
        return this.numEmitters;
    }

    public PipesReporter getPipesReporter() {
        return this.pipesReporter;
    }

    public int getQueueSize() {
        return this.queueSize;
    }

    public boolean isEmitIntermediateResults() {
        return this.emitIntermediateResults;
    }

    public void setEmitIntermediateResults(boolean z10) {
        this.emitIntermediateResults = z10;
    }

    public void setEmitMaxEstimatedBytes(long j10) {
        this.emitMaxEstimatedBytes = j10;
    }

    public void setEmitWithinMillis(long j10) {
        this.emitWithinMillis = j10;
    }

    public void setNumEmitters(int i10) {
        this.numEmitters = i10;
    }

    public void setPipesReporter(PipesReporter pipesReporter) {
        this.pipesReporter = pipesReporter;
    }

    public void setQueueSize(int i10) {
        this.queueSize = i10;
    }
}
