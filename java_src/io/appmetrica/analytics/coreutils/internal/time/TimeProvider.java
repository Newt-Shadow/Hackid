package io.appmetrica.analytics.coreutils.internal.time;
/* loaded from: classes2.dex */
public interface TimeProvider {
    long currentTimeMillis();

    long currentTimeSeconds();

    long elapsedRealtime();

    long systemNanoTime();

    long uptimeMillis();
}
