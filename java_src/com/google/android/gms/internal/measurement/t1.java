package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import java.util.Map;
/* loaded from: classes.dex */
public interface t1 extends IInterface {
    void beginAdUnitExposure(String str, long j10);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    void clearMeasurementEnabled(long j10);

    void endAdUnitExposure(String str, long j10);

    void generateEventId(w1 w1Var);

    void getAppInstanceId(w1 w1Var);

    void getCachedAppInstanceId(w1 w1Var);

    void getConditionalUserProperties(String str, String str2, w1 w1Var);

    void getCurrentScreenClass(w1 w1Var);

    void getCurrentScreenName(w1 w1Var);

    void getGmpAppId(w1 w1Var);

    void getMaxUserProperties(String str, w1 w1Var);

    void getSessionId(w1 w1Var);

    void getTestFlag(w1 w1Var, int i10);

    void getUserProperties(String str, String str2, boolean z10, w1 w1Var);

    void initForTests(Map map);

    void initialize(u5.a aVar, g2 g2Var, long j10);

    void isDataCollectionEnabled(w1 w1Var);

    void logEvent(String str, String str2, Bundle bundle, boolean z10, boolean z11, long j10);

    void logEventAndBundle(String str, String str2, Bundle bundle, w1 w1Var, long j10);

    void logHealthData(int i10, String str, u5.a aVar, u5.a aVar2, u5.a aVar3);

    void onActivityCreated(u5.a aVar, Bundle bundle, long j10);

    void onActivityCreatedByScionActivityInfo(i2 i2Var, Bundle bundle, long j10);

    void onActivityDestroyed(u5.a aVar, long j10);

    void onActivityDestroyedByScionActivityInfo(i2 i2Var, long j10);

    void onActivityPaused(u5.a aVar, long j10);

    void onActivityPausedByScionActivityInfo(i2 i2Var, long j10);

    void onActivityResumed(u5.a aVar, long j10);

    void onActivityResumedByScionActivityInfo(i2 i2Var, long j10);

    void onActivitySaveInstanceState(u5.a aVar, w1 w1Var, long j10);

    void onActivitySaveInstanceStateByScionActivityInfo(i2 i2Var, w1 w1Var, long j10);

    void onActivityStarted(u5.a aVar, long j10);

    void onActivityStartedByScionActivityInfo(i2 i2Var, long j10);

    void onActivityStopped(u5.a aVar, long j10);

    void onActivityStoppedByScionActivityInfo(i2 i2Var, long j10);

    void performAction(Bundle bundle, w1 w1Var, long j10);

    void registerOnMeasurementEventListener(d2 d2Var);

    void resetAnalyticsData(long j10);

    void retrieveAndUploadBatches(z1 z1Var);

    void setConditionalUserProperty(Bundle bundle, long j10);

    void setConsent(Bundle bundle, long j10);

    void setConsentThirdParty(Bundle bundle, long j10);

    void setCurrentScreen(u5.a aVar, String str, String str2, long j10);

    void setCurrentScreenByScionActivityInfo(i2 i2Var, String str, String str2, long j10);

    void setDataCollectionEnabled(boolean z10);

    void setDefaultEventParameters(Bundle bundle);

    void setEventInterceptor(d2 d2Var);

    void setInstanceIdProvider(f2 f2Var);

    void setMeasurementEnabled(boolean z10, long j10);

    void setMinimumSessionDuration(long j10);

    void setSessionTimeoutDuration(long j10);

    void setSgtmDebugInfo(Intent intent);

    void setUserId(String str, long j10);

    void setUserProperty(String str, String str2, u5.a aVar, boolean z10, long j10);

    void unregisterOnMeasurementEventListener(d2 d2Var);
}
