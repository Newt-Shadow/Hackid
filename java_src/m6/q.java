package m6;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
final class q implements r {

    /* renamed from: a  reason: collision with root package name */
    private final CountDownLatch f25950a = new CountDownLatch(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ q(p pVar) {
    }

    @Override // m6.e
    public final void a() {
        this.f25950a.countDown();
    }

    public final void b() {
        this.f25950a.await();
    }

    @Override // m6.g
    public final void c(Exception exc) {
        this.f25950a.countDown();
    }

    public final boolean d(long j10, TimeUnit timeUnit) {
        return this.f25950a.await(j10, timeUnit);
    }

    @Override // m6.h
    public final void onSuccess(Object obj) {
        this.f25950a.countDown();
    }
}
