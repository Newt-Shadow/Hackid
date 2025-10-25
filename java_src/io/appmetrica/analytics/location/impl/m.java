package io.appmetrica.analytics.location.impl;

import android.location.Location;
import io.appmetrica.analytics.coreutils.internal.cache.SynchronizedDataCache;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class m extends SynchronizedDataCache {

    /* renamed from: d  reason: collision with root package name */
    public static final long f21125d = 200;

    /* renamed from: e  reason: collision with root package name */
    public static final long f21126e = 50;

    /* renamed from: a  reason: collision with root package name */
    public final l f21128a;

    /* renamed from: b  reason: collision with root package name */
    public static final long f21123b = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: c  reason: collision with root package name */
    public static final long f21124c = TimeUnit.MINUTES.toMillis(2);

    /* renamed from: f  reason: collision with root package name */
    public static final List<String> f21127f = Arrays.asList("gps", "network");

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public m() {
        /*
            r6 = this;
            io.appmetrica.analytics.location.impl.l r1 = new io.appmetrica.analytics.location.impl.l
            long r2 = io.appmetrica.analytics.location.impl.m.f21124c
            r1.<init>(r2)
            long r2 = io.appmetrica.analytics.location.impl.m.f21123b
            r4 = 2
            long r4 = r4 * r2
            r0 = r6
            r0.<init>(r1, r2, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.location.impl.m.<init>():void");
    }

    @Override // io.appmetrica.analytics.coreutils.internal.cache.DataCache
    /* renamed from: a */
    public final boolean shouldUpdate(Location location) {
        return f21127f.contains(location.getProvider()) && (this.mCachedData.isEmpty() || this.mCachedData.shouldUpdateData() || a(location, (Location) this.mCachedData.getData(), this.f21128a.f21122a, 200L));
    }

    public m(l lVar, long j10, long j11) {
        super(j10, j11, "location");
        this.f21128a = lVar;
    }

    public static boolean a(Location location, Location location2, long j10, long j11) {
        boolean equals;
        if (location2 == null) {
            return true;
        }
        if (location == null) {
            return false;
        }
        long time = location.getTime() - location2.getTime();
        boolean z10 = time > j10;
        boolean z11 = time < (-j10);
        boolean z12 = time > 0;
        if (z10) {
            return true;
        }
        if (z11) {
            return false;
        }
        int accuracy = (int) (location.getAccuracy() - location2.getAccuracy());
        boolean z13 = accuracy > 0;
        boolean z14 = accuracy < 0;
        boolean z15 = ((long) accuracy) > j11;
        String provider = location.getProvider();
        String provider2 = location2.getProvider();
        if (provider == null) {
            equals = provider2 == null;
        } else {
            equals = provider.equals(provider2);
        }
        if (z14) {
            return true;
        }
        if (!z12 || z13) {
            return z12 && !z15 && equals;
        }
        return true;
    }
}
