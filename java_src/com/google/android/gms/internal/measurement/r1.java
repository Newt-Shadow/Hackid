package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class r1 extends n0 implements t1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public r1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void beginAdUnitExposure(String str, long j10) {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeLong(j10);
        e1(23, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeString(str2);
        p0.c(k10, bundle);
        e1(9, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void endAdUnitExposure(String str, long j10) {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeLong(j10);
        e1(24, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void generateEventId(w1 w1Var) {
        Parcel k10 = k();
        p0.d(k10, w1Var);
        e1(22, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void getAppInstanceId(w1 w1Var) {
        Parcel k10 = k();
        p0.d(k10, w1Var);
        e1(20, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void getCachedAppInstanceId(w1 w1Var) {
        Parcel k10 = k();
        p0.d(k10, w1Var);
        e1(19, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void getConditionalUserProperties(String str, String str2, w1 w1Var) {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeString(str2);
        p0.d(k10, w1Var);
        e1(10, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void getCurrentScreenClass(w1 w1Var) {
        Parcel k10 = k();
        p0.d(k10, w1Var);
        e1(17, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void getCurrentScreenName(w1 w1Var) {
        Parcel k10 = k();
        p0.d(k10, w1Var);
        e1(16, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void getGmpAppId(w1 w1Var) {
        Parcel k10 = k();
        p0.d(k10, w1Var);
        e1(21, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void getMaxUserProperties(String str, w1 w1Var) {
        Parcel k10 = k();
        k10.writeString(str);
        p0.d(k10, w1Var);
        e1(6, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void getSessionId(w1 w1Var) {
        Parcel k10 = k();
        p0.d(k10, w1Var);
        e1(46, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void getUserProperties(String str, String str2, boolean z10, w1 w1Var) {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeString(str2);
        int i10 = p0.f6631b;
        k10.writeInt(z10 ? 1 : 0);
        p0.d(k10, w1Var);
        e1(5, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void initialize(u5.a aVar, g2 g2Var, long j10) {
        Parcel k10 = k();
        p0.d(k10, aVar);
        p0.c(k10, g2Var);
        k10.writeLong(j10);
        e1(1, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void logEvent(String str, String str2, Bundle bundle, boolean z10, boolean z11, long j10) {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeString(str2);
        p0.c(k10, bundle);
        k10.writeInt(z10 ? 1 : 0);
        k10.writeInt(z11 ? 1 : 0);
        k10.writeLong(j10);
        e1(2, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void logHealthData(int i10, String str, u5.a aVar, u5.a aVar2, u5.a aVar3) {
        Parcel k10 = k();
        k10.writeInt(5);
        k10.writeString(str);
        p0.d(k10, aVar);
        p0.d(k10, aVar2);
        p0.d(k10, aVar3);
        e1(33, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void onActivityCreatedByScionActivityInfo(i2 i2Var, Bundle bundle, long j10) {
        Parcel k10 = k();
        p0.c(k10, i2Var);
        p0.c(k10, bundle);
        k10.writeLong(j10);
        e1(53, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void onActivityDestroyedByScionActivityInfo(i2 i2Var, long j10) {
        Parcel k10 = k();
        p0.c(k10, i2Var);
        k10.writeLong(j10);
        e1(54, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void onActivityPausedByScionActivityInfo(i2 i2Var, long j10) {
        Parcel k10 = k();
        p0.c(k10, i2Var);
        k10.writeLong(j10);
        e1(55, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void onActivityResumedByScionActivityInfo(i2 i2Var, long j10) {
        Parcel k10 = k();
        p0.c(k10, i2Var);
        k10.writeLong(j10);
        e1(56, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void onActivitySaveInstanceStateByScionActivityInfo(i2 i2Var, w1 w1Var, long j10) {
        Parcel k10 = k();
        p0.c(k10, i2Var);
        p0.d(k10, w1Var);
        k10.writeLong(j10);
        e1(57, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void onActivityStartedByScionActivityInfo(i2 i2Var, long j10) {
        Parcel k10 = k();
        p0.c(k10, i2Var);
        k10.writeLong(j10);
        e1(51, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void onActivityStoppedByScionActivityInfo(i2 i2Var, long j10) {
        Parcel k10 = k();
        p0.c(k10, i2Var);
        k10.writeLong(j10);
        e1(52, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void registerOnMeasurementEventListener(d2 d2Var) {
        Parcel k10 = k();
        p0.d(k10, d2Var);
        e1(35, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void resetAnalyticsData(long j10) {
        Parcel k10 = k();
        k10.writeLong(j10);
        e1(12, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void retrieveAndUploadBatches(z1 z1Var) {
        Parcel k10 = k();
        p0.d(k10, z1Var);
        e1(58, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void setConditionalUserProperty(Bundle bundle, long j10) {
        Parcel k10 = k();
        p0.c(k10, bundle);
        k10.writeLong(j10);
        e1(8, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void setConsentThirdParty(Bundle bundle, long j10) {
        Parcel k10 = k();
        p0.c(k10, bundle);
        k10.writeLong(j10);
        e1(45, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void setCurrentScreenByScionActivityInfo(i2 i2Var, String str, String str2, long j10) {
        Parcel k10 = k();
        p0.c(k10, i2Var);
        k10.writeString(str);
        k10.writeString(str2);
        k10.writeLong(j10);
        e1(50, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void setDataCollectionEnabled(boolean z10) {
        Parcel k10 = k();
        int i10 = p0.f6631b;
        k10.writeInt(z10 ? 1 : 0);
        e1(39, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void setDefaultEventParameters(Bundle bundle) {
        Parcel k10 = k();
        p0.c(k10, bundle);
        e1(42, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void setMeasurementEnabled(boolean z10, long j10) {
        Parcel k10 = k();
        int i10 = p0.f6631b;
        k10.writeInt(z10 ? 1 : 0);
        k10.writeLong(j10);
        e1(11, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void setSessionTimeoutDuration(long j10) {
        Parcel k10 = k();
        k10.writeLong(j10);
        e1(14, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void setUserId(String str, long j10) {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeLong(j10);
        e1(7, k10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public final void setUserProperty(String str, String str2, u5.a aVar, boolean z10, long j10) {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeString(str2);
        p0.d(k10, aVar);
        k10.writeInt(z10 ? 1 : 0);
        k10.writeLong(j10);
        e1(4, k10);
    }
}
