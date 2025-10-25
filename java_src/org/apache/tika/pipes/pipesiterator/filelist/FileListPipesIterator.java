package org.apache.tika.pipes.pipesiterator.filelist;

import java.io.BufferedReader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import org.apache.tika.config.Field;
import org.apache.tika.config.InitializableProblemHandler;
import org.apache.tika.config.TikaConfig;
import org.apache.tika.exception.TikaConfigException;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.pipes.FetchEmitTuple;
import org.apache.tika.pipes.HandlerConfig;
import org.apache.tika.pipes.emitter.EmitKey;
import org.apache.tika.pipes.fetcher.FetchKey;
import org.apache.tika.pipes.pipesiterator.PipesIterator;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes2.dex */
public class FileListPipesIterator extends PipesIterator {
    @Field
    private String fileList;
    private Path fileListPath;
    @Field
    private boolean hasHeader = false;

    @Override // org.apache.tika.pipes.pipesiterator.PipesIterator, org.apache.tika.config.Initializable
    public void checkInitialization(InitializableProblemHandler initializableProblemHandler) {
        Path path;
        boolean isRegularFile;
        TikaConfig.mustNotBeEmpty("fileList", this.fileList);
        TikaConfig.mustNotBeEmpty("fetcherName", getFetcherName());
        TikaConfig.mustNotBeEmpty("emitterName", getFetcherName());
        path = Paths.get(this.fileList, new String[0]);
        this.fileListPath = path;
        isRegularFile = Files.isRegularFile(path, new LinkOption[0]);
        if (isRegularFile) {
            return;
        }
        String str = this.fileList;
        throw new TikaConfigException("file list " + str + " does not exist. Must specify an existing file");
    }

    @Override // org.apache.tika.pipes.pipesiterator.PipesIterator
    protected void enqueue() {
        BufferedReader newBufferedReader;
        newBufferedReader = Files.newBufferedReader(this.fileListPath, StandardCharsets.UTF_8);
        try {
            if (this.hasHeader) {
                newBufferedReader.readLine();
            }
            for (String readLine = newBufferedReader.readLine(); readLine != null; readLine = newBufferedReader.readLine()) {
                if (!readLine.startsWith("#") && !StringUtils.isBlank(readLine)) {
                    FetchKey fetchKey = new FetchKey(getFetcherName(), readLine);
                    EmitKey emitKey = new EmitKey(getEmitterName(), readLine);
                    ParseContext parseContext = new ParseContext();
                    parseContext.set(HandlerConfig.class, getHandlerConfig());
                    tryToAdd(new FetchEmitTuple(readLine, fetchKey, emitKey, new Metadata(), parseContext, getOnParseException()));
                }
            }
            newBufferedReader.close();
        } catch (Throwable th) {
            if (newBufferedReader != null) {
                try {
                    newBufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Field
    public void setFileList(String str) {
        this.fileList = str;
    }

    @Field
    public void setHasHeader(boolean z10) {
        this.hasHeader = z10;
    }
}
