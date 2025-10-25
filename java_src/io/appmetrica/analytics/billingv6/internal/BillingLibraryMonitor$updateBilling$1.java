package io.appmetrica.analytics.billingv6.internal;

import android.content.Context;
import com.android.billingclient.api.d;
import io.appmetrica.analytics.billinginterface.internal.config.BillingConfig;
import io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoManager;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoSender;
import io.appmetrica.analytics.billinginterface.internal.update.UpdatePolicy;
import io.appmetrica.analytics.billingv6.impl.g;
import io.appmetrica.analytics.billingv6.impl.s;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public final class BillingLibraryMonitor$updateBilling$1 extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ BillingLibraryMonitor f17640a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ BillingConfig f17641b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BillingLibraryMonitor$updateBilling$1(BillingLibraryMonitor billingLibraryMonitor, BillingConfig billingConfig) {
        this.f17640a = billingLibraryMonitor;
        this.f17641b = billingConfig;
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [io.appmetrica.analytics.billingv6.internal.BillingLibraryMonitor$updateBilling$1$runSafety$1] */
    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public void runSafety() {
        Context context;
        context = this.f17640a.f17632a;
        d a10 = d.j(context).e(new s()).c().a();
        BillingConfig billingConfig = this.f17641b;
        final BillingLibraryMonitor billingLibraryMonitor = this.f17640a;
        ?? r42 = new UtilsProvider() { // from class: io.appmetrica.analytics.billingv6.internal.BillingLibraryMonitor$updateBilling$1$runSafety$1
            @Override // io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider
            public BillingInfoManager getBillingInfoManager() {
                return BillingLibraryMonitor.access$getBillingInfoManager$p(BillingLibraryMonitor.this);
            }

            @Override // io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider
            public BillingInfoSender getBillingInfoSender() {
                return BillingLibraryMonitor.access$getBillingInfoSender$p(BillingLibraryMonitor.this);
            }

            @Override // io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider
            public Executor getUiExecutor() {
                return BillingLibraryMonitor.access$getUiExecutor$p(BillingLibraryMonitor.this);
            }

            @Override // io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider
            public UpdatePolicy getUpdatePolicy() {
                return BillingLibraryMonitor.access$getUpdatePolicy$p(BillingLibraryMonitor.this);
            }

            @Override // io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider
            public Executor getWorkerExecutor() {
                return BillingLibraryMonitor.access$getWorkerExecutor$p(BillingLibraryMonitor.this);
            }
        };
        a10.r(new io.appmetrica.analytics.billingv6.impl.d(billingConfig, a10, r42, new g(a10, r42), billingLibraryMonitor));
    }
}
