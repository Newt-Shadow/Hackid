package com.yandex.metrica.networktasks.impl;

import com.yandex.metrica.networktasks.api.NetworkTask;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final NetworkTask f14229a;

    /* renamed from: b  reason: collision with root package name */
    private final c f14230b;

    /* renamed from: c  reason: collision with root package name */
    private final d f14231c;

    public f(NetworkTask networkTask, c rootThreadStateSource, d taskPerformingStrategy) {
        m.e(networkTask, "networkTask");
        m.e(rootThreadStateSource, "rootThreadStateSource");
        m.e(taskPerformingStrategy, "taskPerformingStrategy");
        this.f14229a = networkTask;
        this.f14230b = rootThreadStateSource;
        this.f14231c = taskPerformingStrategy;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0076, code lost:
        r0.onAllHostsAttemptsFinished(r2.booleanValue());
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r6 = this;
            com.yandex.metrica.networktasks.api.NetworkTask r0 = r6.f14229a
            com.yandex.metrica.networktasks.api.ExponentialBackoffPolicy r0 = r0.f()
            java.lang.String r1 = "networkTask.exponentialBackoffPolicy"
            kotlin.jvm.internal.m.d(r0, r1)
            com.yandex.metrica.networktasks.api.NetworkTask r1 = r6.f14229a
            com.yandex.metrica.networktasks.api.IExecutionPolicy r1 = r1.d()
            java.lang.String r2 = "networkTask.connectionExecutionPolicy"
            kotlin.jvm.internal.m.d(r1, r2)
            com.yandex.metrica.networktasks.impl.c r2 = r6.f14230b
            boolean r2 = r2.a()
            r3 = 0
            if (r2 == 0) goto L7e
            boolean r1 = r1.canBeExecuted()
            if (r1 == 0) goto L7e
            com.yandex.metrica.networktasks.api.NetworkTask r1 = r6.f14229a
            com.yandex.metrica.networktasks.api.RetryPolicyConfig r1 = r1.i()
            boolean r1 = r0.canBeExecuted(r1)
            if (r1 == 0) goto L7e
            com.yandex.metrica.networktasks.api.NetworkTask r1 = r6.f14229a
            boolean r1 = r1.n()
            r2 = 0
        L38:
            com.yandex.metrica.networktasks.impl.c r4 = r6.f14230b
            boolean r4 = r4.a()
            r5 = 1
            if (r4 == 0) goto L74
            if (r1 == 0) goto L74
            com.yandex.metrica.networktasks.api.NetworkTask r1 = r6.f14229a
            com.yandex.metrica.networktasks.api.RetryPolicyConfig r1 = r1.i()
            boolean r1 = r0.canBeExecuted(r1)
            if (r1 == 0) goto L74
            com.yandex.metrica.networktasks.impl.d r1 = r6.f14231c
            com.yandex.metrica.networktasks.api.NetworkTask r2 = r6.f14229a
            boolean r1 = r1.b(r2)
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r1)
            boolean r1 = r2.booleanValue()
            if (r1 != 0) goto L6b
            com.yandex.metrica.networktasks.api.NetworkTask r1 = r6.f14229a
            boolean r1 = r1.v()
            if (r1 == 0) goto L6b
            r1 = r5
            goto L6c
        L6b:
            r1 = r3
        L6c:
            boolean r4 = r2.booleanValue()
            r0.onHostAttemptFinished(r4)
            goto L38
        L74:
            if (r2 == 0) goto L7d
            boolean r1 = r2.booleanValue()
            r0.onAllHostsAttemptsFinished(r1)
        L7d:
            r3 = r5
        L7e:
            if (r3 != 0) goto L85
            com.yandex.metrica.networktasks.api.NetworkTask r0 = r6.f14229a
            r0.r()
        L85:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.networktasks.impl.f.run():void");
    }
}
