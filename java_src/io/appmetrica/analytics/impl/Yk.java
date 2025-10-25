package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import io.appmetrica.analytics.coreutils.internal.cache.CachedDataProvider;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class Yk implements Xm {

    /* renamed from: d  reason: collision with root package name */
    public static final long f19301d = TimeUnit.SECONDS.toMillis(20);

    /* renamed from: a  reason: collision with root package name */
    public final Context f19302a;

    /* renamed from: b  reason: collision with root package name */
    public final PermissionExtractor f19303b;

    /* renamed from: c  reason: collision with root package name */
    public final CachedDataProvider.CachedData f19304c;

    public Yk(Context context) {
        long j10 = f19301d;
        this.f19304c = new CachedDataProvider.CachedData(j10, j10, "sim-info");
        this.f19302a = context;
        this.f19303b = C1665za.j().i();
    }

    public final Tk b() {
        return new Tk((Integer) SystemServiceUtils.accessSystemServiceByNameSafely(this.f19302a, "phone", "getting SimMcc", "TelephonyManager", new Uk()), (Integer) SystemServiceUtils.accessSystemServiceByNameSafely(this.f19302a, "phone", "getting SimMnc", "TelephonyManager", new Vk()), ((Boolean) SystemServiceUtils.accessSystemServiceByNameSafelyOrDefault(this.f19302a, "phone", "getting NetworkRoaming", "TelephonyManager", Boolean.FALSE, new Xk(this))).booleanValue(), (String) SystemServiceUtils.accessSystemServiceByNameSafely(this.f19302a, "phone", "getting SimOperatorName", "TelephonyManager", new Wk()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0017, code lost:
        if (r4.f19304c.shouldUpdateData() != false) goto L12;
     */
    @Override // io.appmetrica.analytics.impl.Xm
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.util.List<io.appmetrica.analytics.impl.Tk> a() {
        /*
            r4 = this;
            monitor-enter(r4)
            io.appmetrica.analytics.coreutils.internal.cache.CachedDataProvider$CachedData r0 = r4.f19304c     // Catch: java.lang.Throwable -> L65
            java.lang.Object r0 = r0.getData()     // Catch: java.lang.Throwable -> L65
            java.util.List r0 = (java.util.List) r0     // Catch: java.lang.Throwable -> L65
            if (r0 == 0) goto L19
            boolean r1 = r0.isEmpty()     // Catch: java.lang.Throwable -> L65
            if (r1 == 0) goto L63
            io.appmetrica.analytics.coreutils.internal.cache.CachedDataProvider$CachedData r1 = r4.f19304c     // Catch: java.lang.Throwable -> L65
            boolean r1 = r1.shouldUpdateData()     // Catch: java.lang.Throwable -> L65
            if (r1 == 0) goto L63
        L19:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L65
            r0.<init>()     // Catch: java.lang.Throwable -> L65
            io.appmetrica.analytics.impl.za r1 = io.appmetrica.analytics.impl.C1665za.E     // Catch: java.lang.Throwable -> L65
            io.appmetrica.analytics.impl.Sl r1 = r1.f21057u     // Catch: java.lang.Throwable -> L65
            io.appmetrica.analytics.impl.Ql r1 = r1.b()     // Catch: java.lang.Throwable -> L65
            io.appmetrica.analytics.impl.C4 r1 = r1.f18841n     // Catch: java.lang.Throwable -> L65
            boolean r1 = r1.f18037d     // Catch: java.lang.Throwable -> L65
            if (r1 == 0) goto L5e
            r1 = 23
            boolean r1 = io.appmetrica.analytics.coreutils.internal.AndroidUtils.isApiAchieved(r1)     // Catch: java.lang.Throwable -> L65
            if (r1 == 0) goto L57
            io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor r1 = r4.f19303b     // Catch: java.lang.Throwable -> L65
            android.content.Context r2 = r4.f19302a     // Catch: java.lang.Throwable -> L65
            java.lang.String r3 = "android.permission.READ_PHONE_STATE"
            boolean r1 = r1.hasPermission(r2, r3)     // Catch: java.lang.Throwable -> L65
            if (r1 == 0) goto L49
            android.content.Context r1 = r4.f19302a     // Catch: java.lang.Throwable -> L65
            java.util.List r1 = io.appmetrica.analytics.impl.Zk.a(r1)     // Catch: java.lang.Throwable -> L65
            r0.addAll(r1)     // Catch: java.lang.Throwable -> L65
        L49:
            int r1 = r0.size()     // Catch: java.lang.Throwable -> L65
            if (r1 != 0) goto L5e
            io.appmetrica.analytics.impl.Tk r1 = r4.b()     // Catch: java.lang.Throwable -> L65
            r0.add(r1)     // Catch: java.lang.Throwable -> L65
            goto L5e
        L57:
            io.appmetrica.analytics.impl.Tk r1 = r4.b()     // Catch: java.lang.Throwable -> L65
            r0.add(r1)     // Catch: java.lang.Throwable -> L65
        L5e:
            io.appmetrica.analytics.coreutils.internal.cache.CachedDataProvider$CachedData r1 = r4.f19304c     // Catch: java.lang.Throwable -> L65
            r1.setData(r0)     // Catch: java.lang.Throwable -> L65
        L63:
            monitor-exit(r4)
            return r0
        L65:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.Yk.a():java.util.List");
    }
}
