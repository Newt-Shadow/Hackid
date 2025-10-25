package com.android.billingclient.api;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class v implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final ThreadFactory f5485a = Executors.defaultThreadFactory();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f5486b = new AtomicInteger(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(e eVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        AtomicInteger atomicInteger = this.f5486b;
        Thread newThread = this.f5485a.newThread(runnable);
        int andIncrement = atomicInteger.getAndIncrement();
        newThread.setName("PlayBillingLibrary-" + andIncrement);
        return newThread;
    }
}
