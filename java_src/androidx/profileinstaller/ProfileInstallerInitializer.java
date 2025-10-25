package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.profileinstaller.ProfileInstallerInitializer;
import androidx.profileinstaller.f;
import com.arthenica.ffmpegkit.AbstractSession;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class ProfileInstallerInitializer implements i1.a {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {
        public static Handler a(Looper looper) {
            Handler createAsync;
            createAsync = Handler.createAsync(looper);
            return createAsync;
        }
    }

    /* loaded from: classes.dex */
    public static class b {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(Context context, long j10) {
        g(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void k(final Context context) {
        new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new Runnable() { // from class: f1.e
            @Override // java.lang.Runnable
            public final void run() {
                f.i(context);
            }
        });
    }

    @Override // i1.a
    public List a() {
        return Collections.emptyList();
    }

    @Override // i1.a
    /* renamed from: f */
    public b b(Context context) {
        final Context applicationContext = context.getApplicationContext();
        Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: f1.c
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j10) {
                ProfileInstallerInitializer.this.h(applicationContext, j10);
            }
        });
        return new b();
    }

    void g(final Context context) {
        Handler handler;
        if (Build.VERSION.SDK_INT >= 28) {
            handler = a.a(Looper.getMainLooper());
        } else {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.postDelayed(new Runnable() { // from class: f1.d
            @Override // java.lang.Runnable
            public final void run() {
                ProfileInstallerInitializer.k(context);
            }
        }, new Random().nextInt(Math.max(1000, 1)) + AbstractSession.DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT);
    }
}
