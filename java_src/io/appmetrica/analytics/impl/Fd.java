package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.executors.InterruptionSafeThread;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public final class Fd implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicInteger f18227a = new AtomicInteger(0);

    public static int a() {
        return f18227a.incrementAndGet();
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new InterruptionSafeThread(runnable, ((String) null) + "-" + f18227a.incrementAndGet());
    }
}
