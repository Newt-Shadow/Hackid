package org.apache.tika.pipes;

import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class PipesParser implements Closeable {
    private final ArrayBlockingQueue<PipesClient> clientQueue;
    private final List<PipesClient> clients = new ArrayList();
    private final PipesConfig pipesConfig;

    public PipesParser(PipesConfig pipesConfig) {
        this.pipesConfig = pipesConfig;
        this.clientQueue = new ArrayBlockingQueue<>(pipesConfig.getNumClients());
        for (int i10 = 0; i10 < pipesConfig.getNumClients(); i10++) {
            PipesClient pipesClient = new PipesClient(pipesConfig);
            this.clientQueue.offer(pipesClient);
            this.clients.add(pipesClient);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ArrayList arrayList = new ArrayList();
        for (PipesClient pipesClient : this.clients) {
            try {
                pipesClient.close();
            } catch (IOException e10) {
                arrayList.add(e10);
            }
        }
        if (arrayList.size() <= 0) {
            return;
        }
        throw ((IOException) arrayList.get(0));
    }

    public PipesResult parse(FetchEmitTuple fetchEmitTuple) {
        PipesClient pipesClient = null;
        try {
            PipesClient poll = this.clientQueue.poll(this.pipesConfig.getMaxWaitForClientMillis(), TimeUnit.MILLISECONDS);
            try {
                if (poll == null) {
                    PipesResult pipesResult = PipesResult.CLIENT_UNAVAILABLE_WITHIN_MS;
                    if (poll != null) {
                        this.clientQueue.offer(poll);
                    }
                    return pipesResult;
                }
                PipesResult process = poll.process(fetchEmitTuple);
                this.clientQueue.offer(poll);
                return process;
            } catch (Throwable th) {
                th = th;
                pipesClient = poll;
                if (pipesClient != null) {
                    this.clientQueue.offer(pipesClient);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
