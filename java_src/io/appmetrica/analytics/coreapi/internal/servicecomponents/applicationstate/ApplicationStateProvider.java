package io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate;
/* loaded from: classes2.dex */
public interface ApplicationStateProvider {
    ApplicationState getCurrentState();

    ApplicationState registerStickyObserver(ApplicationStateObserver applicationStateObserver);
}
