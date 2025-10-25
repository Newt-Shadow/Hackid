package io.appmetrica.analytics.networktasks.internal;

import io.appmetrica.analytics.coreapi.internal.io.IExecutionPolicy;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2.dex */
public class NetworkTask {

    /* renamed from: a  reason: collision with root package name */
    private int f21286a = 1;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f21287b;

    /* renamed from: c  reason: collision with root package name */
    private final IExecutionPolicy f21288c;

    /* renamed from: d  reason: collision with root package name */
    private final ExponentialBackoffPolicy f21289d;

    /* renamed from: e  reason: collision with root package name */
    private final UnderlyingNetworkTask f21290e;

    /* renamed from: f  reason: collision with root package name */
    private final List f21291f;

    /* renamed from: g  reason: collision with root package name */
    private final String f21292g;

    /* loaded from: classes2.dex */
    public enum Method {
        GET,
        POST
    }

    /* loaded from: classes2.dex */
    public interface ShouldTryNextHostCondition {
        boolean shouldTryNextHost(int i10);
    }

    public NetworkTask(Executor executor, IExecutionPolicy iExecutionPolicy, ExponentialBackoffPolicy exponentialBackoffPolicy, UnderlyingNetworkTask underlyingNetworkTask, List<ShouldTryNextHostCondition> list, String str) {
        this.f21287b = executor;
        this.f21288c = iExecutionPolicy;
        this.f21289d = exponentialBackoffPolicy;
        this.f21290e = underlyingNetworkTask;
        this.f21291f = list;
        this.f21292g = str;
    }

    private synchronized boolean a(int i10) {
        if (a(i10)) {
            this.f21286a = i10;
            return true;
        }
        return false;
    }

    public String description() {
        return this.f21290e.description();
    }

    public IExecutionPolicy getConnectionExecutionPolicy() {
        return this.f21288c;
    }

    public Executor getExecutor() {
        return this.f21287b;
    }

    public ExponentialBackoffPolicy getExponentialBackoffPolicy() {
        return this.f21289d;
    }

    public RequestDataHolder getRequestDataHolder() {
        return this.f21290e.getRequestDataHolder();
    }

    public ResponseDataHolder getResponseDataHolder() {
        return this.f21290e.getResponseDataHolder();
    }

    public RetryPolicyConfig getRetryPolicyConfig() {
        return this.f21290e.getRetryPolicyConfig();
    }

    public SSLSocketFactory getSslSocketFactory() {
        return this.f21290e.getSslSocketFactory();
    }

    public UnderlyingNetworkTask getUnderlyingTask() {
        return this.f21290e;
    }

    public String getUrl() {
        return this.f21290e.getFullUrlFormer().getUrl();
    }

    public String getUserAgent() {
        return this.f21292g;
    }

    public boolean isRemoved() {
        if (this.f21286a == 9) {
            return true;
        }
        return false;
    }

    public boolean onCreateNetworkTask() {
        if (a(3)) {
            return this.f21290e.onCreateTask();
        }
        return false;
    }

    public boolean onPerformRequest() {
        boolean a10 = a(4);
        if (a10) {
            this.f21290e.getFullUrlFormer().incrementAttemptNumber();
            this.f21290e.getFullUrlFormer().buildAndSetFullHostUrl();
            this.f21290e.onPerformRequest();
        }
        return a10;
    }

    public boolean onRequestComplete() {
        boolean z10;
        boolean z11;
        synchronized (this) {
            if (a(5, 6)) {
                z10 = this.f21290e.onRequestComplete();
                if (z10) {
                    this.f21286a = 5;
                } else {
                    this.f21286a = 6;
                }
                z11 = true;
            } else {
                z10 = false;
                z11 = false;
            }
        }
        if (z11) {
            this.f21290e.onPostRequestComplete(z10);
        }
        return z10;
    }

    public void onRequestError(Throwable th) {
        if (a(6)) {
            this.f21290e.onRequestError(th);
        }
    }

    public void onShouldNotExecute() {
        if (a(7)) {
            this.f21290e.onShouldNotExecute();
        }
    }

    public boolean onTaskAdded() {
        boolean a10 = a(2);
        if (a10) {
            this.f21290e.onTaskAdded();
        }
        return a10;
    }

    public void onTaskFinished() {
        int i10;
        boolean a10;
        synchronized (this) {
            i10 = this.f21286a;
            a10 = a(8);
        }
        if (a10) {
            this.f21290e.onTaskFinished();
            if (i10 == 5) {
                this.f21290e.onSuccessfulTaskFinished();
            } else if (i10 == 6 || i10 == 7) {
                this.f21290e.onUnsuccessfulTaskFinished();
            }
        }
    }

    public void onTaskRemoved() {
        if (a(9)) {
            this.f21290e.onTaskRemoved();
        }
    }

    public synchronized boolean shouldTryNextHost() {
        boolean z10;
        boolean z11;
        boolean hasMoreHosts = this.f21290e.getFullUrlFormer().hasMoreHosts();
        int responseCode = this.f21290e.getResponseDataHolder().getResponseCode();
        Iterator it = this.f21291f.iterator();
        while (true) {
            z10 = false;
            if (it.hasNext()) {
                if (!((ShouldTryNextHostCondition) it.next()).shouldTryNextHost(responseCode)) {
                    z11 = false;
                    break;
                }
            } else {
                z11 = true;
                break;
            }
        }
        int i10 = this.f21286a;
        if (i10 != 9 && i10 != 8 && hasMoreHosts && z11) {
            z10 = true;
        }
        return z10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0062 A[Catch: all -> 0x008c, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x0018, B:7:0x001b, B:47:0x0074, B:50:0x007e, B:13:0x0027, B:23:0x003c, B:24:0x003f, B:26:0x0044, B:28:0x0049, B:30:0x004e, B:36:0x005a, B:37:0x005d, B:39:0x0062, B:41:0x0067, B:45:0x006e, B:51:0x0081), top: B:57:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized boolean a(int... r14) {
        /*
            r13 = this;
            monitor-enter(r13)
            java.lang.Boolean r0 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L8c
            int r1 = r13.f21286a     // Catch: java.lang.Throwable -> L8c
            int r2 = r14.length     // Catch: java.lang.Throwable -> L8c
            r3 = 0
            r4 = r3
        L8:
            if (r4 >= r2) goto L81
            r5 = r14[r4]     // Catch: java.lang.Throwable -> L8c
            int r5 = io.appmetrica.analytics.networktasks.impl.e.a(r5)     // Catch: java.lang.Throwable -> L8c
            r6 = 6
            r7 = 5
            r8 = 4
            r9 = 2
            r10 = 3
            r11 = 9
            r12 = 1
            switch(r5) {
                case 0: goto L73;
                case 1: goto L6a;
                case 2: goto L60;
                case 3: goto L51;
                case 4: goto L47;
                case 5: goto L47;
                case 6: goto L42;
                case 7: goto L2c;
                case 8: goto L1f;
                default: goto L1b;
            }     // Catch: java.lang.Throwable -> L8c
        L1b:
            java.lang.Boolean r5 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L8c
            goto L74
        L1f:
            if (r1 != r12) goto L23
            goto L73
        L23:
            if (r1 == r11) goto L26
            goto L27
        L26:
            r12 = r3
        L27:
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r12)     // Catch: java.lang.Throwable -> L8c
            goto L74
        L2c:
            if (r1 == r7) goto L3f
            if (r1 == r6) goto L3f
            r5 = 7
            if (r1 == r5) goto L3f
            if (r1 == r9) goto L3f
            if (r1 == r10) goto L3f
            if (r1 != r8) goto L3a
            goto L3f
        L3a:
            if (r1 != r11) goto L73
            java.lang.Boolean r5 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L8c
            goto L74
        L3f:
            java.lang.Boolean r5 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L8c
            goto L74
        L42:
            if (r1 != r10) goto L60
            java.lang.Boolean r5 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L8c
            goto L74
        L47:
            if (r1 != r8) goto L4c
            java.lang.Boolean r5 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L8c
            goto L74
        L4c:
            if (r1 != r11) goto L73
            java.lang.Boolean r5 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L8c
            goto L74
        L51:
            if (r1 == r10) goto L5d
            if (r1 == r7) goto L5d
            if (r1 != r6) goto L58
            goto L5d
        L58:
            if (r1 != r11) goto L73
            java.lang.Boolean r5 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L8c
            goto L74
        L5d:
            java.lang.Boolean r5 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L8c
            goto L74
        L60:
            if (r1 != r9) goto L65
            java.lang.Boolean r5 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L8c
            goto L74
        L65:
            if (r1 != r11) goto L73
            java.lang.Boolean r5 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L8c
            goto L74
        L6a:
            if (r1 != r12) goto L6d
            goto L6e
        L6d:
            r12 = r3
        L6e:
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r12)     // Catch: java.lang.Throwable -> L8c
            goto L74
        L73:
            r5 = 0
        L74:
            java.lang.Boolean r6 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L8c
            boolean r6 = r6.equals(r5)     // Catch: java.lang.Throwable -> L8c
            if (r6 != 0) goto L7e
            r0 = r5
            goto L81
        L7e:
            int r4 = r4 + 1
            goto L8
        L81:
            java.lang.Boolean r14 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L8c
            r14.equals(r0)     // Catch: java.lang.Throwable -> L8c
            boolean r14 = r14.equals(r0)     // Catch: java.lang.Throwable -> L8c
            monitor-exit(r13)
            return r14
        L8c:
            r14 = move-exception
            monitor-exit(r13)
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.networktasks.internal.NetworkTask.a(int[]):boolean");
    }
}
