package com.yandex.metrica.impl.ob;

import android.content.ComponentName;
import android.content.Context;
import com.yandex.metrica.PreloadInfoContentProvider;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class Y {

    /* renamed from: a  reason: collision with root package name */
    private static volatile CountDownLatch f11820a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile PreloadInfoContentProvider f11821b;

    public static final void a(PreloadInfoContentProvider preloadInfoContentProvider) {
        f11820a = new CountDownLatch(1);
        f11821b = preloadInfoContentProvider;
    }

    public static final void a() {
        CountDownLatch countDownLatch = f11820a;
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    public static final void a(Context context) {
        CountDownLatch countDownLatch = f11820a;
        if (countDownLatch != null) {
            countDownLatch.await(1L, TimeUnit.SECONDS);
            try {
                context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, PreloadInfoContentProvider.class), 2, 1);
                PreloadInfoContentProvider preloadInfoContentProvider = f11821b;
                if (preloadInfoContentProvider != null) {
                    preloadInfoContentProvider.disable();
                }
            } catch (Throwable unused) {
            }
            f11820a = null;
        }
    }
}
