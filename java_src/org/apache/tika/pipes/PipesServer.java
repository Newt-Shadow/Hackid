package org.apache.tika.pipes;

import cf.g;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;
import org.apache.commons.io.input.h;
import org.apache.tika.config.TikaConfig;
import org.apache.tika.detect.Detector;
import org.apache.tika.exception.TikaConfigException;
import org.apache.tika.exception.TikaException;
import org.apache.tika.extractor.BasicEmbeddedDocumentBytesHandler;
import org.apache.tika.extractor.EmbeddedDocumentByteStoreExtractorFactory;
import org.apache.tika.extractor.EmbeddedDocumentBytesHandler;
import org.apache.tika.extractor.EmbeddedDocumentExtractor;
import org.apache.tika.extractor.EmbeddedDocumentExtractorFactory;
import org.apache.tika.extractor.RUnpackExtractor;
import org.apache.tika.extractor.RUnpackExtractorFactory;
import org.apache.tika.io.TemporaryResources;
import org.apache.tika.io.TikaInputStream;
import org.apache.tika.metadata.HttpHeaders;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.metadata.TikaCoreProperties;
import org.apache.tika.metadata.filter.MetadataFilter;
import org.apache.tika.metadata.listfilter.MetadataListFilter;
import org.apache.tika.metadata.listfilter.NoOpListFilter;
import org.apache.tika.mime.MediaType;
import org.apache.tika.parser.AutoDetectParser;
import org.apache.tika.parser.DigestingParser;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.parser.Parser;
import org.apache.tika.parser.RecursiveParserWrapper;
import org.apache.tika.pipes.FetchEmitTuple;
import org.apache.tika.pipes.HandlerConfig;
import org.apache.tika.pipes.emitter.EmitData;
import org.apache.tika.pipes.emitter.EmitKey;
import org.apache.tika.pipes.emitter.Emitter;
import org.apache.tika.pipes.emitter.EmitterManager;
import org.apache.tika.pipes.emitter.StreamEmitter;
import org.apache.tika.pipes.extractor.EmbeddedDocumentBytesConfig;
import org.apache.tika.pipes.extractor.EmittingEmbeddedDocumentBytesHandler;
import org.apache.tika.pipes.fetcher.Fetcher;
import org.apache.tika.pipes.fetcher.FetcherManager;
import org.apache.tika.utils.ExceptionUtils;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes2.dex */
public class PipesServer implements Runnable {
    private static final mf.c LOG = mf.e.l(PipesServer.class);
    public static final int TIMEOUT_EXIT_CODE = 17;
    private Parser autoDetectParser;
    private Detector detector;
    private DigestingParser.Digester digester;
    private EmitterManager emitterManager;
    private FetcherManager fetcherManager;
    private final DataInputStream input;
    private final long maxForEmitBatchBytes;
    private final DataOutputStream output;
    private Parser rMetaParser;
    private final long serverParseTimeoutMillis;
    private final long serverWaitTimeoutMillis;
    private TikaConfig tikaConfig;
    private final Path tikaConfigPath;
    private final Object[] lock = new Object[0];
    private long checkForTimeoutMs = 1000;
    private volatile boolean parsing = false;
    private volatile long since = System.currentTimeMillis();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class MetadataListAndEmbeddedBytes {
        final Optional<EmbeddedDocumentBytesHandler> embeddedDocumentBytesHandler;
        List<Metadata> metadataList;

        public MetadataListAndEmbeddedBytes(List<Metadata> list, EmbeddedDocumentBytesHandler embeddedDocumentBytesHandler) {
            this.metadataList = list;
            this.embeddedDocumentBytesHandler = Optional.ofNullable(embeddedDocumentBytesHandler);
        }

        public void filter(MetadataListFilter metadataListFilter) {
            this.metadataList = metadataListFilter.filter(this.metadataList);
        }

        public EmbeddedDocumentBytesHandler getEmbeddedDocumentBytesHandler() {
            return this.embeddedDocumentBytesHandler.get();
        }

        public List<Metadata> getMetadataList() {
            return this.metadataList;
        }

        public boolean hasEmbeddedDocumentByteStore() {
            return this.embeddedDocumentBytesHandler.isPresent();
        }

        public boolean toBePackagedForStreamEmitter() {
            return !(this.embeddedDocumentBytesHandler.get() instanceof EmittingEmbeddedDocumentBytesHandler);
        }
    }

    /* loaded from: classes2.dex */
    public enum STATUS {
        READY,
        CALL,
        PING,
        FAILED_TO_START,
        FETCHER_NOT_FOUND,
        EMITTER_NOT_FOUND,
        FETCHER_INITIALIZATION_EXCEPTION,
        FETCH_EXCEPTION,
        PARSE_SUCCESS,
        PARSE_EXCEPTION_NO_EMIT,
        EMIT_SUCCESS,
        EMIT_SUCCESS_PARSE_EXCEPTION,
        EMIT_EXCEPTION,
        OOM,
        TIMEOUT,
        EMPTY_OUTPUT,
        INTERMEDIATE_RESULT;

        public static STATUS lookup(int i10) {
            int i11 = i10 - 1;
            if (i11 >= 0) {
                STATUS[] values = values();
                if (i11 < values.length) {
                    return values[i11];
                }
                throw new IllegalArgumentException("byte with index " + i11 + " must be < " + values.length);
            }
            throw new IllegalArgumentException("byte must be > 0");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public byte getByte() {
            return (byte) (ordinal() + 1);
        }
    }

    public PipesServer(Path path, InputStream inputStream, PrintStream printStream, long j10, long j11, long j12) {
        this.tikaConfigPath = path;
        this.input = new DataInputStream(inputStream);
        this.output = new DataOutputStream(printStream);
        this.maxForEmitBatchBytes = j10;
        this.serverParseTimeoutMillis = j11;
        this.serverWaitTimeoutMillis = j12;
    }

    private void _preParse(FetchEmitTuple fetchEmitTuple, TikaInputStream tikaInputStream, Metadata metadata, ParseContext parseContext) {
        InputStream newInputStream;
        DigestingParser.Digester digester = this.digester;
        if (digester != null) {
            try {
                digester.digest(tikaInputStream, metadata, parseContext);
            } catch (IOException e10) {
                mf.c cVar = LOG;
                String id2 = fetchEmitTuple.getId();
                cVar.u("problem digesting: " + id2, e10);
            }
        }
        try {
            MediaType detect = this.detector.detect(tikaInputStream, metadata);
            metadata.set(HttpHeaders.CONTENT_TYPE, detect.toString());
            metadata.set(TikaCoreProperties.CONTENT_TYPE_PARSER_OVERRIDE, detect.toString());
        } catch (IOException e11) {
            mf.c cVar2 = LOG;
            String id3 = fetchEmitTuple.getId();
            cVar2.u("problem detecting: " + id3, e11);
        }
        EmbeddedDocumentBytesConfig embeddedDocumentBytesConfig = (EmbeddedDocumentBytesConfig) parseContext.get(EmbeddedDocumentBytesConfig.class);
        if (embeddedDocumentBytesConfig != null && embeddedDocumentBytesConfig.isIncludeOriginal()) {
            EmbeddedDocumentBytesHandler embeddedDocumentBytesHandler = (EmbeddedDocumentBytesHandler) parseContext.get(EmbeddedDocumentBytesHandler.class);
            try {
                newInputStream = Files.newInputStream(tikaInputStream.getPath(), new OpenOption[0]);
                embeddedDocumentBytesHandler.add(0, metadata, newInputStream);
                if (newInputStream != null) {
                    newInputStream.close();
                }
            } catch (IOException e12) {
                LOG.u("problem reading source file into embedded document byte store", e12);
            }
        }
    }

    private void actuallyParse(FetchEmitTuple fetchEmitTuple) {
        MetadataListAndEmbeddedBytes metadataListAndEmbeddedBytes;
        long currentTimeMillis = System.currentTimeMillis();
        Fetcher fetcher = getFetcher(fetchEmitTuple);
        if (fetcher == null) {
            return;
        }
        mf.c cVar = LOG;
        if (cVar.n()) {
            cVar.f("timer -- got fetcher: {}ms", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        try {
            metadataListAndEmbeddedBytes = parseFromTuple(fetchEmitTuple, fetcher);
            try {
                if (cVar.n()) {
                    cVar.f("timer -- to parse: {} ms", Long.valueOf(System.currentTimeMillis() - currentTimeMillis2));
                }
                if (metadataListAndEmbeddedBytes != null && !metadataIsEmpty(metadataListAndEmbeddedBytes.getMetadataList())) {
                    emitParseData(fetchEmitTuple, metadataListAndEmbeddedBytes);
                    if (metadataListAndEmbeddedBytes.hasEmbeddedDocumentByteStore() && (metadataListAndEmbeddedBytes.getEmbeddedDocumentBytesHandler() instanceof Closeable)) {
                        try {
                            metadataListAndEmbeddedBytes.getEmbeddedDocumentBytesHandler().close();
                            return;
                        } catch (IOException e10) {
                            LOG.u("problem closing embedded document byte store", e10);
                            return;
                        }
                    }
                    return;
                }
                write(STATUS.EMPTY_OUTPUT);
                if (metadataListAndEmbeddedBytes != null && metadataListAndEmbeddedBytes.hasEmbeddedDocumentByteStore() && (metadataListAndEmbeddedBytes.getEmbeddedDocumentBytesHandler() instanceof Closeable)) {
                    try {
                        metadataListAndEmbeddedBytes.getEmbeddedDocumentBytesHandler().close();
                    } catch (IOException e11) {
                        LOG.u("problem closing embedded document byte store", e11);
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (metadataListAndEmbeddedBytes != null && metadataListAndEmbeddedBytes.hasEmbeddedDocumentByteStore() && (metadataListAndEmbeddedBytes.getEmbeddedDocumentBytesHandler() instanceof Closeable)) {
                    try {
                        metadataListAndEmbeddedBytes.getEmbeddedDocumentBytesHandler().close();
                    } catch (IOException e12) {
                        LOG.u("problem closing embedded document byte store", e12);
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            metadataListAndEmbeddedBytes = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void emit(java.lang.String r3, org.apache.tika.pipes.emitter.EmitKey r4, boolean r5, org.apache.tika.pipes.PipesServer.MetadataListAndEmbeddedBytes r6, java.lang.String r7, org.apache.tika.parser.ParseContext r8) {
        /*
            r2 = this;
            org.apache.tika.pipes.emitter.EmitterManager r0 = r2.emitterManager     // Catch: java.lang.IllegalArgumentException -> L53
            java.lang.String r1 = r4.getEmitterName()     // Catch: java.lang.IllegalArgumentException -> L53
            org.apache.tika.pipes.emitter.Emitter r3 = r0.getEmitter(r1)     // Catch: java.lang.IllegalArgumentException -> L53
            if (r5 == 0) goto L16
            boolean r5 = r6.toBePackagedForStreamEmitter()     // Catch: org.apache.tika.pipes.emitter.TikaEmitterException -> L39 java.io.IOException -> L3b
            if (r5 == 0) goto L16
            r2.emitContentsAndBytes(r3, r4, r6)     // Catch: org.apache.tika.pipes.emitter.TikaEmitterException -> L39 java.io.IOException -> L3b
            goto L21
        L16:
            java.lang.String r4 = r4.getEmitKey()     // Catch: org.apache.tika.pipes.emitter.TikaEmitterException -> L39 java.io.IOException -> L3b
            java.util.List r5 = r6.getMetadataList()     // Catch: org.apache.tika.pipes.emitter.TikaEmitterException -> L39 java.io.IOException -> L3b
            r3.emit(r4, r5, r8)     // Catch: org.apache.tika.pipes.emitter.TikaEmitterException -> L39 java.io.IOException -> L3b
        L21:
            boolean r3 = org.apache.tika.utils.StringUtils.isBlank(r7)
            if (r3 == 0) goto L2d
            org.apache.tika.pipes.PipesServer$STATUS r3 = org.apache.tika.pipes.PipesServer.STATUS.EMIT_SUCCESS
            r2.write(r3)
            goto L38
        L2d:
            org.apache.tika.pipes.PipesServer$STATUS r3 = org.apache.tika.pipes.PipesServer.STATUS.EMIT_SUCCESS_PARSE_EXCEPTION
            java.nio.charset.Charset r4 = java.nio.charset.StandardCharsets.UTF_8
            byte[] r4 = r7.getBytes(r4)
            r2.write(r3, r4)
        L38:
            return
        L39:
            r3 = move-exception
            goto L3c
        L3b:
            r3 = move-exception
        L3c:
            mf.c r4 = org.apache.tika.pipes.PipesServer.LOG
            java.lang.String r5 = "emit exception"
            r4.u(r5, r3)
            java.lang.String r3 = org.apache.tika.utils.ExceptionUtils.getStackTrace(r3)
            java.nio.charset.Charset r4 = java.nio.charset.StandardCharsets.UTF_8
            byte[] r3 = r3.getBytes(r4)
            org.apache.tika.pipes.PipesServer$STATUS r4 = org.apache.tika.pipes.PipesServer.STATUS.EMIT_EXCEPTION
            r2.write(r4, r3)
            return
        L53:
            java.lang.String r3 = r2.getNoEmitterMsg(r3)
            mf.c r4 = org.apache.tika.pipes.PipesServer.LOG
            r4.x(r3)
            org.apache.tika.pipes.PipesServer$STATUS r4 = org.apache.tika.pipes.PipesServer.STATUS.EMITTER_NOT_FOUND
            r2.write(r4, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.tika.pipes.PipesServer.emit(java.lang.String, org.apache.tika.pipes.emitter.EmitKey, boolean, org.apache.tika.pipes.PipesServer$MetadataListAndEmbeddedBytes, java.lang.String, org.apache.tika.parser.ParseContext):void");
    }

    private void emitContentsAndBytes(Emitter emitter, EmitKey emitKey, MetadataListAndEmbeddedBytes metadataListAndEmbeddedBytes) {
        if (!(emitter instanceof StreamEmitter)) {
            Class<?> cls = emitter.getClass();
            throw new IllegalArgumentException("The emitter for embedded document byte store must be a StreamEmitter. I see: " + cls);
        }
        throw new UnsupportedOperationException("this is not yet implemented");
    }

    private void emitParseData(FetchEmitTuple fetchEmitTuple, MetadataListAndEmbeddedBytes metadataListAndEmbeddedBytes) {
        EmitKey emitKey;
        long currentTimeMillis = System.currentTimeMillis();
        String containerStacktrace = getContainerStacktrace(fetchEmitTuple, metadataListAndEmbeddedBytes.getMetadataList());
        filterMetadata(fetchEmitTuple, metadataListAndEmbeddedBytes.getMetadataList());
        filterMetadataList(fetchEmitTuple, metadataListAndEmbeddedBytes);
        ParseContext parseContext = fetchEmitTuple.getParseContext();
        FetchEmitTuple.ON_PARSE_EXCEPTION onParseException = fetchEmitTuple.getOnParseException();
        EmbeddedDocumentBytesConfig embeddedDocumentBytesConfig = (EmbeddedDocumentBytesConfig) parseContext.get(EmbeddedDocumentBytesConfig.class);
        if (!StringUtils.isBlank(containerStacktrace) && onParseException != FetchEmitTuple.ON_PARSE_EXCEPTION.EMIT) {
            write(STATUS.PARSE_EXCEPTION_NO_EMIT, containerStacktrace);
            return;
        }
        injectUserMetadata(fetchEmitTuple.getMetadata(), metadataListAndEmbeddedBytes.getMetadataList());
        EmitKey emitKey2 = fetchEmitTuple.getEmitKey();
        if (StringUtils.isBlank(emitKey2.getEmitKey())) {
            EmitKey emitKey3 = new EmitKey(emitKey2.getEmitterName(), fetchEmitTuple.getFetchKey().getFetchKey());
            fetchEmitTuple.setEmitKey(emitKey3);
            emitKey = emitKey3;
        } else {
            emitKey = emitKey2;
        }
        EmitData emitData = new EmitData(fetchEmitTuple.getEmitKey(), metadataListAndEmbeddedBytes.getMetadataList(), containerStacktrace);
        if (embeddedDocumentBytesConfig.isExtractEmbeddedDocumentBytes() && metadataListAndEmbeddedBytes.toBePackagedForStreamEmitter()) {
            emit(fetchEmitTuple.getId(), emitKey, embeddedDocumentBytesConfig.isExtractEmbeddedDocumentBytes(), metadataListAndEmbeddedBytes, containerStacktrace, parseContext);
        } else if (this.maxForEmitBatchBytes >= 0 && emitData.getEstimatedSizeBytes() >= this.maxForEmitBatchBytes) {
            emit(fetchEmitTuple.getId(), emitKey, embeddedDocumentBytesConfig.isExtractEmbeddedDocumentBytes(), metadataListAndEmbeddedBytes, containerStacktrace, parseContext);
        } else {
            write(emitData);
        }
        mf.c cVar = LOG;
        if (cVar.n()) {
            cVar.f("timer -- emitted: {} ms", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
        }
    }

    private void exit(int i10) {
        if (i10 != 0) {
            LOG.r("exiting: {}", Integer.valueOf(i10));
        } else {
            LOG.a("exiting: {}", Integer.valueOf(i10));
        }
        System.exit(i10);
    }

    private void filterMetadata(FetchEmitTuple fetchEmitTuple, List<Metadata> list) {
        MetadataFilter metadataFilter = (MetadataFilter) fetchEmitTuple.getParseContext().get(MetadataFilter.class);
        if (metadataFilter == null) {
            metadataFilter = this.tikaConfig.getMetadataFilter();
        }
        for (Metadata metadata : list) {
            try {
                metadataFilter.filter(metadata);
            } catch (TikaException e10) {
                LOG.u("failed to filter metadata", e10);
            }
        }
    }

    private void filterMetadataList(FetchEmitTuple fetchEmitTuple, MetadataListAndEmbeddedBytes metadataListAndEmbeddedBytes) {
        MetadataListFilter metadataListFilter = (MetadataListFilter) fetchEmitTuple.getParseContext().get(MetadataListFilter.class);
        if (metadataListFilter == null) {
            metadataListFilter = this.tikaConfig.getMetadataListFilter();
        }
        if (metadataListFilter instanceof NoOpListFilter) {
            return;
        }
        try {
            metadataListAndEmbeddedBytes.filter(metadataListFilter);
        } catch (TikaException e10) {
            LOG.u("failed to filter metadata list", e10);
        }
    }

    private String getContainerStacktrace(FetchEmitTuple fetchEmitTuple, List<Metadata> list) {
        String str;
        if (metadataIsEmpty(list) || (str = list.get(0).get(TikaCoreProperties.CONTAINER_EXCEPTION)) == null) {
            return "";
        }
        return str;
    }

    private Fetcher getFetcher(FetchEmitTuple fetchEmitTuple) {
        try {
            return this.fetcherManager.getFetcher(fetchEmitTuple.getFetchKey().getFetcherName());
        } catch (IOException e10) {
            e = e10;
            mf.c cVar = LOG;
            String id2 = fetchEmitTuple.getId();
            cVar.u("Couldn't initialize fetcher for fetch id '" + id2 + "'", e);
            write(STATUS.FETCHER_INITIALIZATION_EXCEPTION, ExceptionUtils.getStackTrace(e));
            return null;
        } catch (IllegalArgumentException unused) {
            String noFetcherMsg = getNoFetcherMsg(fetchEmitTuple.getFetchKey().getFetcherName());
            LOG.x(noFetcherMsg);
            write(STATUS.FETCHER_NOT_FOUND, noFetcherMsg);
            return null;
        } catch (TikaException e11) {
            e = e11;
            mf.c cVar2 = LOG;
            String id22 = fetchEmitTuple.getId();
            cVar2.u("Couldn't initialize fetcher for fetch id '" + id22 + "'", e);
            write(STATUS.FETCHER_INITIALIZATION_EXCEPTION, ExceptionUtils.getStackTrace(e));
            return null;
        }
    }

    private String getNoEmitterMsg(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Emitter '");
        sb2.append(str);
        sb2.append("'");
        sb2.append(" not found.");
        sb2.append("\nThe configured emitterManager supports:");
        int i10 = 0;
        for (String str2 : this.emitterManager.getSupported()) {
            int i11 = i10 + 1;
            if (i10 > 0) {
                sb2.append(", ");
            }
            sb2.append(str2);
            i10 = i11;
        }
        return sb2.toString();
    }

    private String getNoFetcherMsg(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Fetcher '");
        sb2.append(str);
        sb2.append("'");
        sb2.append(" not found.");
        sb2.append("\nThe configured FetcherManager supports:");
        int i10 = 0;
        for (String str2 : this.fetcherManager.getSupported()) {
            int i11 = i10 + 1;
            if (i10 > 0) {
                sb2.append(", ");
            }
            sb2.append(str2);
            i10 = i11;
        }
        return sb2.toString();
    }

    private void handleOOM(String str, OutOfMemoryError outOfMemoryError) {
        write(STATUS.OOM);
        mf.c cVar = LOG;
        cVar.g("oom: " + str, outOfMemoryError);
        exit(1);
    }

    private void injectUserMetadata(Metadata metadata, List<Metadata> list) {
        String[] names;
        for (String str : metadata.names()) {
            list.get(0).set(str, (String) null);
            for (String str2 : metadata.getValues(str)) {
                list.get(0).add(str, str2);
            }
        }
    }

    public static void main(String[] strArr) {
        Path path;
        try {
            path = Paths.get(strArr[0], new String[0]);
            PipesServer pipesServer = new PipesServer(path, System.in, System.out, Long.parseLong(strArr[1]), Long.parseLong(strArr[2]), Long.parseLong(strArr[3]));
            System.setIn(h.a().m(new byte[0]).l());
            System.setOut(System.err);
            Thread thread = new Thread(pipesServer, "Tika Watchdog");
            thread.setDaemon(true);
            thread.start();
            pipesServer.processRequests();
        } finally {
            LOG.w("server shutting down");
        }
    }

    private boolean metadataIsEmpty(List<Metadata> list) {
        if (list != null && list.size() != 0) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0083, code lost:
        if (r11.n() == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d6, code lost:
        if (r11.n() == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x010c, code lost:
        if (r11.n() == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x010e, code lost:
        r11.f("timer -- parse only time: {} ms", java.lang.Long.valueOf(java.lang.System.currentTimeMillis() - r2));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<org.apache.tika.metadata.Metadata> parseConcatenated(org.apache.tika.pipes.FetchEmitTuple r7, org.apache.tika.pipes.HandlerConfig r8, java.io.InputStream r9, org.apache.tika.metadata.Metadata r10, org.apache.tika.parser.ParseContext r11) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.tika.pipes.PipesServer.parseConcatenated(org.apache.tika.pipes.FetchEmitTuple, org.apache.tika.pipes.HandlerConfig, java.io.InputStream, org.apache.tika.metadata.Metadata, org.apache.tika.parser.ParseContext):java.util.List");
    }

    private void parseOne() {
        synchronized (this.lock) {
            this.parsing = true;
            this.since = System.currentTimeMillis();
        }
        FetchEmitTuple fetchEmitTuple = null;
        try {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                fetchEmitTuple = readFetchEmitTuple();
                mf.c cVar = LOG;
                if (cVar.n()) {
                    cVar.f("timer -- read fetchEmitTuple: {} ms", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                }
                long currentTimeMillis2 = System.currentTimeMillis();
                actuallyParse(fetchEmitTuple);
                if (cVar.n()) {
                    cVar.f("timer -- actually parsed: {} ms", Long.valueOf(System.currentTimeMillis() - currentTimeMillis2));
                }
                synchronized (this.lock) {
                    this.parsing = false;
                    this.since = System.currentTimeMillis();
                }
            } catch (OutOfMemoryError e10) {
                handleOOM(fetchEmitTuple.getId(), e10);
                synchronized (this.lock) {
                    this.parsing = false;
                    this.since = System.currentTimeMillis();
                }
            }
        } catch (Throwable th) {
            synchronized (this.lock) {
                this.parsing = false;
                this.since = System.currentTimeMillis();
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0060, code lost:
        if (r9.n() == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x009e, code lost:
        if (r9.n() == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c0, code lost:
        if (r9.n() == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00c2, code lost:
        r9.f("timer -- parse only time: {} ms", java.lang.Long.valueOf(java.lang.System.currentTimeMillis() - r2));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<org.apache.tika.metadata.Metadata> parseRecursive(org.apache.tika.pipes.FetchEmitTuple r7, org.apache.tika.pipes.HandlerConfig r8, java.io.InputStream r9, org.apache.tika.metadata.Metadata r10, org.apache.tika.parser.ParseContext r11) {
        /*
            r6 = this;
            java.lang.String r0 = "timer -- parse only time: {} ms"
            org.apache.tika.sax.RecursiveParserWrapperHandler r1 = new org.apache.tika.sax.RecursiveParserWrapperHandler
            org.apache.tika.sax.BasicContentHandlerFactory r2 = new org.apache.tika.sax.BasicContentHandlerFactory
            org.apache.tika.sax.BasicContentHandlerFactory$HANDLER_TYPE r3 = r8.getType()
            int r4 = r8.getWriteLimit()
            boolean r5 = r8.isThrowOnWriteLimitReached()
            r2.<init>(r3, r4, r5, r11)
            int r8 = r8.getMaxEmbeddedResources()
            r1.<init>(r2, r8)
            long r2 = java.lang.System.currentTimeMillis()
            r6.preParse(r7, r9, r10, r11)
            org.apache.tika.parser.Parser r8 = r6.rMetaParser     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L41 java.lang.SecurityException -> L63 org.apache.tika.exception.EncryptedDocumentException -> L7f org.xml.sax.SAXException -> La1
            r8.parse(r9, r1, r10, r11)     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L41 java.lang.SecurityException -> L63 org.apache.tika.exception.EncryptedDocumentException -> L7f org.xml.sax.SAXException -> La1
            mf.c r7 = org.apache.tika.pipes.PipesServer.LOG
            boolean r8 = r7.n()
            if (r8 == 0) goto Lce
            long r8 = java.lang.System.currentTimeMillis()
            long r8 = r8 - r2
            java.lang.Long r8 = java.lang.Long.valueOf(r8)
            r7.f(r0, r8)
            goto Lce
        L3e:
            r7 = move-exception
            goto Ld3
        L41:
            r8 = move-exception
            mf.c r9 = org.apache.tika.pipes.PipesServer.LOG     // Catch: java.lang.Throwable -> L3e
            java.lang.String r7 = r7.getId()     // Catch: java.lang.Throwable -> L3e
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3e
            r10.<init>()     // Catch: java.lang.Throwable -> L3e
            java.lang.String r11 = "parse exception: "
            r10.append(r11)     // Catch: java.lang.Throwable -> L3e
            r10.append(r7)     // Catch: java.lang.Throwable -> L3e
            java.lang.String r7 = r10.toString()     // Catch: java.lang.Throwable -> L3e
            r9.u(r7, r8)     // Catch: java.lang.Throwable -> L3e
            boolean r7 = r9.n()
            if (r7 == 0) goto Lce
            goto Lc2
        L63:
            r8 = move-exception
            mf.c r9 = org.apache.tika.pipes.PipesServer.LOG     // Catch: java.lang.Throwable -> L3e
            java.lang.String r7 = r7.getId()     // Catch: java.lang.Throwable -> L3e
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3e
            r10.<init>()     // Catch: java.lang.Throwable -> L3e
            java.lang.String r11 = "security exception:"
            r10.append(r11)     // Catch: java.lang.Throwable -> L3e
            r10.append(r7)     // Catch: java.lang.Throwable -> L3e
            java.lang.String r7 = r10.toString()     // Catch: java.lang.Throwable -> L3e
            r9.u(r7, r8)     // Catch: java.lang.Throwable -> L3e
            throw r8     // Catch: java.lang.Throwable -> L3e
        L7f:
            r8 = move-exception
            mf.c r9 = org.apache.tika.pipes.PipesServer.LOG     // Catch: java.lang.Throwable -> L3e
            java.lang.String r7 = r7.getId()     // Catch: java.lang.Throwable -> L3e
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3e
            r10.<init>()     // Catch: java.lang.Throwable -> L3e
            java.lang.String r11 = "encrypted document:"
            r10.append(r11)     // Catch: java.lang.Throwable -> L3e
            r10.append(r7)     // Catch: java.lang.Throwable -> L3e
            java.lang.String r7 = r10.toString()     // Catch: java.lang.Throwable -> L3e
            r9.u(r7, r8)     // Catch: java.lang.Throwable -> L3e
            boolean r7 = r9.n()
            if (r7 == 0) goto Lce
            goto Lc2
        La1:
            r8 = move-exception
            mf.c r9 = org.apache.tika.pipes.PipesServer.LOG     // Catch: java.lang.Throwable -> L3e
            java.lang.String r7 = r7.getId()     // Catch: java.lang.Throwable -> L3e
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3e
            r10.<init>()     // Catch: java.lang.Throwable -> L3e
            java.lang.String r11 = "sax problem:"
            r10.append(r11)     // Catch: java.lang.Throwable -> L3e
            r10.append(r7)     // Catch: java.lang.Throwable -> L3e
            java.lang.String r7 = r10.toString()     // Catch: java.lang.Throwable -> L3e
            r9.u(r7, r8)     // Catch: java.lang.Throwable -> L3e
            boolean r7 = r9.n()
            if (r7 == 0) goto Lce
        Lc2:
            long r7 = java.lang.System.currentTimeMillis()
            long r7 = r7 - r2
            java.lang.Long r7 = java.lang.Long.valueOf(r7)
            r9.f(r0, r7)
        Lce:
            java.util.List r7 = r1.getMetadataList()
            return r7
        Ld3:
            mf.c r8 = org.apache.tika.pipes.PipesServer.LOG
            boolean r9 = r8.n()
            if (r9 == 0) goto Le7
            long r9 = java.lang.System.currentTimeMillis()
            long r9 = r9 - r2
            java.lang.Long r9 = java.lang.Long.valueOf(r9)
            r8.f(r0, r9)
        Le7:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.tika.pipes.PipesServer.parseRecursive(org.apache.tika.pipes.FetchEmitTuple, org.apache.tika.pipes.HandlerConfig, java.io.InputStream, org.apache.tika.metadata.Metadata, org.apache.tika.parser.ParseContext):java.util.List");
    }

    private MetadataListAndEmbeddedBytes parseWithStream(FetchEmitTuple fetchEmitTuple, InputStream inputStream, Metadata metadata) {
        List<Metadata> parseConcatenated;
        ParseContext parseContext = setupParseContext(fetchEmitTuple);
        HandlerConfig handlerConfig = (HandlerConfig) parseContext.get(HandlerConfig.class);
        if (handlerConfig.getParseMode() == HandlerConfig.PARSE_MODE.RMETA) {
            parseConcatenated = parseRecursive(fetchEmitTuple, handlerConfig, inputStream, metadata, parseContext);
        } else {
            parseConcatenated = parseConcatenated(fetchEmitTuple, handlerConfig, inputStream, metadata, parseContext);
        }
        return new MetadataListAndEmbeddedBytes(parseConcatenated, (EmbeddedDocumentBytesHandler) parseContext.get(EmbeddedDocumentBytesHandler.class));
    }

    private void preParse(FetchEmitTuple fetchEmitTuple, InputStream inputStream, Metadata metadata, ParseContext parseContext) {
        try {
            TikaInputStream cast = TikaInputStream.cast(inputStream);
            if (cast == null) {
                cast = TikaInputStream.get(inputStream, (TemporaryResources) null, metadata);
            }
            _preParse(fetchEmitTuple, cast, metadata, parseContext);
            g.i(null);
            writeIntermediate(fetchEmitTuple.getEmitKey(), metadata);
        } catch (Throwable th) {
            g.i(null);
            throw th;
        }
    }

    private FetchEmitTuple readFetchEmitTuple() {
        try {
            byte[] bArr = new byte[this.input.readInt()];
            this.input.readFully(bArr);
            ObjectInputStream objectInputStream = new ObjectInputStream(h.a().m(bArr).l());
            FetchEmitTuple fetchEmitTuple = (FetchEmitTuple) objectInputStream.readObject();
            objectInputStream.close();
            return fetchEmitTuple;
        } catch (IOException e10) {
            LOG.g("problem reading tuple", e10);
            exit(1);
            return null;
        } catch (ClassNotFoundException e11) {
            LOG.g("can't find class?!", e11);
            exit(1);
            return null;
        }
    }

    private ParseContext setupParseContext(FetchEmitTuple fetchEmitTuple) {
        ParseContext parseContext = fetchEmitTuple.getParseContext();
        if (parseContext.get(HandlerConfig.class) == null) {
            parseContext.set(HandlerConfig.class, HandlerConfig.DEFAULT_HANDLER_CONFIG);
        }
        EmbeddedDocumentBytesConfig embeddedDocumentBytesConfig = (EmbeddedDocumentBytesConfig) parseContext.get(EmbeddedDocumentBytesConfig.class);
        if (embeddedDocumentBytesConfig == null) {
            parseContext.set(EmbeddedDocumentBytesConfig.class, EmbeddedDocumentBytesConfig.SKIP);
            return parseContext;
        }
        EmbeddedDocumentExtractorFactory embeddedDocumentExtractorFactory = ((AutoDetectParser) this.autoDetectParser).getAutoDetectParserConfig().getEmbeddedDocumentExtractorFactory();
        if (embeddedDocumentExtractorFactory == null) {
            parseContext.set(EmbeddedDocumentExtractor.class, new RUnpackExtractor(parseContext, RUnpackExtractorFactory.DEFAULT_MAX_EMBEDDED_BYTES_FOR_EXTRACTION));
        } else if (!(embeddedDocumentExtractorFactory instanceof EmbeddedDocumentByteStoreExtractorFactory)) {
            Class<?> cls = embeddedDocumentExtractorFactory.getClass();
            throw new TikaConfigException("EmbeddedDocumentExtractorFactory must be an instance of EmbeddedDocumentByteStoreExtractorFactory if you wantto extract embedded bytes! I see this embedded doc factory: " + cls + "and a request: " + embeddedDocumentBytesConfig);
        }
        if (!StringUtils.isBlank(embeddedDocumentBytesConfig.getEmitter())) {
            parseContext.set(EmbeddedDocumentBytesHandler.class, new EmittingEmbeddedDocumentBytesHandler(fetchEmitTuple, this.emitterManager));
        } else {
            parseContext.set(EmbeddedDocumentBytesHandler.class, new BasicEmbeddedDocumentBytesHandler(embeddedDocumentBytesConfig));
        }
        return parseContext;
    }

    private void write(EmitData emitData) {
        try {
            gf.e l10 = gf.e.j().l();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(l10);
            objectOutputStream.writeObject(emitData);
            objectOutputStream.close();
            write(STATUS.PARSE_SUCCESS, l10.b());
        } catch (IOException e10) {
            LOG.g("problem writing emit data (forking process shutdown?)", e10);
            exit(1);
        }
    }

    private void writeIntermediate(EmitKey emitKey, Metadata metadata) {
        try {
            gf.e l10 = gf.e.j().l();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(l10);
            objectOutputStream.writeObject(metadata);
            objectOutputStream.close();
            write(STATUS.INTERMEDIATE_RESULT, l10.b());
        } catch (IOException e10) {
            LOG.g("problem writing intermediate data (forking process shutdown?)", e10);
            exit(1);
        }
    }

    protected void initializeResources() {
        this.tikaConfig = new TikaConfig(this.tikaConfigPath);
        this.fetcherManager = FetcherManager.load(this.tikaConfigPath);
        if (this.maxForEmitBatchBytes > -1) {
            this.emitterManager = EmitterManager.load(this.tikaConfigPath);
        } else {
            LOG.m("'maxForEmitBatchBytes' < 0. Not initializing emitters in PipesServer");
            this.emitterManager = null;
        }
        AutoDetectParser autoDetectParser = new AutoDetectParser(this.tikaConfig);
        this.autoDetectParser = autoDetectParser;
        if (autoDetectParser.getAutoDetectParserConfig().getDigesterFactory() != null) {
            this.digester = ((AutoDetectParser) this.autoDetectParser).getAutoDetectParserConfig().getDigesterFactory().build();
            ((AutoDetectParser) this.autoDetectParser).getAutoDetectParserConfig().getDigesterFactory().setSkipContainerDocument(true);
            if (((AutoDetectParser) this.autoDetectParser).getAutoDetectParserConfig().getEmbeddedDocumentExtractorFactory() == null) {
                ((AutoDetectParser) this.autoDetectParser).getAutoDetectParserConfig().setEmbeddedDocumentExtractorFactory(new RUnpackExtractorFactory());
            }
        }
        this.detector = ((AutoDetectParser) this.autoDetectParser).getDetector();
        this.rMetaParser = new RecursiveParserWrapper(this.autoDetectParser);
    }

    protected MetadataListAndEmbeddedBytes parseFromTuple(FetchEmitTuple fetchEmitTuple, Fetcher fetcher) {
        Metadata metadata = new Metadata();
        try {
            InputStream fetch = fetcher.fetch(fetchEmitTuple.getFetchKey().getFetchKey(), metadata, fetchEmitTuple.getParseContext());
            try {
                MetadataListAndEmbeddedBytes parseWithStream = parseWithStream(fetchEmitTuple, fetch, metadata);
                if (fetch != null) {
                    fetch.close();
                }
                return parseWithStream;
            } catch (Throwable th) {
                if (fetch != null) {
                    try {
                        fetch.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException e10) {
            e = e10;
            mf.c cVar = LOG;
            String id2 = fetchEmitTuple.getId();
            cVar.u("fetch exception " + id2, e);
            write(STATUS.FETCH_EXCEPTION, ExceptionUtils.getStackTrace(e));
            return null;
        } catch (SecurityException e11) {
            mf.c cVar2 = LOG;
            String id3 = fetchEmitTuple.getId();
            cVar2.g("security exception " + id3, e11);
            throw e11;
        } catch (TikaException e12) {
            e = e12;
            mf.c cVar3 = LOG;
            String id22 = fetchEmitTuple.getId();
            cVar3.u("fetch exception " + id22, e);
            write(STATUS.FETCH_EXCEPTION, ExceptionUtils.getStackTrace(e));
            return null;
        }
    }

    public void processRequests() {
        mf.c cVar = LOG;
        cVar.m("processing requests");
        try {
            long currentTimeMillis = System.currentTimeMillis();
            initializeResources();
            if (cVar.n()) {
                cVar.f("timer -- initialize parser and other resources: {} ms", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
            }
            cVar.m("pipes server initialized");
            try {
                write(STATUS.READY);
                long currentTimeMillis2 = System.currentTimeMillis();
                while (true) {
                    int read = this.input.read();
                    if (read == -1) {
                        LOG.x("received -1 from client; shutting down");
                        exit(1);
                    } else {
                        STATUS status = STATUS.PING;
                        if (read == status.getByte()) {
                            mf.c cVar2 = LOG;
                            if (cVar2.n()) {
                                cVar2.f("timer -- ping: {} ms", Long.valueOf(System.currentTimeMillis() - currentTimeMillis2));
                            }
                            write(status);
                            currentTimeMillis2 = System.currentTimeMillis();
                        } else if (read != STATUS.CALL.getByte()) {
                            break;
                        } else {
                            parseOne();
                            mf.c cVar3 = LOG;
                            if (cVar3.n()) {
                                cVar3.f("timer -- parse one: {} ms", Long.valueOf(System.currentTimeMillis() - currentTimeMillis2));
                            }
                            currentTimeMillis2 = System.currentTimeMillis();
                        }
                    }
                    this.output.flush();
                }
                throw new IllegalStateException("Unexpected request");
            } catch (Throwable th) {
                LOG.g("main loop error (did the forking process shut down?)", th);
                exit(1);
                System.err.flush();
            }
        } catch (Throwable th2) {
            LOG.g("couldn't initialize parser", th2);
            try {
                this.output.writeByte(STATUS.FAILED_TO_START.getByte());
                this.output.flush();
            } catch (IOException e10) {
                LOG.u("couldn't notify of failure to start", e10);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                synchronized (this.lock) {
                    long currentTimeMillis = System.currentTimeMillis() - this.since;
                    if (this.parsing && currentTimeMillis > this.serverParseTimeoutMillis) {
                        LOG.l("timeout server; elapsed {}  with {}", Long.valueOf(currentTimeMillis), Long.valueOf(this.serverParseTimeoutMillis));
                        exit(17);
                    } else if (!this.parsing) {
                        long j10 = this.serverWaitTimeoutMillis;
                        if (j10 > 0 && currentTimeMillis > j10) {
                            LOG.w("closing down from inactivity");
                            exit(0);
                        }
                    }
                }
                Thread.sleep(this.checkForTimeoutMs);
            } catch (InterruptedException unused) {
                LOG.m("interrupted");
                return;
            }
        }
    }

    private void write(STATUS status, String str) {
        write(status, str.getBytes(StandardCharsets.UTF_8));
    }

    private void write(STATUS status, byte[] bArr) {
        try {
            int length = bArr.length;
            this.output.write(status.getByte());
            this.output.writeInt(length);
            this.output.write(bArr);
            this.output.flush();
        } catch (IOException e10) {
            LOG.g("problem writing data (forking process shutdown?)", e10);
            exit(1);
        }
    }

    private void write(STATUS status) {
        try {
            this.output.write(status.getByte());
            this.output.flush();
        } catch (IOException e10) {
            LOG.g("problem writing data (forking process shutdown?)", e10);
            exit(1);
        }
    }
}
