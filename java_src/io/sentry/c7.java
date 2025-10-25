package io.sentry;

import java.lang.Thread;
/* loaded from: classes2.dex */
interface c7 {

    /* loaded from: classes2.dex */
    public static final class a implements c7 {

        /* renamed from: a  reason: collision with root package name */
        private static final a f22925a = new a();

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static c7 c() {
            return f22925a;
        }

        @Override // io.sentry.c7
        public void a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            Thread.setDefaultUncaughtExceptionHandler(uncaughtExceptionHandler);
        }

        @Override // io.sentry.c7
        public Thread.UncaughtExceptionHandler b() {
            return Thread.getDefaultUncaughtExceptionHandler();
        }
    }

    void a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler);

    Thread.UncaughtExceptionHandler b();
}
