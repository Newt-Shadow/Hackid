package io.sentry.android.core;

import android.os.FileObserver;
import io.sentry.ILogger;
import io.sentry.j5;
import java.io.File;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
final class d1 extends FileObserver {

    /* renamed from: a  reason: collision with root package name */
    private final String f22218a;

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.n0 f22219b;

    /* renamed from: c  reason: collision with root package name */
    private final ILogger f22220c;

    /* renamed from: d  reason: collision with root package name */
    private final long f22221d;

    /* loaded from: classes2.dex */
    private static final class a implements io.sentry.hints.e, io.sentry.hints.k, io.sentry.hints.p, io.sentry.hints.i, io.sentry.hints.b, io.sentry.hints.j {

        /* renamed from: a  reason: collision with root package name */
        boolean f22222a;

        /* renamed from: b  reason: collision with root package name */
        boolean f22223b;

        /* renamed from: c  reason: collision with root package name */
        private CountDownLatch f22224c;

        /* renamed from: d  reason: collision with root package name */
        private final long f22225d;

        /* renamed from: e  reason: collision with root package name */
        private final ILogger f22226e;

        public a(long j10, ILogger iLogger) {
            a();
            this.f22225d = j10;
            this.f22226e = (ILogger) io.sentry.util.q.c(iLogger, "ILogger is required.");
        }

        @Override // io.sentry.hints.j
        public void a() {
            this.f22224c = new CountDownLatch(1);
            this.f22222a = false;
            this.f22223b = false;
        }

        @Override // io.sentry.hints.k
        public boolean b() {
            return this.f22222a;
        }

        @Override // io.sentry.hints.p
        public void c(boolean z10) {
            this.f22223b = z10;
            this.f22224c.countDown();
        }

        @Override // io.sentry.hints.k
        public void d(boolean z10) {
            this.f22222a = z10;
        }

        @Override // io.sentry.hints.i
        public boolean e() {
            try {
                return this.f22224c.await(this.f22225d, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e10) {
                Thread.currentThread().interrupt();
                this.f22226e.b(j5.ERROR, "Exception while awaiting on lock.", e10);
                return false;
            }
        }

        @Override // io.sentry.hints.p
        public boolean f() {
            return this.f22223b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d1(String str, io.sentry.n0 n0Var, ILogger iLogger, long j10) {
        super(str);
        this.f22218a = str;
        this.f22219b = (io.sentry.n0) io.sentry.util.q.c(n0Var, "Envelope sender is required.");
        this.f22220c = (ILogger) io.sentry.util.q.c(iLogger, "Logger is required.");
        this.f22221d = j10;
    }

    @Override // android.os.FileObserver
    public void onEvent(int i10, String str) {
        if (str != null && i10 == 8) {
            this.f22220c.c(j5.DEBUG, "onEvent fired for EnvelopeFileObserver with event type %d on path: %s for file %s.", Integer.valueOf(i10), this.f22218a, str);
            io.sentry.c0 e10 = io.sentry.util.j.e(new a(this.f22221d, this.f22220c));
            io.sentry.n0 n0Var = this.f22219b;
            n0Var.a(this.f22218a + File.separator + str, e10);
        }
    }
}
