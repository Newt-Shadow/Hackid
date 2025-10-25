package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.util.DynamiteApi;
import java.util.Map;
@DynamiteApi
/* loaded from: classes.dex */
public class AppMeasurementDynamiteService extends com.google.android.gms.internal.measurement.s1 {

    /* renamed from: a  reason: collision with root package name */
    w6 f7206a = null;

    /* renamed from: g  reason: collision with root package name */
    private final Map f7207g = new r.a();

    private final void e1(com.google.android.gms.internal.measurement.w1 w1Var, String str) {
        k();
        this.f7206a.C().a0(w1Var, str);
    }

    private final void k() {
        if (this.f7206a != null) {
            return;
        }
        throw new IllegalStateException("Attempting to perform action before initialize.");
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void beginAdUnitExposure(String str, long j10) {
        k();
        this.f7206a.M().i(str, j10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        k();
        this.f7206a.B().O(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void clearMeasurementEnabled(long j10) {
        k();
        this.f7206a.B().n0(null);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void endAdUnitExposure(String str, long j10) {
        k();
        this.f7206a.M().j(str, j10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void generateEventId(com.google.android.gms.internal.measurement.w1 w1Var) {
        k();
        long p02 = this.f7206a.C().p0();
        k();
        this.f7206a.C().b0(w1Var, p02);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void getAppInstanceId(com.google.android.gms.internal.measurement.w1 w1Var) {
        k();
        this.f7206a.b().t(new t6(this, w1Var));
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void getCachedAppInstanceId(com.google.android.gms.internal.measurement.w1 w1Var) {
        k();
        e1(w1Var, this.f7206a.B().D());
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void getConditionalUserProperties(String str, String str2, com.google.android.gms.internal.measurement.w1 w1Var) {
        k();
        this.f7206a.b().t(new ja(this, w1Var, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void getCurrentScreenClass(com.google.android.gms.internal.measurement.w1 w1Var) {
        k();
        e1(w1Var, this.f7206a.B().R());
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void getCurrentScreenName(com.google.android.gms.internal.measurement.w1 w1Var) {
        k();
        e1(w1Var, this.f7206a.B().Q());
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void getGmpAppId(com.google.android.gms.internal.measurement.w1 w1Var) {
        k();
        e1(w1Var, this.f7206a.B().S());
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void getMaxUserProperties(String str, com.google.android.gms.internal.measurement.w1 w1Var) {
        k();
        this.f7206a.B().L(str);
        k();
        this.f7206a.C().c0(w1Var, 25);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void getSessionId(com.google.android.gms.internal.measurement.w1 w1Var) {
        k();
        w9 B = this.f7206a.B();
        B.f8322a.b().t(new z8(B, w1Var));
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void getTestFlag(com.google.android.gms.internal.measurement.w1 w1Var, int i10) {
        k();
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            return;
                        }
                        this.f7206a.C().e0(w1Var, this.f7206a.B().i0().booleanValue());
                        return;
                    }
                    this.f7206a.C().c0(w1Var, this.f7206a.B().l0().intValue());
                    return;
                }
                yd C = this.f7206a.C();
                double doubleValue = this.f7206a.B().m0().doubleValue();
                Bundle bundle = new Bundle();
                bundle.putDouble("r", doubleValue);
                try {
                    w1Var.zzb(bundle);
                    return;
                } catch (RemoteException e10) {
                    C.f8322a.a().r().b("Error returning double value to wrapper", e10);
                    return;
                }
            }
            this.f7206a.C().b0(w1Var, this.f7206a.B().k0().longValue());
            return;
        }
        this.f7206a.C().a0(w1Var, this.f7206a.B().j0());
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void getUserProperties(String str, String str2, boolean z10, com.google.android.gms.internal.measurement.w1 w1Var) {
        k();
        this.f7206a.b().t(new n8(this, w1Var, str, str2, z10));
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void initForTests(Map map) {
        k();
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void initialize(u5.a aVar, com.google.android.gms.internal.measurement.g2 g2Var, long j10) {
        w6 w6Var = this.f7206a;
        if (w6Var == null) {
            this.f7206a = w6.O((Context) n5.q.k((Context) u5.b.k(aVar)), g2Var, Long.valueOf(j10));
        } else {
            w6Var.a().r().a("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void isDataCollectionEnabled(com.google.android.gms.internal.measurement.w1 w1Var) {
        k();
        this.f7206a.b().t(new jb(this, w1Var));
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void logEvent(String str, String str2, Bundle bundle, boolean z10, boolean z11, long j10) {
        k();
        this.f7206a.B().q(str, str2, bundle, z10, z11, j10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void logEventAndBundle(String str, String str2, Bundle bundle, com.google.android.gms.internal.measurement.w1 w1Var, long j10) {
        Bundle bundle2;
        k();
        n5.q.e(str2);
        if (bundle != null) {
            bundle2 = new Bundle(bundle);
        } else {
            bundle2 = new Bundle();
        }
        bundle2.putString("_o", "app");
        this.f7206a.b().t(new u7(this, w1Var, new g0(str2, new e0(bundle), "app", j10), str));
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void logHealthData(int i10, String str, u5.a aVar, u5.a aVar2, u5.a aVar3) {
        Object k10;
        Object k11;
        k();
        Object obj = null;
        if (aVar == null) {
            k10 = null;
        } else {
            k10 = u5.b.k(aVar);
        }
        if (aVar2 == null) {
            k11 = null;
        } else {
            k11 = u5.b.k(aVar2);
        }
        if (aVar3 != null) {
            obj = u5.b.k(aVar3);
        }
        this.f7206a.a().y(i10, true, false, str, k10, k11, obj);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void onActivityCreated(u5.a aVar, Bundle bundle, long j10) {
        k();
        onActivityCreatedByScionActivityInfo(com.google.android.gms.internal.measurement.i2.g((Activity) n5.q.k((Activity) u5.b.k(aVar))), bundle, j10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void onActivityCreatedByScionActivityInfo(com.google.android.gms.internal.measurement.i2 i2Var, Bundle bundle, long j10) {
        k();
        k9 k9Var = this.f7206a.B().f8191c;
        if (k9Var != null) {
            this.f7206a.B().h0();
            k9Var.e(i2Var, bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void onActivityDestroyed(u5.a aVar, long j10) {
        k();
        onActivityDestroyedByScionActivityInfo(com.google.android.gms.internal.measurement.i2.g((Activity) n5.q.k((Activity) u5.b.k(aVar))), j10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void onActivityDestroyedByScionActivityInfo(com.google.android.gms.internal.measurement.i2 i2Var, long j10) {
        k();
        k9 k9Var = this.f7206a.B().f8191c;
        if (k9Var != null) {
            this.f7206a.B().h0();
            k9Var.b(i2Var);
        }
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void onActivityPaused(u5.a aVar, long j10) {
        k();
        onActivityPausedByScionActivityInfo(com.google.android.gms.internal.measurement.i2.g((Activity) n5.q.k((Activity) u5.b.k(aVar))), j10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void onActivityPausedByScionActivityInfo(com.google.android.gms.internal.measurement.i2 i2Var, long j10) {
        k();
        k9 k9Var = this.f7206a.B().f8191c;
        if (k9Var != null) {
            this.f7206a.B().h0();
            k9Var.a(i2Var);
        }
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void onActivityResumed(u5.a aVar, long j10) {
        k();
        onActivityResumedByScionActivityInfo(com.google.android.gms.internal.measurement.i2.g((Activity) n5.q.k((Activity) u5.b.k(aVar))), j10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void onActivityResumedByScionActivityInfo(com.google.android.gms.internal.measurement.i2 i2Var, long j10) {
        k();
        k9 k9Var = this.f7206a.B().f8191c;
        if (k9Var != null) {
            this.f7206a.B().h0();
            k9Var.d(i2Var);
        }
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void onActivitySaveInstanceState(u5.a aVar, com.google.android.gms.internal.measurement.w1 w1Var, long j10) {
        k();
        onActivitySaveInstanceStateByScionActivityInfo(com.google.android.gms.internal.measurement.i2.g((Activity) n5.q.k((Activity) u5.b.k(aVar))), w1Var, j10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void onActivitySaveInstanceStateByScionActivityInfo(com.google.android.gms.internal.measurement.i2 i2Var, com.google.android.gms.internal.measurement.w1 w1Var, long j10) {
        k();
        k9 k9Var = this.f7206a.B().f8191c;
        Bundle bundle = new Bundle();
        if (k9Var != null) {
            this.f7206a.B().h0();
            k9Var.c(i2Var, bundle);
        }
        try {
            w1Var.zzb(bundle);
        } catch (RemoteException e10) {
            this.f7206a.a().r().b("Error returning bundle value to wrapper", e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void onActivityStarted(u5.a aVar, long j10) {
        k();
        onActivityStartedByScionActivityInfo(com.google.android.gms.internal.measurement.i2.g((Activity) n5.q.k((Activity) u5.b.k(aVar))), j10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void onActivityStartedByScionActivityInfo(com.google.android.gms.internal.measurement.i2 i2Var, long j10) {
        k();
        if (this.f7206a.B().f8191c != null) {
            this.f7206a.B().h0();
        }
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void onActivityStopped(u5.a aVar, long j10) {
        k();
        onActivityStoppedByScionActivityInfo(com.google.android.gms.internal.measurement.i2.g((Activity) n5.q.k((Activity) u5.b.k(aVar))), j10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void onActivityStoppedByScionActivityInfo(com.google.android.gms.internal.measurement.i2 i2Var, long j10) {
        k();
        if (this.f7206a.B().f8191c != null) {
            this.f7206a.B().h0();
        }
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void performAction(Bundle bundle, com.google.android.gms.internal.measurement.w1 w1Var, long j10) {
        k();
        w1Var.zzb(null);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void registerOnMeasurementEventListener(com.google.android.gms.internal.measurement.d2 d2Var) {
        i6.x xVar;
        k();
        Map map = this.f7207g;
        synchronized (map) {
            xVar = (i6.x) map.get(Integer.valueOf(d2Var.i()));
            if (xVar == null) {
                xVar = new zd(this, d2Var);
                map.put(Integer.valueOf(d2Var.i()), xVar);
            }
        }
        this.f7206a.B().J(xVar);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void resetAnalyticsData(long j10) {
        k();
        this.f7206a.B().G(j10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void retrieveAndUploadBatches(final com.google.android.gms.internal.measurement.z1 z1Var) {
        k();
        this.f7206a.B().r0(new Runnable() { // from class: com.google.android.gms.measurement.internal.jc
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                try {
                    z1Var.h();
                } catch (RemoteException e10) {
                    ((w6) n5.q.k(AppMeasurementDynamiteService.this.f7206a)).a().r().b("Failed to call IDynamiteUploadBatchesCallback", e10);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void setConditionalUserProperty(Bundle bundle, long j10) {
        k();
        if (bundle == null) {
            this.f7206a.a().o().a("Conditional user property must not be null");
        } else {
            this.f7206a.B().N(bundle, j10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void setConsent(Bundle bundle, long j10) {
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void setConsentThirdParty(Bundle bundle, long j10) {
        k();
        this.f7206a.B().o0(bundle, -20, j10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void setCurrentScreen(u5.a aVar, String str, String str2, long j10) {
        k();
        setCurrentScreenByScionActivityInfo(com.google.android.gms.internal.measurement.i2.g((Activity) n5.q.k((Activity) u5.b.k(aVar))), str, str2, j10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void setCurrentScreenByScionActivityInfo(com.google.android.gms.internal.measurement.i2 i2Var, String str, String str2, long j10) {
        k();
        this.f7206a.I().t(i2Var, str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void setDataCollectionEnabled(boolean z10) {
        k();
        w9 B = this.f7206a.B();
        B.j();
        B.f8322a.b().t(new l8(B, z10));
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void setDefaultEventParameters(Bundle bundle) {
        final Bundle bundle2;
        k();
        final w9 B = this.f7206a.B();
        if (bundle == null) {
            bundle2 = new Bundle();
        } else {
            bundle2 = new Bundle(bundle);
        }
        B.f8322a.b().t(new Runnable() { // from class: com.google.android.gms.measurement.internal.s9
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                w9.this.U(bundle2);
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void setEventInterceptor(com.google.android.gms.internal.measurement.d2 d2Var) {
        k();
        id idVar = new id(this, d2Var);
        if (this.f7206a.b().p()) {
            this.f7206a.B().I(idVar);
        } else {
            this.f7206a.b().t(new m9(this, idVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void setInstanceIdProvider(com.google.android.gms.internal.measurement.f2 f2Var) {
        k();
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void setMeasurementEnabled(boolean z10, long j10) {
        k();
        this.f7206a.B().n0(Boolean.valueOf(z10));
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void setMinimumSessionDuration(long j10) {
        k();
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void setSessionTimeoutDuration(long j10) {
        k();
        w9 B = this.f7206a.B();
        B.f8322a.b().t(new o8(B, j10));
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void setSgtmDebugInfo(Intent intent) {
        k();
        w9 B = this.f7206a.B();
        Uri data = intent.getData();
        if (data == null) {
            B.f8322a.a().u().a("Activity intent has no data. Preview Mode was not enabled.");
            return;
        }
        String queryParameter = data.getQueryParameter("sgtm_debug_enable");
        if (queryParameter != null && queryParameter.equals("1")) {
            String queryParameter2 = data.getQueryParameter("sgtm_preview_key");
            if (!TextUtils.isEmpty(queryParameter2)) {
                w6 w6Var = B.f8322a;
                w6Var.a().u().b("[sgtm] Preview Mode was enabled. Using the sgtmPreviewKey: ", queryParameter2);
                w6Var.w().Q(queryParameter2);
                return;
            }
            return;
        }
        w6 w6Var2 = B.f8322a;
        w6Var2.a().u().a("[sgtm] Preview Mode was not enabled.");
        w6Var2.w().Q(null);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void setUserId(final String str, long j10) {
        k();
        final w9 B = this.f7206a.B();
        if (str != null && TextUtils.isEmpty(str)) {
            B.f8322a.a().r().a("User ID must be non-empty or null");
            return;
        }
        B.f8322a.b().t(new Runnable() { // from class: com.google.android.gms.measurement.internal.t9
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                w6 w6Var = w9.this.f8322a;
                if (w6Var.L().x(str)) {
                    w6Var.L().p();
                }
            }
        });
        B.z(null, "_id", str, true, j10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void setUserProperty(String str, String str2, u5.a aVar, boolean z10, long j10) {
        k();
        this.f7206a.B().z(str, str2, u5.b.k(aVar), z10, j10);
    }

    @Override // com.google.android.gms.internal.measurement.t1
    public void unregisterOnMeasurementEventListener(com.google.android.gms.internal.measurement.d2 d2Var) {
        i6.x xVar;
        k();
        Map map = this.f7207g;
        synchronized (map) {
            xVar = (i6.x) map.remove(Integer.valueOf(d2Var.i()));
        }
        if (xVar == null) {
            xVar = new zd(this, d2Var);
        }
        this.f7206a.B().K(xVar);
    }
}
