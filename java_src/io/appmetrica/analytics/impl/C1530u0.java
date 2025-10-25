package io.appmetrica.analytics.impl;

import android.location.Location;
import android.os.Bundle;
import io.appmetrica.analytics.AdvIdentifiersResult;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.AppMetricaLibraryAdapterConfig;
import io.appmetrica.analytics.DeferredDeeplinkListener;
import io.appmetrica.analytics.DeferredDeeplinkParametersListener;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.StartupParamsCallback;
import java.util.List;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.u0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1530u0 implements Oa {
    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.L6
    public final void a(int i10, Bundle bundle) {
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.Tc
    public final void b(boolean z10) {
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final InterfaceC1118db c(ReporterConfig reporterConfig) {
        return new C1249ii();
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.Tc
    public final void clearAppEnvironment() {
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final C1266ja d() {
        return new C1266ja();
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final String e() {
        return null;
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final Map<String, String> g() {
        return null;
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final AdvIdentifiersResult h() {
        AdvIdentifiersResult.Details details = AdvIdentifiersResult.Details.INTERNAL_ERROR;
        return new AdvIdentifiersResult(new AdvIdentifiersResult.AdvId(null, details, "Device user is in locked state"), new AdvIdentifiersResult.AdvId(null, details, "Device user is in locked state"), new AdvIdentifiersResult.AdvId(null, details, "Device user is in locked state"));
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final C1567vc i() {
        Jc jc2 = new Jc();
        return new C1567vc(jc2, new K7(jc2));
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.Tc
    public final void putAppEnvironmentValue(String str, String str2) {
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.Tc
    public final void setDataSendingEnabled(boolean z10) {
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.Tc
    public final void setUserProfileID(String str) {
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.Tc
    public final void a(Location location) {
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final void a(AppMetricaConfig appMetricaConfig) {
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final void a(AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig) {
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final void a(DeferredDeeplinkListener deferredDeeplinkListener) {
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final void a(ReporterConfig reporterConfig) {
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.Tc
    public final void a(String str, String str2) {
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.Tc
    public final void a(boolean z10) {
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final void a(StartupParamsCallback startupParamsCallback, List<String> list) {
        startupParamsCallback.onRequestError(StartupParamsCallback.Reason.UNKNOWN, null);
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.InterfaceC1168fb
    public final InterfaceC1143eb a() {
        return new C1324li();
    }
}
