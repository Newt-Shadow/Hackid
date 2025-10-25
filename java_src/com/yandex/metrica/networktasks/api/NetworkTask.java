package com.yandex.metrica.networktasks.api;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2.dex */
public class NetworkTask {

    /* renamed from: a  reason: collision with root package name */
    private d f14182a = d.EMPTY;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f14183b;

    /* renamed from: c  reason: collision with root package name */
    private final IExecutionPolicy f14184c;

    /* renamed from: d  reason: collision with root package name */
    private final ExponentialBackoffPolicy f14185d;

    /* renamed from: e  reason: collision with root package name */
    private final UnderlyingNetworkTask f14186e;

    /* renamed from: f  reason: collision with root package name */
    private final List f14187f;

    /* renamed from: g  reason: collision with root package name */
    private final String f14188g;

    /* loaded from: classes2.dex */
    public enum Method {
        GET,
        POST
    }

    /* loaded from: classes2.dex */
    public interface ShouldTryNextHostCondition {
        boolean shouldTryNextHost(int i10);
    }

    public NetworkTask(Executor executor, IExecutionPolicy iExecutionPolicy, ExponentialBackoffPolicy exponentialBackoffPolicy, UnderlyingNetworkTask underlyingNetworkTask, List list, String str) {
        this.f14183b = executor;
        this.f14184c = iExecutionPolicy;
        this.f14185d = exponentialBackoffPolicy;
        this.f14186e = underlyingNetworkTask;
        this.f14187f = list;
        this.f14188g = str;
    }

    private synchronized boolean a(d dVar) {
        if (b(dVar)) {
            this.f14182a = dVar;
            return true;
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private synchronized boolean b(d... dVarArr) {
        Boolean bool;
        Boolean bool2;
        Boolean bool3;
        bool = Boolean.TRUE;
        d dVar = this.f14182a;
        int length = dVarArr.length;
        int i10 = 0;
        while (true) {
            if (i10 < length) {
                boolean z10 = true;
                switch (dVarArr[i10].ordinal()) {
                    case 0:
                        bool3 = null;
                        break;
                    case 1:
                        if (dVar != d.EMPTY) {
                            z10 = false;
                        }
                        bool3 = Boolean.valueOf(z10);
                        break;
                    case 2:
                    case 6:
                        if (dVar != d.PENDING) {
                            if (dVar == d.REMOVED) {
                                bool3 = Boolean.FALSE;
                                break;
                            }
                            bool3 = null;
                            break;
                        }
                        bool3 = Boolean.TRUE;
                    case 3:
                        if (dVar != d.PREPARING && dVar != d.SUCCESS && dVar != d.FAILED) {
                            if (dVar == d.REMOVED) {
                                bool3 = Boolean.FALSE;
                                break;
                            }
                            bool3 = null;
                            break;
                        }
                        bool3 = Boolean.TRUE;
                        break;
                    case 4:
                    case 5:
                        if (dVar != d.EXECUTING) {
                            if (dVar == d.REMOVED) {
                                bool3 = Boolean.FALSE;
                                break;
                            }
                            bool3 = null;
                            break;
                        } else {
                            bool3 = Boolean.TRUE;
                        }
                    case 7:
                        if (dVar != d.SUCCESS && dVar != d.FAILED && dVar != d.SHOULD_NOT_EXECUTE && dVar != d.PENDING && dVar != d.PREPARING && dVar != d.EXECUTING) {
                            if (dVar == d.REMOVED) {
                                bool3 = Boolean.FALSE;
                                break;
                            }
                            bool3 = null;
                            break;
                        }
                        bool3 = Boolean.TRUE;
                        break;
                    case 8:
                        if (dVar != d.EMPTY) {
                            if (dVar == d.REMOVED) {
                                z10 = false;
                            }
                            bool3 = Boolean.valueOf(z10);
                            break;
                        } else {
                            bool3 = null;
                            break;
                        }
                    default:
                        bool3 = Boolean.FALSE;
                        break;
                }
                if (!Boolean.TRUE.equals(bool3)) {
                    bool = bool3;
                } else {
                    i10++;
                }
            }
        }
        bool2 = Boolean.TRUE;
        bool2.equals(bool);
        return bool2.equals(bool);
    }

    public String c() {
        return this.f14186e.description();
    }

    public IExecutionPolicy d() {
        return this.f14184c;
    }

    public Executor e() {
        return this.f14183b;
    }

    public ExponentialBackoffPolicy f() {
        return this.f14185d;
    }

    public RequestDataHolder g() {
        return this.f14186e.getRequestDataHolder();
    }

    public ResponseDataHolder h() {
        return this.f14186e.getResponseDataHolder();
    }

    public RetryPolicyConfig i() {
        return this.f14186e.getRetryPolicyConfig();
    }

    public SSLSocketFactory j() {
        return this.f14186e.getSslSocketFactory();
    }

    public UnderlyingNetworkTask k() {
        return this.f14186e;
    }

    public String l() {
        return this.f14186e.getFullUrlFormer().c();
    }

    public String m() {
        return this.f14188g;
    }

    public boolean n() {
        if (a(d.PREPARING)) {
            return this.f14186e.onCreateTask();
        }
        return false;
    }

    public boolean o() {
        boolean a10 = a(d.EXECUTING);
        if (a10) {
            this.f14186e.getFullUrlFormer().e();
            this.f14186e.getFullUrlFormer().a();
            this.f14186e.onPerformRequest();
        }
        return a10;
    }

    public boolean p() {
        boolean z10;
        boolean z11;
        synchronized (this) {
            d dVar = d.SUCCESS;
            z10 = false;
            d dVar2 = d.FAILED;
            if (b(dVar, dVar2)) {
                boolean onRequestComplete = this.f14186e.onRequestComplete();
                if (onRequestComplete) {
                    this.f14182a = dVar;
                } else {
                    this.f14182a = dVar2;
                }
                z11 = onRequestComplete;
                z10 = true;
            } else {
                z11 = false;
            }
        }
        if (z10) {
            this.f14186e.onPostRequestComplete(z11);
        }
        return z11;
    }

    public void q(Throwable th) {
        if (a(d.FAILED)) {
            this.f14186e.onRequestError(th);
        }
    }

    public void r() {
        if (a(d.SHOULD_NOT_EXECUTE)) {
            this.f14186e.onShouldNotExecute();
        }
    }

    public boolean s() {
        boolean a10 = a(d.PENDING);
        if (a10) {
            this.f14186e.onTaskAdded();
        }
        return a10;
    }

    public void t() {
        d dVar;
        boolean a10;
        synchronized (this) {
            dVar = this.f14182a;
            a10 = a(d.FINISHED);
        }
        if (a10) {
            this.f14186e.onTaskFinished();
            if (dVar == d.SUCCESS) {
                this.f14186e.onSuccessfulTaskFinished();
            } else if (dVar == d.FAILED || dVar == d.SHOULD_NOT_EXECUTE) {
                this.f14186e.onUnsuccessfulTaskFinished();
            }
        }
    }

    public void u() {
        if (a(d.REMOVED)) {
            this.f14186e.onTaskRemoved();
        }
    }

    public synchronized boolean v() {
        boolean z10;
        boolean z11;
        boolean d10 = this.f14186e.getFullUrlFormer().d();
        int a10 = this.f14186e.getResponseDataHolder().a();
        Iterator it = this.f14187f.iterator();
        while (true) {
            z10 = false;
            if (it.hasNext()) {
                if (!((ShouldTryNextHostCondition) it.next()).shouldTryNextHost(a10)) {
                    z11 = false;
                    break;
                }
            } else {
                z11 = true;
                break;
            }
        }
        d dVar = this.f14182a;
        if (dVar != d.REMOVED) {
            if (dVar != d.FINISHED && d10 && z11) {
                z10 = true;
            }
        }
        return z10;
    }
}
