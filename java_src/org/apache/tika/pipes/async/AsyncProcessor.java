package org.apache.tika.pipes.async;

import java.io.Closeable;
import java.io.IOException;
import java.nio.file.Path;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.tika.pipes.FetchEmitTuple;
import org.apache.tika.pipes.PipesClient;
import org.apache.tika.pipes.PipesReporter;
import org.apache.tika.pipes.PipesResult;
import org.apache.tika.pipes.emitter.EmitData;
import org.apache.tika.pipes.emitter.EmitterManager;
import org.apache.tika.pipes.pipesiterator.PipesIterator;
import org.apache.tika.pipes.pipesiterator.TotalCountResult;
import org.apache.tika.pipes.pipesiterator.TotalCounter;
/* loaded from: classes2.dex */
public class AsyncProcessor implements Closeable {
    private static final mf.c LOG = mf.e.l(AsyncProcessor.class);
    private static long MAX_OFFER_WAIT_MS = 120000;
    static final int PARSER_FUTURE_CODE = 1;
    static final int WATCHER_FUTURE_CODE = 3;
    private boolean addedEmitterSemaphores;
    private final AsyncConfig asyncConfig;
    private final ArrayBlockingQueue<EmitData> emitData;
    private final ExecutorCompletionService<Integer> executorCompletionService;
    private final ExecutorService executorService;
    private final ArrayBlockingQueue<FetchEmitTuple> fetchEmitTuples;
    boolean isShuttingDown;
    private volatile int numEmitterThreadsFinished;
    private volatile int numParserThreadsFinished;
    private final AtomicLong totalProcessed;

    /* loaded from: classes2.dex */
    private class FetchEmitWorker implements Callable<Integer> {
        private final AsyncConfig asyncConfig;
        private final ArrayBlockingQueue<EmitData> emitDataQueue;
        private final ArrayBlockingQueue<FetchEmitTuple> fetchEmitTuples;

        private boolean shouldEmit(PipesResult pipesResult) {
            if (pipesResult.getStatus() == PipesResult.STATUS.PARSE_SUCCESS || pipesResult.getStatus() == PipesResult.STATUS.PARSE_SUCCESS_WITH_EXCEPTION) {
                return true;
            }
            if (pipesResult.isIntermediate() && this.asyncConfig.isEmitIntermediateResults()) {
                return true;
            }
            return false;
        }

        private FetchEmitWorker(AsyncConfig asyncConfig, ArrayBlockingQueue<FetchEmitTuple> arrayBlockingQueue, ArrayBlockingQueue<EmitData> arrayBlockingQueue2) {
            this.asyncConfig = asyncConfig;
            this.fetchEmitTuples = arrayBlockingQueue;
            this.emitDataQueue = arrayBlockingQueue2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Integer call() {
            PipesResult pipesResult;
            PipesClient pipesClient = new PipesClient(this.asyncConfig);
            while (true) {
                try {
                    FetchEmitTuple poll = this.fetchEmitTuples.poll(1L, TimeUnit.SECONDS);
                    if (poll == null) {
                        if (AsyncProcessor.LOG.n()) {
                            AsyncProcessor.LOG.y("null fetch emit tuple");
                        }
                    } else if (poll == PipesIterator.COMPLETED_SEMAPHORE) {
                        if (AsyncProcessor.LOG.n()) {
                            AsyncProcessor.LOG.y("hit completed semaphore");
                        }
                        pipesClient.close();
                        return 1;
                    } else {
                        long currentTimeMillis = System.currentTimeMillis();
                        try {
                            pipesResult = pipesClient.process(poll);
                        } catch (IOException e10) {
                            AsyncProcessor.LOG.u("pipesClient crash", e10);
                            pipesResult = PipesResult.UNSPECIFIED_CRASH;
                        }
                        if (AsyncProcessor.LOG.n()) {
                            AsyncProcessor.LOG.f("timer -- pipes client process: {} ms", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                        }
                        long currentTimeMillis2 = System.currentTimeMillis();
                        if (shouldEmit(pipesResult)) {
                            mf.c cVar = AsyncProcessor.LOG;
                            EmitData emitData = pipesResult.getEmitData();
                            cVar.y("adding result to emitter queue: " + emitData);
                            if (!this.emitDataQueue.offer(pipesResult.getEmitData(), AsyncProcessor.MAX_OFFER_WAIT_MS, TimeUnit.MILLISECONDS)) {
                                long j10 = AsyncProcessor.MAX_OFFER_WAIT_MS;
                                throw new RuntimeException("Couldn't offer emit data to queue within " + j10 + " ms");
                            }
                        }
                        if (AsyncProcessor.LOG.n()) {
                            AsyncProcessor.LOG.f("timer -- offered: {} ms", Long.valueOf(System.currentTimeMillis() - currentTimeMillis2));
                        }
                        this.asyncConfig.getPipesReporter().report(poll, pipesResult, System.currentTimeMillis() - currentTimeMillis);
                        AsyncProcessor.this.totalProcessed.incrementAndGet();
                    }
                } catch (Throwable th) {
                    try {
                        pipesClient.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
        }
    }

    public AsyncProcessor(Path path) {
        this(path, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer lambda$new$0() {
        while (true) {
            try {
                Thread.sleep(500L);
                checkActive();
            } catch (InterruptedException unused) {
                return 3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startCounter$1(TotalCounter totalCounter) {
        totalCounter.startTotalCount();
        PipesReporter pipesReporter = this.asyncConfig.getPipesReporter();
        TotalCountResult.STATUS status = totalCounter.getTotalCount().getStatus();
        while (status == TotalCountResult.STATUS.NOT_COMPLETED) {
            try {
                Thread.sleep(500L);
                TotalCountResult totalCount = totalCounter.getTotalCount();
                LOG.h("counter total  {} {} ", totalCount.getStatus(), Long.valueOf(totalCount.getTotalCount()));
                pipesReporter.report(totalCount);
                status = totalCount.getStatus();
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    private void startCounter(final TotalCounter totalCounter) {
        Thread thread = new Thread(new Runnable() { // from class: org.apache.tika.pipes.async.f
            @Override // java.lang.Runnable
            public final void run() {
                AsyncProcessor.this.lambda$startCounter$1(totalCounter);
            }
        });
        thread.setDaemon(true);
        thread.start();
    }

    public synchronized boolean checkActive() {
        boolean z10;
        Future<Integer> poll = this.executorCompletionService.poll();
        z10 = true;
        if (poll != null) {
            try {
                Integer num = poll.get();
                int intValue = num.intValue();
                if (intValue != 1) {
                    if (intValue != 2) {
                        if (intValue == 3) {
                            LOG.m("watcher thread finished");
                        } else {
                            throw new IllegalArgumentException("Don't recognize this future code: " + num);
                        }
                    } else {
                        this.numEmitterThreadsFinished++;
                        LOG.q("emitter thread finished, total {}", Integer.valueOf(this.numEmitterThreadsFinished));
                    }
                } else {
                    this.numParserThreadsFinished++;
                    LOG.q("fetchEmitWorker finished, total {}", Integer.valueOf(this.numParserThreadsFinished));
                }
            } catch (ExecutionException e10) {
                LOG.g("execution exception", e10);
                this.asyncConfig.getPipesReporter().error(e10);
                throw new RuntimeException(e10);
            }
        }
        if (this.numParserThreadsFinished == this.asyncConfig.getNumClients() && !this.addedEmitterSemaphores) {
            for (int i10 = 0; i10 < this.asyncConfig.getNumEmitters(); i10++) {
                try {
                    if (!this.emitData.offer(AsyncEmitter.EMIT_DATA_STOP_SEMAPHORE, MAX_OFFER_WAIT_MS, TimeUnit.MILLISECONDS)) {
                        throw new RuntimeException("Couldn't offer emit data stop semaphore within " + MAX_OFFER_WAIT_MS + " ms");
                    }
                } catch (InterruptedException e11) {
                    throw new RuntimeException(e11);
                }
            }
            this.addedEmitterSemaphores = true;
        }
        if (this.numParserThreadsFinished == this.asyncConfig.getNumClients() && this.numEmitterThreadsFinished == this.asyncConfig.getNumEmitters()) {
            z10 = false;
        }
        return z10;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.executorService.shutdownNow();
        this.asyncConfig.getPipesReporter().close();
    }

    public void finished() {
        for (int i10 = 0; i10 < this.asyncConfig.getNumClients(); i10++) {
            if (!this.fetchEmitTuples.offer(PipesIterator.COMPLETED_SEMAPHORE, MAX_OFFER_WAIT_MS, TimeUnit.MILLISECONDS)) {
                long j10 = MAX_OFFER_WAIT_MS;
                throw new RuntimeException("Couldn't offer completed semaphore within " + j10 + " ms");
            }
        }
    }

    public int getCapacity() {
        return this.fetchEmitTuples.remainingCapacity();
    }

    public long getTotalProcessed() {
        return this.totalProcessed.get();
    }

    public synchronized boolean offer(List<FetchEmitTuple> list, long j10) {
        if (!this.isShuttingDown) {
            if (list.size() <= this.asyncConfig.getQueueSize()) {
                long currentTimeMillis = System.currentTimeMillis();
                for (long currentTimeMillis2 = System.currentTimeMillis(); currentTimeMillis2 - currentTimeMillis < j10; currentTimeMillis2 = System.currentTimeMillis()) {
                    if (this.fetchEmitTuples.remainingCapacity() > list.size()) {
                        try {
                            this.fetchEmitTuples.addAll(list);
                            return true;
                        } catch (IllegalStateException e10) {
                            LOG.v("couldn't add full list", e10);
                        }
                    }
                    Thread.sleep(100L);
                }
                return false;
            }
            throw new OfferLargerThanQueueSize(list.size(), this.asyncConfig.getQueueSize());
        }
        throw new IllegalStateException("Can't call offer after calling close() or shutdownNow()");
    }

    public AsyncProcessor(Path path, PipesIterator pipesIterator) {
        Path absolutePath;
        Path absolutePath2;
        boolean equals;
        Path absolutePath3;
        Path absolutePath4;
        this.totalProcessed = new AtomicLong(0L);
        this.numParserThreadsFinished = 0;
        this.numEmitterThreadsFinished = 0;
        this.addedEmitterSemaphores = false;
        this.isShuttingDown = false;
        AsyncConfig load = AsyncConfig.load(path);
        this.asyncConfig = load;
        this.fetchEmitTuples = new ArrayBlockingQueue<>(load.getQueueSize());
        this.emitData = new ArrayBlockingQueue<>(100);
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(load.getNumClients() + load.getNumEmitters() + 1);
        this.executorService = newFixedThreadPool;
        ExecutorCompletionService<Integer> executorCompletionService = new ExecutorCompletionService<>(newFixedThreadPool);
        this.executorCompletionService = executorCompletionService;
        try {
            absolutePath = path.toAbsolutePath();
            absolutePath2 = load.getTikaConfig().toAbsolutePath();
            equals = absolutePath.equals(absolutePath2);
            if (!equals) {
                mf.c cVar = LOG;
                absolutePath3 = path.toAbsolutePath();
                absolutePath4 = load.getTikaConfig().toAbsolutePath();
                cVar.l("TikaConfig for AsyncProcessor ({}) is different from TikaConfig for workers ({}). If this is intended, please ignore this warning.", absolutePath3, absolutePath4);
            }
            executorCompletionService.submit(new Callable() { // from class: org.apache.tika.pipes.async.e
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Integer lambda$new$0;
                    lambda$new$0 = AsyncProcessor.this.lambda$new$0();
                    return lambda$new$0;
                }
            });
            if (pipesIterator != null && (pipesIterator instanceof TotalCounter)) {
                LOG.m("going to total counts");
                startCounter((TotalCounter) pipesIterator);
            }
            for (int i10 = 0; i10 < this.asyncConfig.getNumClients(); i10++) {
                this.executorCompletionService.submit(new FetchEmitWorker(this.asyncConfig, this.fetchEmitTuples, this.emitData));
            }
            EmitterManager load2 = EmitterManager.load(this.asyncConfig.getTikaConfig());
            for (int i11 = 0; i11 < this.asyncConfig.getNumEmitters(); i11++) {
                this.executorCompletionService.submit(new AsyncEmitter(this.asyncConfig, this.emitData, load2));
            }
        } catch (Exception e10) {
            LOG.g("problem initializing AsyncProcessor", e10);
            this.executorService.shutdownNow();
            this.asyncConfig.getPipesReporter().error(e10);
            throw e10;
        }
    }

    public synchronized boolean offer(FetchEmitTuple fetchEmitTuple, long j10) {
        if (this.fetchEmitTuples != null) {
            if (!this.isShuttingDown) {
                checkActive();
            } else {
                throw new IllegalStateException("Can't call offer after calling close() or shutdownNow()");
            }
        } else {
            throw new IllegalStateException("queue hasn't been initialized yet.");
        }
        return this.fetchEmitTuples.offer(fetchEmitTuple, j10, TimeUnit.MILLISECONDS);
    }
}
