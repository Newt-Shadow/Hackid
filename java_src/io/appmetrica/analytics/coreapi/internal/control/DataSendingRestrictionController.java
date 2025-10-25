package io.appmetrica.analytics.coreapi.internal.control;
/* loaded from: classes2.dex */
public interface DataSendingRestrictionController {
    boolean isRestrictedForBackgroundDataCollection();

    boolean isRestrictedForReporter();

    boolean isRestrictedForSdk();
}
