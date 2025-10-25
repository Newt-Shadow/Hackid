package org.apache.tika.concurrent;

import java.util.concurrent.ExecutorService;
/* loaded from: classes2.dex */
public interface ConfigurableThreadPoolExecutor extends ExecutorService {
    void setCorePoolSize(int i10);

    void setMaximumPoolSize(int i10);
}
