package s5;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import n5.q;
/* loaded from: classes.dex */
public class b implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final String f29410a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadFactory f29411b = Executors.defaultThreadFactory();

    public b(String str) {
        q.l(str, "Name must not be null");
        this.f29410a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f29411b.newThread(new c(runnable, 0));
        newThread.setName(this.f29410a);
        return newThread;
    }
}
