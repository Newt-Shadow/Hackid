package com.yandex.metrica.impl.ob;

import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C0486dg;
/* renamed from: com.yandex.metrica.impl.ob.qg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0809qg implements InterfaceC0660kg {

    /* renamed from: a  reason: collision with root package name */
    private final InstallReferrerClient f13381a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f13382b;

    /* renamed from: com.yandex.metrica.impl.ob.qg$a */
    /* loaded from: classes2.dex */
    class a implements InstallReferrerStateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InterfaceC0928vg f13383a;

        /* renamed from: com.yandex.metrica.impl.ob.qg$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0133a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ C0486dg f13385a;

            RunnableC0133a(C0486dg c0486dg) {
                this.f13385a = c0486dg;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f13383a.a(this.f13385a);
            }
        }

        a(InterfaceC0928vg interfaceC0928vg) {
            this.f13383a = interfaceC0928vg;
        }

        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public void onInstallReferrerServiceDisconnected() {
        }

        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public void onInstallReferrerSetupFinished(int i10) {
            if (i10 == 0) {
                try {
                    ReferrerDetails installReferrer = C0809qg.this.f13381a.getInstallReferrer();
                    C0809qg.this.f13382b.execute(new RunnableC0133a(new C0486dg(installReferrer.getInstallReferrer(), installReferrer.getReferrerClickTimestampSeconds(), installReferrer.getInstallBeginTimestampSeconds(), C0486dg.a.GP)));
                } catch (Throwable th) {
                    C0809qg.a(C0809qg.this, this.f13383a, th);
                }
            } else {
                C0809qg c0809qg = C0809qg.this;
                InterfaceC0928vg interfaceC0928vg = this.f13383a;
                C0809qg.a(c0809qg, interfaceC0928vg, new IllegalStateException("Referrer check failed with error " + i10));
            }
            try {
                C0809qg.this.f13381a.endConnection();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0809qg(InstallReferrerClient installReferrerClient, ICommonExecutor iCommonExecutor) {
        this.f13381a = installReferrerClient;
        this.f13382b = iCommonExecutor;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0660kg
    public void a(InterfaceC0928vg interfaceC0928vg) {
        this.f13381a.startConnection(new a(interfaceC0928vg));
    }

    static void a(C0809qg c0809qg, InterfaceC0928vg interfaceC0928vg, Throwable th) {
        c0809qg.f13382b.execute(new RunnableC0832rg(c0809qg, interfaceC0928vg, th));
    }
}
