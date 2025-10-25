package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.util.Log;
import java.time.Duration;
import java.util.concurrent.atomic.AtomicLong;
import n5.v;
import n5.w;
import n5.x;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: c  reason: collision with root package name */
    private static volatile f f5785c;

    /* renamed from: d  reason: collision with root package name */
    private static final Object f5786d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private static final Duration f5787e;

    /* renamed from: a  reason: collision with root package name */
    private final w f5788a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicLong f5789b = new AtomicLong(-1);

    static {
        Duration ofMinutes;
        ofMinutes = Duration.ofMinutes(30L);
        f5787e = ofMinutes;
    }

    private f(Context context, String str) {
        this.f5788a = v.b(context, x.a().b("ads_identifier:api").a());
    }

    public static f a(Context context) {
        if (f5785c == null) {
            synchronized (f5786d) {
                if (f5785c == null) {
                    f5785c = new f(context, "ads_identifier:api");
                }
            }
        }
        return f5785c;
    }

    public static /* synthetic */ void b(f fVar, long j10, Exception exc) {
        l5.b g10;
        Log.i("AdvertisingIdClient", "getting error as ".concat(String.valueOf(exc.getMessage())));
        if ((exc instanceof com.google.android.gms.common.api.b) && (g10 = ((com.google.android.gms.common.api.b) exc).getStatus().g()) != null && g10.g() == 24) {
            fVar.f5789b.set(j10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0040, code lost:
        if ((r2 - r19.f5789b.get()) > r6) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void c(int r20, int r21, long r22, long r24, int r26) {
        /*
            r19 = this;
            r1 = r19
            monitor-enter(r19)
            java.util.concurrent.atomic.AtomicLong r0 = r1.f5789b     // Catch: java.lang.Throwable -> L7d
            long r2 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L7d
            long r4 = r0.get()     // Catch: java.lang.Throwable -> L7d
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7d
            r0.<init>()     // Catch: java.lang.Throwable -> L7d
            java.lang.String r6 = "shouldSendLog "
            r0.append(r6)     // Catch: java.lang.Throwable -> L7d
            r0.append(r4)     // Catch: java.lang.Throwable -> L7d
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L7d
            java.lang.String r4 = "AdvertisingIdClient"
            android.util.Log.i(r4, r0)     // Catch: java.lang.Throwable -> L7d
            java.util.concurrent.atomic.AtomicLong r0 = r1.f5789b     // Catch: java.lang.Throwable -> L7d
            long r4 = r0.get()     // Catch: java.lang.Throwable -> L7d
            r6 = -1
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 != 0) goto L30
            goto L42
        L30:
            java.util.concurrent.atomic.AtomicLong r0 = r1.f5789b     // Catch: java.lang.Throwable -> L7d
            long r4 = r0.get()     // Catch: java.lang.Throwable -> L7d
            long r4 = r2 - r4
            java.time.Duration r0 = com.google.android.gms.ads.identifier.f.f5787e     // Catch: java.lang.Throwable -> L7d
            long r6 = com.google.android.gms.ads.identifier.e.a(r0)     // Catch: java.lang.Throwable -> L7d
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 <= 0) goto L7b
        L42:
            n5.w r0 = r1.f5788a     // Catch: java.lang.Throwable -> L7d
            if (r0 != 0) goto L47
            goto L7b
        L47:
            n5.u r4 = new n5.u     // Catch: java.lang.Throwable -> L7d
            r5 = 1
            n5.n[] r5 = new n5.n[r5]     // Catch: java.lang.Throwable -> L7d
            n5.n r18 = new n5.n     // Catch: java.lang.Throwable -> L7d
            r7 = 35401(0x8a49, float:4.9607E-41)
            r9 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            r6 = r18
            r8 = r21
            r10 = r22
            r12 = r24
            r17 = r26
            r6.<init>(r7, r8, r9, r10, r12, r14, r15, r16, r17)     // Catch: java.lang.Throwable -> L7d
            r6 = 0
            r5[r6] = r18     // Catch: java.lang.Throwable -> L7d
            java.util.List r5 = java.util.Arrays.asList(r5)     // Catch: java.lang.Throwable -> L7d
            r4.<init>(r6, r5)     // Catch: java.lang.Throwable -> L7d
            m6.Task r0 = r0.c(r4)     // Catch: java.lang.Throwable -> L7d
            com.google.android.gms.ads.identifier.c r4 = new com.google.android.gms.ads.identifier.c     // Catch: java.lang.Throwable -> L7d
            r4.<init>()     // Catch: java.lang.Throwable -> L7d
            r0.e(r4)     // Catch: java.lang.Throwable -> L7d
            monitor-exit(r19)
            return
        L7b:
            monitor-exit(r19)
            return
        L7d:
            r0 = move-exception
            monitor-exit(r19)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.identifier.f.c(int, int, long, long, int):void");
    }
}
