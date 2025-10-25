package io.appmetrica.analytics.gpllibrary.internal;

import io.appmetrica.analytics.gpllibrary.internal.GplLibraryWrapper;
/* loaded from: classes2.dex */
public interface IGplLibraryWrapper {
    void startLocationUpdates(GplLibraryWrapper.Priority priority);

    void stopLocationUpdates();

    void updateLastKnownLocation();
}
