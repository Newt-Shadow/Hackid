package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.billinginterface.internal.BillingType;
import io.appmetrica.analytics.billinginterface.internal.monitor.BillingMonitor;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoSender;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoStorage;
import io.appmetrica.analytics.billingv6.internal.BillingLibraryMonitor;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate.ApplicationState;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate.ApplicationStateProvider;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import java.util.concurrent.Executor;
/* renamed from: io.appmetrica.analytics.impl.j3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1259j3 implements Vl {

    /* renamed from: a  reason: collision with root package name */
    public BillingMonitor f19828a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f19829b;

    /* renamed from: c  reason: collision with root package name */
    public final Executor f19830c;

    /* renamed from: d  reason: collision with root package name */
    public final Executor f19831d;

    /* renamed from: e  reason: collision with root package name */
    public final BillingType f19832e;

    /* renamed from: f  reason: collision with root package name */
    public final BillingInfoStorage f19833f;

    /* renamed from: g  reason: collision with root package name */
    public final BillingInfoSender f19834g;

    /* renamed from: h  reason: collision with root package name */
    public final ApplicationStateProvider f19835h;

    /* renamed from: i  reason: collision with root package name */
    public final C1210h3 f19836i;

    public C1259j3(Context context, Executor executor, Executor executor2, BillingType billingType, BillingInfoStorage billingInfoStorage, BillingInfoSender billingInfoSender) {
        this(context, executor, executor2, billingType, billingInfoStorage, billingInfoSender, C1665za.j().d(), new C1210h3());
    }

    public final void a(Ql ql, Boolean bool) {
        BillingMonitor c1140e8;
        if (((Boolean) WrapUtils.getOrDefault(bool, Boolean.TRUE)).booleanValue()) {
            synchronized (this) {
                C1210h3 c1210h3 = this.f19836i;
                Context context = this.f19829b;
                Executor executor = this.f19830c;
                Executor executor2 = this.f19831d;
                BillingType billingType = this.f19832e;
                BillingInfoStorage billingInfoStorage = this.f19833f;
                BillingInfoSender billingInfoSender = this.f19834g;
                c1210h3.getClass();
                if (AbstractC1185g3.f19668a[billingType.ordinal()] == 1) {
                    c1140e8 = new BillingLibraryMonitor(context, executor, executor2, billingInfoStorage, billingInfoSender, null, null, 96, null);
                } else {
                    c1140e8 = new C1140e8();
                }
                this.f19828a = c1140e8;
            }
            c1140e8.onBillingConfigChanged(ql.f18851x);
            if (this.f19835h.registerStickyObserver(new C1235i3(this)) == ApplicationState.VISIBLE) {
                try {
                    BillingMonitor billingMonitor = this.f19828a;
                    if (billingMonitor != null) {
                        billingMonitor.onSessionResumed();
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public C1259j3(Context context, Executor executor, Executor executor2, BillingType billingType, BillingInfoStorage billingInfoStorage, BillingInfoSender billingInfoSender, ApplicationStateProvider applicationStateProvider, C1210h3 c1210h3) {
        this.f19829b = context;
        this.f19830c = executor;
        this.f19831d = executor2;
        this.f19832e = billingType;
        this.f19833f = billingInfoStorage;
        this.f19834g = billingInfoSender;
        this.f19835h = applicationStateProvider;
        this.f19836i = c1210h3;
    }

    @Override // io.appmetrica.analytics.impl.Vl
    public final synchronized void a(Ql ql) {
        BillingMonitor billingMonitor;
        synchronized (this) {
            billingMonitor = this.f19828a;
        }
        if (billingMonitor != null) {
            billingMonitor.onBillingConfigChanged(ql.f18851x);
        }
    }
}
