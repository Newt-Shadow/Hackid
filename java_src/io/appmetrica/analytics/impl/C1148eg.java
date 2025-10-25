package io.appmetrica.analytics.impl;

import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
/* renamed from: io.appmetrica.analytics.impl.eg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1148eg implements InstallReferrerStateListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ InterfaceC1447qg f19595a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1198gg f19596b;

    public C1148eg(C1198gg c1198gg, InterfaceC1447qg interfaceC1447qg) {
        this.f19596b = c1198gg;
        this.f19595a = interfaceC1447qg;
    }

    @Override // com.android.installreferrer.api.InstallReferrerStateListener
    public final void onInstallReferrerServiceDisconnected() {
    }

    @Override // com.android.installreferrer.api.InstallReferrerStateListener
    public final void onInstallReferrerSetupFinished(int i10) {
        if (i10 == 0) {
            try {
                ReferrerDetails installReferrer = this.f19596b.f19675a.getInstallReferrer();
                this.f19596b.f19676b.execute(new RunnableC1123dg(this, new C1322lg(installReferrer.getInstallReferrer(), installReferrer.getReferrerClickTimestampSeconds(), installReferrer.getInstallBeginTimestampSeconds(), EnumC1297kg.f19973c)));
            } catch (Throwable th) {
                this.f19596b.f19676b.execute(new RunnableC1173fg(this.f19595a, th));
            }
        } else {
            C1198gg c1198gg = this.f19596b;
            InterfaceC1447qg interfaceC1447qg = this.f19595a;
            c1198gg.f19676b.execute(new RunnableC1173fg(interfaceC1447qg, new IllegalStateException("Referrer check failed with error " + i10)));
        }
        try {
            this.f19596b.f19675a.endConnection();
        } catch (Throwable unused) {
        }
    }
}
