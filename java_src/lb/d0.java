package lb;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes.dex */
public final class d0 implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final String f25430a;

    public d0(String threadName) {
        kotlin.jvm.internal.m.e(threadName, "threadName");
        this.f25430a = threadName;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        kotlin.jvm.internal.m.e(runnable, "runnable");
        Thread thread = new Thread(runnable);
        thread.setDaemon(true);
        thread.setName(this.f25430a);
        return thread;
    }
}
