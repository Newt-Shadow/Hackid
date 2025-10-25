package io.appmetrica.analytics.impl;

import android.content.ComponentName;
import android.content.Context;
import io.appmetrica.analytics.internal.PreloadInfoContentProvider;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class G3 implements K6 {
    @Override // io.appmetrica.analytics.impl.K6
    public final void a(Context context) {
        CountDownLatch countDownLatch = P5.f18759a;
        if (countDownLatch != null) {
            countDownLatch.await(1L, TimeUnit.SECONDS);
            try {
                context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, PreloadInfoContentProvider.class), 2, 1);
                PreloadInfoContentProvider preloadInfoContentProvider = P5.f18760b;
                if (preloadInfoContentProvider != null) {
                    preloadInfoContentProvider.disable();
                }
            } catch (Throwable unused) {
            }
            P5.f18759a = null;
        }
    }
}
