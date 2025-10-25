package org.apache.tika.pipes.pipesiterator.fs;

import java.io.Closeable;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.FileVisitor;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Map;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.tika.config.Field;
import org.apache.tika.config.InitializableProblemHandler;
import org.apache.tika.config.Param;
import org.apache.tika.config.TikaConfig;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.pipes.FetchEmitTuple;
import org.apache.tika.pipes.HandlerConfig;
import org.apache.tika.pipes.async.AsyncProcessor;
import org.apache.tika.pipes.emitter.EmitKey;
import org.apache.tika.pipes.fetcher.FetchKey;
import org.apache.tika.pipes.pipesiterator.PipesIterator;
import org.apache.tika.pipes.pipesiterator.TotalCountResult;
import org.apache.tika.pipes.pipesiterator.TotalCounter;
import org.apache.tika.pipes.pipesiterator.fs.FileSystemPipesIterator;
/* loaded from: classes2.dex */
public class FileSystemPipesIterator extends PipesIterator implements TotalCounter, Closeable {
    private static final mf.c LOG = mf.e.l(AsyncProcessor.class);
    private Path basePath;
    private boolean countTotal = false;
    private FileCountWorker fileCountWorker;

    /* loaded from: classes2.dex */
    private class FSFileVisitor implements FileVisitor<Path> {
        private final String emitterName;
        private final String fetcherName;

        @Override // java.nio.file.FileVisitor
        public /* bridge */ /* synthetic */ FileVisitResult postVisitDirectory(Path path, IOException iOException) {
            return postVisitDirectory2(c.a(path), iOException);
        }

        @Override // java.nio.file.FileVisitor
        public /* bridge */ /* synthetic */ FileVisitResult preVisitDirectory(Path path, BasicFileAttributes basicFileAttributes) {
            return preVisitDirectory2(c.a(path), basicFileAttributes);
        }

        @Override // java.nio.file.FileVisitor
        public /* bridge */ /* synthetic */ FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) {
            return visitFile2(c.a(path), basicFileAttributes);
        }

        @Override // java.nio.file.FileVisitor
        public /* bridge */ /* synthetic */ FileVisitResult visitFileFailed(Path path, IOException iOException) {
            return visitFileFailed2(c.a(path), iOException);
        }

        private FSFileVisitor(String str, String str2) {
            this.fetcherName = str;
            this.emitterName = str2;
        }

        /* renamed from: postVisitDirectory  reason: avoid collision after fix types in other method */
        public FileVisitResult postVisitDirectory2(Path path, IOException iOException) {
            FileVisitResult fileVisitResult;
            fileVisitResult = FileVisitResult.CONTINUE;
            return fileVisitResult;
        }

        /* renamed from: preVisitDirectory  reason: avoid collision after fix types in other method */
        public FileVisitResult preVisitDirectory2(Path path, BasicFileAttributes basicFileAttributes) {
            FileVisitResult fileVisitResult;
            fileVisitResult = FileVisitResult.CONTINUE;
            return fileVisitResult;
        }

        /* renamed from: visitFile  reason: avoid collision after fix types in other method */
        public FileVisitResult visitFile2(Path path, BasicFileAttributes basicFileAttributes) {
            Path relativize;
            String path2;
            FileVisitResult fileVisitResult;
            FileVisitResult fileVisitResult2;
            relativize = FileSystemPipesIterator.this.basePath.relativize(path);
            path2 = relativize.toString();
            try {
                ParseContext parseContext = new ParseContext();
                parseContext.set(HandlerConfig.class, FileSystemPipesIterator.this.getHandlerConfig());
                FileSystemPipesIterator.this.tryToAdd(new FetchEmitTuple(path2, new FetchKey(this.fetcherName, path2), new EmitKey(this.emitterName, path2), new Metadata(), parseContext, FileSystemPipesIterator.this.getOnParseException()));
                fileVisitResult2 = FileVisitResult.CONTINUE;
                return fileVisitResult2;
            } catch (InterruptedException unused) {
                fileVisitResult = FileVisitResult.TERMINATE;
                return fileVisitResult;
            } catch (TimeoutException e10) {
                throw new IOException(e10);
            }
        }

        /* renamed from: visitFileFailed  reason: avoid collision after fix types in other method */
        public FileVisitResult visitFileFailed2(Path path, IOException iOException) {
            FileVisitResult fileVisitResult;
            fileVisitResult = FileVisitResult.CONTINUE;
            return fileVisitResult;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class FileCountWorker implements TotalCounter, Closeable {
        private final Path basePath;
        private TotalCountResult finalResult;
        private Thread totalCounterThread;
        private final AtomicLong totalCount = new AtomicLong(0);
        private TotalCountResult.STATUS status = TotalCountResult.STATUS.NOT_COMPLETED;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes2.dex */
        public static class FSFileCounter implements FileVisitor<Path> {
            private final AtomicLong count;

            @Override // java.nio.file.FileVisitor
            public /* bridge */ /* synthetic */ FileVisitResult postVisitDirectory(Path path, IOException iOException) {
                return postVisitDirectory2(c.a(path), iOException);
            }

            @Override // java.nio.file.FileVisitor
            public /* bridge */ /* synthetic */ FileVisitResult preVisitDirectory(Path path, BasicFileAttributes basicFileAttributes) {
                return preVisitDirectory2(c.a(path), basicFileAttributes);
            }

            @Override // java.nio.file.FileVisitor
            public /* bridge */ /* synthetic */ FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) {
                return visitFile2(c.a(path), basicFileAttributes);
            }

            @Override // java.nio.file.FileVisitor
            public /* bridge */ /* synthetic */ FileVisitResult visitFileFailed(Path path, IOException iOException) {
                return visitFileFailed2(c.a(path), iOException);
            }

            private FSFileCounter(AtomicLong atomicLong) {
                this.count = atomicLong;
            }

            /* renamed from: postVisitDirectory  reason: avoid collision after fix types in other method */
            public FileVisitResult postVisitDirectory2(Path path, IOException iOException) {
                FileVisitResult fileVisitResult;
                fileVisitResult = FileVisitResult.CONTINUE;
                return fileVisitResult;
            }

            /* renamed from: preVisitDirectory  reason: avoid collision after fix types in other method */
            public FileVisitResult preVisitDirectory2(Path path, BasicFileAttributes basicFileAttributes) {
                FileVisitResult fileVisitResult;
                fileVisitResult = FileVisitResult.CONTINUE;
                return fileVisitResult;
            }

            /* renamed from: visitFile  reason: avoid collision after fix types in other method */
            public FileVisitResult visitFile2(Path path, BasicFileAttributes basicFileAttributes) {
                FileVisitResult fileVisitResult;
                this.count.incrementAndGet();
                fileVisitResult = FileVisitResult.CONTINUE;
                return fileVisitResult;
            }

            /* renamed from: visitFileFailed  reason: avoid collision after fix types in other method */
            public FileVisitResult visitFileFailed2(Path path, IOException iOException) {
                FileVisitResult fileVisitResult;
                fileVisitResult = FileVisitResult.CONTINUE;
                return fileVisitResult;
            }
        }

        public FileCountWorker(Path path) {
            this.basePath = path;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$startTotalCount$0() {
            try {
                Files.walkFileTree(this.basePath, new FSFileCounter(this.totalCount));
                this.status = TotalCountResult.STATUS.COMPLETED;
                this.finalResult = new TotalCountResult(this.totalCount.get(), this.status);
            } catch (IOException e10) {
                FileSystemPipesIterator.LOG.u("problem counting files", e10);
                this.status = TotalCountResult.STATUS.EXCEPTION;
                this.finalResult = new TotalCountResult(this.totalCount.get(), this.status);
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.totalCounterThread.interrupt();
        }

        @Override // org.apache.tika.pipes.pipesiterator.TotalCounter
        public TotalCountResult getTotalCount() {
            TotalCountResult totalCountResult = this.finalResult;
            if (totalCountResult != null) {
                return totalCountResult;
            }
            return new TotalCountResult(this.totalCount.get(), this.status);
        }

        @Override // org.apache.tika.pipes.pipesiterator.TotalCounter
        public void startTotalCount() {
            Thread thread = new Thread(new Runnable() { // from class: org.apache.tika.pipes.pipesiterator.fs.g
                @Override // java.lang.Runnable
                public final void run() {
                    FileSystemPipesIterator.FileCountWorker.this.lambda$startTotalCount$0();
                }
            });
            this.totalCounterThread = thread;
            thread.setDaemon(true);
            this.totalCounterThread.start();
        }
    }

    public FileSystemPipesIterator() {
    }

    @Override // org.apache.tika.pipes.pipesiterator.PipesIterator, org.apache.tika.config.Initializable
    public void checkInitialization(InitializableProblemHandler initializableProblemHandler) {
        TikaConfig.mustNotBeEmpty("basePath", this.basePath);
        TikaConfig.mustNotBeEmpty("fetcherName", getFetcherName());
        TikaConfig.mustNotBeEmpty("emitterName", getFetcherName());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        FileCountWorker fileCountWorker = this.fileCountWorker;
        if (fileCountWorker != null) {
            fileCountWorker.close();
        }
    }

    @Override // org.apache.tika.pipes.pipesiterator.PipesIterator
    protected void enqueue() {
        boolean isDirectory;
        Path absolutePath;
        isDirectory = Files.isDirectory(this.basePath, new LinkOption[0]);
        if (isDirectory) {
            try {
                Files.walkFileTree(this.basePath, new FSFileVisitor(getFetcherName(), getEmitterName()));
                return;
            } catch (IOException e10) {
                Throwable cause = e10.getCause();
                if (cause != null && (cause instanceof TimeoutException)) {
                    throw ((TimeoutException) cause);
                }
                throw e10;
            }
        }
        absolutePath = this.basePath.toAbsolutePath();
        throw new IllegalArgumentException("\"basePath\" directory does not exist: " + absolutePath);
    }

    @Override // org.apache.tika.pipes.pipesiterator.TotalCounter
    public TotalCountResult getTotalCount() {
        if (!this.countTotal) {
            return TotalCountResult.UNSUPPORTED;
        }
        return this.fileCountWorker.getTotalCount();
    }

    @Override // org.apache.tika.pipes.pipesiterator.PipesIterator, org.apache.tika.config.Initializable
    public void initialize(Map<String, Param> map) {
        if (this.countTotal) {
            this.fileCountWorker = new FileCountWorker(this.basePath);
        }
    }

    @Field
    public void setBasePath(String str) {
        Path path;
        path = Paths.get(str, new String[0]);
        this.basePath = path;
    }

    @Field
    public void setCountTotal(boolean z10) {
        this.countTotal = z10;
    }

    @Override // org.apache.tika.pipes.pipesiterator.TotalCounter
    public void startTotalCount() {
        if (!this.countTotal) {
            return;
        }
        this.fileCountWorker.startTotalCount();
    }

    public FileSystemPipesIterator(Path path) {
        this.basePath = path;
    }
}
