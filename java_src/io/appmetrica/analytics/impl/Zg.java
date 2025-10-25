package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.coreutils.internal.time.TimePassedChecker;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.KotlinVersion;
/* loaded from: classes2.dex */
public final class Zg implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        Map h10;
        TimePassedChecker timePassedChecker = new TimePassedChecker();
        SystemTimeProvider systemTimeProvider = new SystemTimeProvider();
        Xe x10 = C1665za.E.x();
        if (timePassedChecker.didTimePassMillis(x10.f(), TimeUnit.DAYS.toMillis(1L), "[ReportKotlinVersionTask]")) {
            KotlinVersion kotlinVersion = KotlinVersion.CURRENT;
            xc.k a10 = xc.q.a("major", Integer.valueOf(kotlinVersion.getMajor()));
            xc.k a11 = xc.q.a("minor", Integer.valueOf(kotlinVersion.getMinor()));
            xc.k a12 = xc.q.a("patch", Integer.valueOf(kotlinVersion.getPatch()));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(kotlinVersion.getMajor());
            sb2.append('.');
            sb2.append(kotlinVersion.getMinor());
            sb2.append('.');
            sb2.append(kotlinVersion.getPatch());
            h10 = yc.h0.h(a10, a11, a12, xc.q.a("version", sb2.toString()));
            Oj oj = AbstractC1375nj.f20222a;
            oj.getClass();
            oj.a(new Nj("kotlin_version", h10));
            x10.c(systemTimeProvider.currentTimeMillis()).b();
        }
    }
}
