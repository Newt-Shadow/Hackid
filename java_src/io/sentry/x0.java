package io.sentry;

import java.util.concurrent.Future;
/* loaded from: classes2.dex */
public interface x0 {
    void a(long j10);

    boolean b();

    Future c(Runnable runnable, long j10);

    Future submit(Runnable runnable);
}
