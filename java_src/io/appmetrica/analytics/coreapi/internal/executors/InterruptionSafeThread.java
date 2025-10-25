package io.appmetrica.analytics.coreapi.internal.executors;
/* loaded from: classes2.dex */
public class InterruptionSafeThread extends Thread implements IInterruptionSafeThread {

    /* renamed from: a  reason: collision with root package name */
    private volatile boolean f17643a;

    public InterruptionSafeThread() {
        this.f17643a = true;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.IInterruptionSafeThread
    public synchronized boolean isRunning() {
        return this.f17643a;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.IInterruptionSafeThread
    public synchronized void stopRunning() {
        this.f17643a = false;
        interrupt();
    }

    public InterruptionSafeThread(Runnable runnable, String str) {
        super(runnable, str);
        this.f17643a = true;
    }

    public InterruptionSafeThread(String str) {
        super(str);
        this.f17643a = true;
    }

    public InterruptionSafeThread(Runnable runnable) {
        super(runnable);
        this.f17643a = true;
    }
}
