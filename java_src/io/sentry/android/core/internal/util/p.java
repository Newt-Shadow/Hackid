package io.sentry.android.core.internal.util;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.PixelCopy;
import android.view.View;
import android.view.Window;
import io.sentry.ILogger;
import io.sentry.android.core.p0;
import io.sentry.j5;
import java.io.ByteArrayOutputStream;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public abstract class p {
    private static boolean c(Activity activity) {
        if (!activity.isFinishing() && !activity.isDestroyed()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(AtomicBoolean atomicBoolean, CountDownLatch countDownLatch, int i10) {
        boolean z10;
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        atomicBoolean.set(z10);
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(View view, Canvas canvas, ILogger iLogger, CountDownLatch countDownLatch) {
        try {
            view.draw(canvas);
        } finally {
            try {
            } finally {
            }
        }
    }

    public static byte[] f(Activity activity, io.sentry.util.thread.a aVar, final ILogger iLogger, p0 p0Var) {
        if (!c(activity)) {
            iLogger.c(j5.DEBUG, "Activity isn't valid, not taking screenshot.", new Object[0]);
            return null;
        }
        Window window = activity.getWindow();
        if (window == null) {
            iLogger.c(j5.DEBUG, "Activity window is null, not taking screenshot.", new Object[0]);
            return null;
        }
        View peekDecorView = window.peekDecorView();
        if (peekDecorView == null) {
            iLogger.c(j5.DEBUG, "DecorView is null, not taking screenshot.", new Object[0]);
            return null;
        }
        final View rootView = peekDecorView.getRootView();
        if (rootView == null) {
            iLogger.c(j5.DEBUG, "Root view is null, not taking screenshot.", new Object[0]);
            return null;
        } else if (rootView.getWidth() > 0 && rootView.getHeight() > 0) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                Bitmap createBitmap = Bitmap.createBitmap(rootView.getWidth(), rootView.getHeight(), Bitmap.Config.ARGB_8888);
                boolean z10 = true;
                final CountDownLatch countDownLatch = new CountDownLatch(1);
                if (p0Var.d() >= 26) {
                    HandlerThread handlerThread = new HandlerThread("SentryScreenshot");
                    handlerThread.start();
                    Handler handler = new Handler(handlerThread.getLooper());
                    final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                    PixelCopy.request(window, createBitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: io.sentry.android.core.internal.util.n
                        @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                        public final void onPixelCopyFinished(int i10) {
                            p.d(atomicBoolean, countDownLatch, i10);
                        }
                    }, handler);
                    if (!countDownLatch.await(1000L, TimeUnit.MILLISECONDS) || !atomicBoolean.get()) {
                        z10 = false;
                    }
                    handlerThread.quit();
                    if (!z10) {
                        byteArrayOutputStream.close();
                        return null;
                    }
                } else {
                    final Canvas canvas = new Canvas(createBitmap);
                    if (aVar.a()) {
                        rootView.draw(canvas);
                        countDownLatch.countDown();
                    } else {
                        activity.runOnUiThread(new Runnable() { // from class: io.sentry.android.core.internal.util.o
                            @Override // java.lang.Runnable
                            public final void run() {
                                p.e(rootView, canvas, iLogger, countDownLatch);
                            }
                        });
                    }
                    if (!countDownLatch.await(1000L, TimeUnit.MILLISECONDS)) {
                        byteArrayOutputStream.close();
                        return null;
                    }
                }
                createBitmap.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
                if (byteArrayOutputStream.size() <= 0) {
                    iLogger.c(j5.DEBUG, "Screenshot is 0 bytes, not attaching the image.", new Object[0]);
                    byteArrayOutputStream.close();
                    return null;
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th) {
                iLogger.b(j5.ERROR, "Taking screenshot failed.", th);
                return null;
            }
        } else {
            iLogger.c(j5.DEBUG, "View's width and height is zeroed, not taking screenshot.", new Object[0]);
            return null;
        }
    }
}
