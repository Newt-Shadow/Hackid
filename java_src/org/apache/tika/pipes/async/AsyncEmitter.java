package org.apache.tika.pipes.async;

import java.io.IOException;
import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;
import org.apache.tika.pipes.async.AsyncEmitter;
import org.apache.tika.pipes.emitter.EmitData;
import org.apache.tika.pipes.emitter.Emitter;
import org.apache.tika.pipes.emitter.EmitterManager;
import org.apache.tika.pipes.emitter.TikaEmitterException;
import org.apache.tika.utils.ExceptionUtils;
/* loaded from: classes2.dex */
public class AsyncEmitter implements Callable<Integer> {
    static final int EMITTER_FUTURE_CODE = 2;
    static final EmitData EMIT_DATA_STOP_SEMAPHORE = new EmitData(null, null, null);
    private static final mf.c LOG = mf.e.l(AsyncEmitter.class);
    private final AsyncConfig asyncConfig;
    private final ArrayBlockingQueue<EmitData> emitDataQueue;
    private final EmitterManager emitterManager;
    Instant lastEmitted;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class EmitDataCache {
        private final long maxBytes;
        long estimatedSize = 0;
        int size = 0;
        Map<String, List<EmitData>> map = new HashMap();

        public EmitDataCache(long j10) {
            this.maxBytes = j10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void emitAll() {
            Instant now;
            AsyncEmitter.LOG.d("about to emit {} files, {} estimated bytes", Integer.valueOf(this.size), Long.valueOf(this.estimatedSize));
            int i10 = 0;
            for (Map.Entry<String, List<EmitData>> entry : this.map.entrySet()) {
                tryToEmit(AsyncEmitter.this.emitterManager.getEmitter(entry.getKey()), entry.getValue());
                i10 += entry.getValue().size();
            }
            AsyncEmitter.LOG.q("emitted: {} files", Integer.valueOf(i10));
            this.estimatedSize = 0L;
            this.size = 0;
            this.map.clear();
            AsyncEmitter asyncEmitter = AsyncEmitter.this;
            now = Instant.now();
            asyncEmitter.lastEmitted = now;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ List lambda$add$0(String str) {
            return new ArrayList();
        }

        private void tryToEmit(Emitter emitter, List<EmitData> list) {
            try {
                emitter.emit(list);
            } catch (IOException | TikaEmitterException e10) {
                AsyncEmitter.LOG.l("emitter class ({}): {}", emitter.getClass(), ExceptionUtils.getStackTrace(e10));
            }
        }

        void add(EmitData emitData) {
            this.size++;
            long estimatedSizeBytes = emitData.getEstimatedSizeBytes();
            if (this.estimatedSize + estimatedSizeBytes > this.maxBytes) {
                AsyncEmitter.LOG.d("estimated size ({}) > maxBytes({}), going to emitAll", Long.valueOf(this.estimatedSize + estimatedSizeBytes), Long.valueOf(this.maxBytes));
                emitAll();
            }
            updateEstimatedSize(estimatedSizeBytes);
            this.map.computeIfAbsent(emitData.getEmitKey().getEmitterName(), new Function() { // from class: org.apache.tika.pipes.async.c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    List lambda$add$0;
                    lambda$add$0 = AsyncEmitter.EmitDataCache.lambda$add$0((String) obj);
                    return lambda$add$0;
                }
            }).add(emitData);
        }

        void updateEstimatedSize(long j10) {
            this.estimatedSize += j10;
        }
    }

    public AsyncEmitter(AsyncConfig asyncConfig, ArrayBlockingQueue<EmitData> arrayBlockingQueue, EmitterManager emitterManager) {
        Instant now;
        now = Instant.now();
        this.lastEmitted = now;
        this.asyncConfig = asyncConfig;
        this.emitDataQueue = arrayBlockingQueue;
        this.emitterManager = emitterManager;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public Integer call() {
        ChronoUnit chronoUnit;
        Instant now;
        long between;
        EmitDataCache emitDataCache = new EmitDataCache(this.asyncConfig.getEmitMaxEstimatedBytes());
        while (true) {
            EmitData poll = this.emitDataQueue.poll(500L, TimeUnit.MILLISECONDS);
            if (poll == EMIT_DATA_STOP_SEMAPHORE) {
                emitDataCache.emitAll();
                return 2;
            }
            if (poll != null) {
                emitDataCache.add(poll);
            } else {
                LOG.y("Nothing on the async queue");
            }
            mf.c cVar = LOG;
            cVar.d("cache size: ({}) bytes and extract count: {}", Long.valueOf(emitDataCache.estimatedSize), Integer.valueOf(emitDataCache.size));
            chronoUnit = ChronoUnit.MILLIS;
            Instant instant = this.lastEmitted;
            now = Instant.now();
            between = chronoUnit.between(instant, now);
            if (between > this.asyncConfig.getEmitWithinMillis()) {
                cVar.d("{} elapsed > {}, going to emitAll", Long.valueOf(between), Long.valueOf(this.asyncConfig.getEmitWithinMillis()));
                emitDataCache.emitAll();
            }
        }
    }
}
