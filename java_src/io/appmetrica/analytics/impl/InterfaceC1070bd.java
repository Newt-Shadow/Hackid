package io.appmetrica.analytics.impl;

import android.location.Location;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.control.Toggle;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleLocationSourcesServiceController;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServicesDatabase;
import java.util.List;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.bd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public interface InterfaceC1070bd extends InterfaceC1568vd {
    List<ModuleServicesDatabase> b();

    /* synthetic */ Map c();

    /* synthetic */ Map d();

    List<Consumer<Location>> e();

    ModuleLocationSourcesServiceController f();

    Toggle g();

    /* synthetic */ List h();
}
