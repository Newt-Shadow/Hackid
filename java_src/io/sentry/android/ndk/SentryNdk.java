package io.sentry.android.ndk;

import io.sentry.android.core.SentryAndroidOptions;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class SentryNdk {
    private static final CountDownLatch loadLibraryLatch = new CountDownLatch(1);

    static {
        new Thread(new Runnable() { // from class: io.sentry.android.ndk.j
            @Override // java.lang.Runnable
            public final void run() {
                SentryNdk.lambda$static$0();
            }
        }, "SentryNdkLoadLibs").start();
    }

    private SentryNdk() {
    }

    public static void close() {
        try {
            if (loadLibraryLatch.await(2000L, TimeUnit.MILLISECONDS)) {
                shutdown();
                return;
            }
            throw new IllegalStateException("Timeout waiting for Sentry NDK library to load");
        } catch (InterruptedException e10) {
            throw new IllegalStateException("Thread interrupted while waiting for NDK libs to be loaded", e10);
        }
    }

    public static void init(SentryAndroidOptions sentryAndroidOptions) {
        k.a(sentryAndroidOptions.getSdkVersion());
        try {
            if (loadLibraryLatch.await(2000L, TimeUnit.MILLISECONDS)) {
                initSentryNative(sentryAndroidOptions);
                if (sentryAndroidOptions.isEnableScopeSync()) {
                    sentryAndroidOptions.addScopeObserver(new i(sentryAndroidOptions));
                }
                sentryAndroidOptions.setDebugImagesLoader(new a(sentryAndroidOptions, new NativeModuleListLoader()));
                return;
            }
            throw new IllegalStateException("Timeout waiting for Sentry NDK library to load");
        } catch (InterruptedException e10) {
            throw new IllegalStateException("Thread interrupted while waiting for NDK libs to be loaded", e10);
        }
    }

    private static native void initSentryNative(SentryAndroidOptions sentryAndroidOptions);

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$static$0() {
        try {
            System.loadLibrary("log");
            System.loadLibrary("sentry");
            System.loadLibrary("sentry-android");
        } catch (Throwable unused) {
        }
        loadLibraryLatch.countDown();
    }

    private static native void shutdown();
}
