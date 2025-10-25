package io.appmetrica.analytics.modulesapi.internal.service;

import android.location.Location;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.control.Toggle;
/* loaded from: classes2.dex */
public abstract class LocationServiceExtension {
    public abstract Consumer<Location> getLocationConsumer();

    public abstract Toggle getLocationControllerAppStateToggle();

    public abstract ModuleLocationSourcesServiceController getLocationSourcesController();
}
