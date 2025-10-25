package io.appmetrica.analytics.coreutils.internal.services;

import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.FirstExecutionConditionService;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.FirstExecutionDelayedTask;
import io.appmetrica.analytics.coreutils.internal.services.WaitForActivationDelayBarrier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class FirstExecutionConditionServiceImpl implements FirstExecutionConditionService {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList f17737a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private UtilityServiceConfiguration f17738b;

    /* renamed from: c  reason: collision with root package name */
    final UtilityServiceProvider f17739c;

    /* loaded from: classes2.dex */
    public static class FirstExecutionConditionChecker {

        /* renamed from: a  reason: collision with root package name */
        private boolean f17740a = false;

        /* renamed from: b  reason: collision with root package name */
        private long f17741b;

        /* renamed from: c  reason: collision with root package name */
        private long f17742c;

        /* renamed from: d  reason: collision with root package name */
        private long f17743d;

        /* renamed from: e  reason: collision with root package name */
        private final FirstExecutionDelayChecker f17744e;
        public final String tag;

        public FirstExecutionConditionChecker(UtilityServiceConfiguration utilityServiceConfiguration, FirstExecutionDelayChecker firstExecutionDelayChecker, String str) {
            long initialConfigTime;
            this.f17744e = firstExecutionDelayChecker;
            if (utilityServiceConfiguration == null) {
                initialConfigTime = 0;
            } else {
                initialConfigTime = utilityServiceConfiguration.getInitialConfigTime();
            }
            this.f17742c = initialConfigTime;
            this.f17741b = utilityServiceConfiguration != null ? utilityServiceConfiguration.getLastUpdateConfigTime() : 0L;
            this.f17743d = Long.MAX_VALUE;
            this.tag = str;
        }

        final void a(long j10) {
            this.f17743d = TimeUnit.SECONDS.toMillis(j10);
        }

        final boolean b() {
            if (this.f17740a) {
                return true;
            }
            return this.f17744e.delaySinceFirstStartupWasPassed(this.f17742c, this.f17741b, this.f17743d);
        }

        final void a() {
            this.f17740a = true;
        }

        final void a(UtilityServiceConfiguration utilityServiceConfiguration) {
            this.f17742c = utilityServiceConfiguration.getInitialConfigTime();
            this.f17741b = utilityServiceConfiguration.getLastUpdateConfigTime();
        }
    }

    /* loaded from: classes2.dex */
    public static class FirstExecutionDelayChecker {
        public boolean delaySinceFirstStartupWasPassed(long j10, long j11, long j12) {
            return j11 - j10 >= j12;
        }
    }

    /* loaded from: classes2.dex */
    public static class FirstExecutionHandler implements FirstExecutionDelayedTask {

        /* renamed from: a  reason: collision with root package name */
        private final FirstExecutionConditionChecker f17745a;

        /* renamed from: b  reason: collision with root package name */
        private final WaitForActivationDelayBarrier.ActivationBarrierHelper f17746b;

        /* renamed from: c  reason: collision with root package name */
        private final ICommonExecutor f17747c;

        /* synthetic */ FirstExecutionHandler(ICommonExecutor iCommonExecutor, WaitForActivationDelayBarrier.ActivationBarrierHelper activationBarrierHelper, FirstExecutionConditionChecker firstExecutionConditionChecker, int i10) {
            this(iCommonExecutor, activationBarrierHelper, firstExecutionConditionChecker);
        }

        public boolean canExecute() {
            boolean b10 = this.f17745a.b();
            if (b10) {
                this.f17745a.a();
            }
            return b10;
        }

        @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.FirstExecutionDelayedTask
        public void setInitialDelaySeconds(long j10) {
            this.f17745a.a(j10);
        }

        @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.FirstExecutionDelayedTask
        public boolean tryExecute(long j10) {
            if (this.f17745a.b()) {
                this.f17746b.subscribeIfNeeded(TimeUnit.SECONDS.toMillis(j10), this.f17747c);
                this.f17745a.a();
                return true;
            }
            return false;
        }

        public void updateConfig(UtilityServiceConfiguration utilityServiceConfiguration) {
            this.f17745a.a(utilityServiceConfiguration);
        }

        private FirstExecutionHandler(ICommonExecutor iCommonExecutor, WaitForActivationDelayBarrier.ActivationBarrierHelper activationBarrierHelper, FirstExecutionConditionChecker firstExecutionConditionChecker) {
            this.f17746b = activationBarrierHelper;
            this.f17745a = firstExecutionConditionChecker;
            this.f17747c = iCommonExecutor;
        }
    }

    public FirstExecutionConditionServiceImpl(UtilityServiceProvider utilityServiceProvider) {
        this.f17739c = utilityServiceProvider;
    }

    final synchronized FirstExecutionHandler a(ICommonExecutor iCommonExecutor, WaitForActivationDelayBarrier.ActivationBarrierHelper activationBarrierHelper, FirstExecutionConditionChecker firstExecutionConditionChecker) {
        FirstExecutionHandler firstExecutionHandler;
        firstExecutionHandler = new FirstExecutionHandler(iCommonExecutor, activationBarrierHelper, firstExecutionConditionChecker, 0);
        this.f17737a.add(firstExecutionHandler);
        return firstExecutionHandler;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.FirstExecutionConditionService
    public synchronized FirstExecutionDelayedTask createDelayedTask(String str, ICommonExecutor iCommonExecutor, Runnable runnable) {
        return a(iCommonExecutor, new WaitForActivationDelayBarrier.ActivationBarrierHelper(runnable, this.f17739c.getActivationBarrier()), new FirstExecutionConditionChecker(this.f17738b, new FirstExecutionDelayChecker(), str));
    }

    public void updateConfig(UtilityServiceConfiguration utilityServiceConfiguration) {
        ArrayList arrayList;
        synchronized (this) {
            this.f17738b = utilityServiceConfiguration;
            arrayList = new ArrayList(this.f17737a);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((FirstExecutionHandler) it.next()).updateConfig(utilityServiceConfiguration);
        }
    }
}
