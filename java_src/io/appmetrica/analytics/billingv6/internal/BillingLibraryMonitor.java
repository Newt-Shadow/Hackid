package io.appmetrica.analytics.billingv6.internal;

import android.content.Context;
import io.appmetrica.analytics.billinginterface.internal.config.BillingConfig;
import io.appmetrica.analytics.billinginterface.internal.monitor.BillingMonitor;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoManager;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoSender;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoStorage;
import io.appmetrica.analytics.billinginterface.internal.update.UpdatePolicy;
import io.appmetrica.analytics.billingv6.impl.e;
import io.appmetrica.analytics.billingv6.impl.u;
import io.appmetrica.analytics.billingv6.impl.v;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class BillingLibraryMonitor implements BillingMonitor, u {

    /* renamed from: a */
    private final Context f17632a;

    /* renamed from: b */
    private final Executor f17633b;

    /* renamed from: c */
    private final Executor f17634c;

    /* renamed from: d */
    private final BillingInfoSender f17635d;

    /* renamed from: e */
    private final BillingInfoManager f17636e;

    /* renamed from: f */
    private final UpdatePolicy f17637f;

    /* renamed from: g */
    private BillingConfig f17638g;

    /* renamed from: h */
    private boolean f17639h;

    public BillingLibraryMonitor(Context context, Executor executor, Executor executor2, BillingInfoStorage billingInfoStorage, BillingInfoSender billingInfoSender, BillingInfoManager billingInfoManager, UpdatePolicy updatePolicy) {
        this.f17632a = context;
        this.f17633b = executor;
        this.f17634c = executor2;
        this.f17635d = billingInfoSender;
        this.f17636e = billingInfoManager;
        this.f17637f = updatePolicy;
    }

    public static final /* synthetic */ BillingInfoManager access$getBillingInfoManager$p(BillingLibraryMonitor billingLibraryMonitor) {
        return billingLibraryMonitor.f17636e;
    }

    public static final /* synthetic */ BillingInfoSender access$getBillingInfoSender$p(BillingLibraryMonitor billingLibraryMonitor) {
        return billingLibraryMonitor.f17635d;
    }

    public static final /* synthetic */ Executor access$getUiExecutor$p(BillingLibraryMonitor billingLibraryMonitor) {
        return billingLibraryMonitor.f17634c;
    }

    public static final /* synthetic */ UpdatePolicy access$getUpdatePolicy$p(BillingLibraryMonitor billingLibraryMonitor) {
        return billingLibraryMonitor.f17637f;
    }

    public static final /* synthetic */ Executor access$getWorkerExecutor$p(BillingLibraryMonitor billingLibraryMonitor) {
        return billingLibraryMonitor.f17633b;
    }

    @Override // io.appmetrica.analytics.billinginterface.internal.config.BillingConfigChangedListener
    public synchronized void onBillingConfigChanged(BillingConfig billingConfig) {
        if (m.a(this.f17638g, billingConfig)) {
            return;
        }
        this.f17638g = billingConfig;
        if (billingConfig != null && !this.f17639h) {
            this.f17639h = true;
            this.f17634c.execute(new BillingLibraryMonitor$updateBilling$1(this, billingConfig));
        }
    }

    @Override // io.appmetrica.analytics.billinginterface.internal.monitor.BillingMonitor
    public void onSessionResumed() {
        BillingConfig billingConfig = this.f17638g;
        if (billingConfig != null && !this.f17639h) {
            this.f17639h = true;
            this.f17634c.execute(new BillingLibraryMonitor$updateBilling$1(this, billingConfig));
        }
    }

    @Override // io.appmetrica.analytics.billingv6.impl.u
    public synchronized void onUpdateFinished() {
        this.f17639h = false;
    }

    public /* synthetic */ BillingLibraryMonitor(Context context, Executor executor, Executor executor2, BillingInfoStorage billingInfoStorage, BillingInfoSender billingInfoSender, BillingInfoManager billingInfoManager, UpdatePolicy updatePolicy, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, executor, executor2, billingInfoStorage, billingInfoSender, (i10 & 32) != 0 ? new e(billingInfoStorage) : billingInfoManager, (i10 & 64) != 0 ? new v(null, 1, null) : updatePolicy);
    }
}
