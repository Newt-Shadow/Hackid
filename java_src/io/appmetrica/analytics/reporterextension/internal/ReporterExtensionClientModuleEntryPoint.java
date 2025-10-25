package io.appmetrica.analytics.reporterextension.internal;

import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint;
import io.appmetrica.analytics.reporterextension.internal.ReporterExtensionClientModuleEntryPoint;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class ReporterExtensionClientModuleEntryPoint extends ModuleClientEntryPoint<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final long f21361a = 10;

    /* renamed from: b  reason: collision with root package name */
    private final String f21362b = "reporter_extension";

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(ClientContext clientContext) {
        clientContext.getClientActivator().activate(clientContext.getContext());
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public String getIdentifier() {
        return this.f21362b;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public void initClientSide(final ClientContext clientContext) {
        super.initClientSide(clientContext);
        if (clientContext.getProcessDetector().isMainProcess()) {
            clientContext.getClientExecutorProvider().getDefaultExecutor().executeDelayed(new Runnable() { // from class: sc.a
                @Override // java.lang.Runnable
                public final void run() {
                    ReporterExtensionClientModuleEntryPoint.a(ClientContext.this);
                }
            }, this.f21361a, TimeUnit.SECONDS);
        }
    }
}
