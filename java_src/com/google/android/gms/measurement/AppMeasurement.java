package com.google.android.gms.measurement;

import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.measurement.internal.w6;
import i6.b0;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import n5.q;
@Deprecated
/* loaded from: classes.dex */
public class AppMeasurement {

    /* renamed from: b  reason: collision with root package name */
    private static volatile AppMeasurement f7198b;

    /* renamed from: a  reason: collision with root package name */
    private final c f7199a;

    /* loaded from: classes.dex */
    public static class ConditionalUserProperty {
        @Keep
        public boolean mActive;
        @Keep
        public String mAppId;
        @Keep
        public long mCreationTimestamp;
        @Keep
        public String mExpiredEventName;
        @Keep
        public Bundle mExpiredEventParams;
        @Keep
        public String mName;
        @Keep
        public String mOrigin;
        @Keep
        public long mTimeToLive;
        @Keep
        public String mTimedOutEventName;
        @Keep
        public Bundle mTimedOutEventParams;
        @Keep
        public String mTriggerEventName;
        @Keep
        public long mTriggerTimeout;
        @Keep
        public String mTriggeredEventName;
        @Keep
        public Bundle mTriggeredEventParams;
        @Keep
        public long mTriggeredTimestamp;
        @Keep
        public Object mValue;

        ConditionalUserProperty(Bundle bundle) {
            q.k(bundle);
            this.mAppId = (String) i6.q.b(bundle, CommonUrlParts.APP_ID, String.class, null);
            this.mOrigin = (String) i6.q.b(bundle, "origin", String.class, null);
            this.mName = (String) i6.q.b(bundle, Constants.NAME, String.class, null);
            this.mValue = i6.q.b(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) i6.q.b(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) i6.q.b(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) i6.q.b(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) i6.q.b(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) i6.q.b(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) i6.q.b(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) i6.q.b(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) i6.q.b(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) i6.q.b(bundle, "expired_event_params", Bundle.class, null);
            this.mActive = ((Boolean) i6.q.b(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            this.mCreationTimestamp = ((Long) i6.q.b(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) i6.q.b(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        }
    }

    public AppMeasurement(w6 w6Var) {
        this.f7199a = new a(w6Var);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:12:0x002c
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    @androidx.annotation.Keep
    @java.lang.Deprecated
    public static com.google.android.gms.measurement.AppMeasurement getInstance(android.content.Context r11) {
        /*
            com.google.android.gms.measurement.AppMeasurement r0 = com.google.android.gms.measurement.AppMeasurement.f7198b
            if (r0 != 0) goto L54
            java.lang.Class<com.google.android.gms.measurement.AppMeasurement> r0 = com.google.android.gms.measurement.AppMeasurement.class
            monitor-enter(r0)
            com.google.android.gms.measurement.AppMeasurement r1 = com.google.android.gms.measurement.AppMeasurement.f7198b     // Catch: java.lang.Throwable -> L51
            if (r1 != 0) goto L4f
            r1 = 0
            java.lang.Class<com.google.firebase.analytics.FirebaseAnalytics> r2 = com.google.firebase.analytics.FirebaseAnalytics.class
            java.lang.String r3 = "getScionFrontendApiImplementation"
            r4 = 2
            java.lang.Class[] r4 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> L51
            java.lang.Class<android.content.Context> r5 = android.content.Context.class
            r6 = 0
            r4[r6] = r5     // Catch: java.lang.Throwable -> L51
            java.lang.Class<android.os.Bundle> r5 = android.os.Bundle.class
            r6 = 1
            r4[r6] = r5     // Catch: java.lang.Throwable -> L51
            java.lang.reflect.Method r2 = r2.getDeclaredMethod(r3, r4)     // Catch: java.lang.Throwable -> L51
            java.lang.Object[] r3 = new java.lang.Object[]{r11, r1}     // Catch: java.lang.Throwable -> L51
            java.lang.Object r2 = r2.invoke(r1, r3)     // Catch: java.lang.Throwable -> L51
            i6.b0 r2 = (i6.b0) r2     // Catch: java.lang.Throwable -> L51
            goto L2d
        L2c:
            r2 = r1
        L2d:
            if (r2 == 0) goto L37
            com.google.android.gms.measurement.AppMeasurement r11 = new com.google.android.gms.measurement.AppMeasurement     // Catch: java.lang.Throwable -> L51
            r11.<init>(r2)     // Catch: java.lang.Throwable -> L51
            com.google.android.gms.measurement.AppMeasurement.f7198b = r11     // Catch: java.lang.Throwable -> L51
            goto L4f
        L37:
            com.google.android.gms.internal.measurement.g2 r10 = new com.google.android.gms.internal.measurement.g2     // Catch: java.lang.Throwable -> L51
            r3 = 0
            r5 = 0
            r7 = 1
            r8 = 0
            r9 = 0
            r2 = r10
            r2.<init>(r3, r5, r7, r8, r9)     // Catch: java.lang.Throwable -> L51
            com.google.android.gms.measurement.internal.w6 r11 = com.google.android.gms.measurement.internal.w6.O(r11, r10, r1)     // Catch: java.lang.Throwable -> L51
            com.google.android.gms.measurement.AppMeasurement r1 = new com.google.android.gms.measurement.AppMeasurement     // Catch: java.lang.Throwable -> L51
            r1.<init>(r11)     // Catch: java.lang.Throwable -> L51
            com.google.android.gms.measurement.AppMeasurement.f7198b = r1     // Catch: java.lang.Throwable -> L51
        L4f:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L51
            goto L54
        L51:
            r11 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L51
            throw r11
        L54:
            com.google.android.gms.measurement.AppMeasurement r11 = com.google.android.gms.measurement.AppMeasurement.f7198b
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.AppMeasurement.getInstance(android.content.Context):com.google.android.gms.measurement.AppMeasurement");
    }

    @Keep
    public void beginAdUnitExposure(String str) {
        this.f7199a.e(str);
    }

    @Keep
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.f7199a.f(str, str2, bundle);
    }

    @Keep
    public void endAdUnitExposure(String str) {
        this.f7199a.b(str);
    }

    @Keep
    public long generateEventId() {
        return this.f7199a.m();
    }

    @Keep
    public String getAppInstanceId() {
        return this.f7199a.o();
    }

    @Keep
    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        int size;
        List<Bundle> g10 = this.f7199a.g(str, str2);
        if (g10 == null) {
            size = 0;
        } else {
            size = g10.size();
        }
        ArrayList arrayList = new ArrayList(size);
        for (Bundle bundle : g10) {
            arrayList.add(new ConditionalUserProperty(bundle));
        }
        return arrayList;
    }

    @Keep
    public String getCurrentScreenClass() {
        return this.f7199a.j();
    }

    @Keep
    public String getCurrentScreenName() {
        return this.f7199a.a();
    }

    @Keep
    public String getGmpAppId() {
        return this.f7199a.p();
    }

    @Keep
    public int getMaxUserProperties(String str) {
        return this.f7199a.h(str);
    }

    @Keep
    protected Map<String, Object> getUserProperties(String str, String str2, boolean z10) {
        return this.f7199a.i(str, str2, z10);
    }

    @Keep
    public void logEventInternal(String str, String str2, Bundle bundle) {
        this.f7199a.c(str, str2, bundle);
    }

    @Keep
    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        q.k(conditionalUserProperty);
        Bundle bundle = new Bundle();
        String str = conditionalUserProperty.mAppId;
        if (str != null) {
            bundle.putString(CommonUrlParts.APP_ID, str);
        }
        String str2 = conditionalUserProperty.mOrigin;
        if (str2 != null) {
            bundle.putString("origin", str2);
        }
        String str3 = conditionalUserProperty.mName;
        if (str3 != null) {
            bundle.putString(Constants.NAME, str3);
        }
        Object obj = conditionalUserProperty.mValue;
        if (obj != null) {
            i6.q.a(bundle, obj);
        }
        String str4 = conditionalUserProperty.mTriggerEventName;
        if (str4 != null) {
            bundle.putString("trigger_event_name", str4);
        }
        bundle.putLong("trigger_timeout", conditionalUserProperty.mTriggerTimeout);
        String str5 = conditionalUserProperty.mTimedOutEventName;
        if (str5 != null) {
            bundle.putString("timed_out_event_name", str5);
        }
        Bundle bundle2 = conditionalUserProperty.mTimedOutEventParams;
        if (bundle2 != null) {
            bundle.putBundle("timed_out_event_params", bundle2);
        }
        String str6 = conditionalUserProperty.mTriggeredEventName;
        if (str6 != null) {
            bundle.putString("triggered_event_name", str6);
        }
        Bundle bundle3 = conditionalUserProperty.mTriggeredEventParams;
        if (bundle3 != null) {
            bundle.putBundle("triggered_event_params", bundle3);
        }
        bundle.putLong("time_to_live", conditionalUserProperty.mTimeToLive);
        String str7 = conditionalUserProperty.mExpiredEventName;
        if (str7 != null) {
            bundle.putString("expired_event_name", str7);
        }
        Bundle bundle4 = conditionalUserProperty.mExpiredEventParams;
        if (bundle4 != null) {
            bundle.putBundle("expired_event_params", bundle4);
        }
        c cVar = this.f7199a;
        bundle.putLong("creation_timestamp", conditionalUserProperty.mCreationTimestamp);
        bundle.putBoolean("active", conditionalUserProperty.mActive);
        bundle.putLong("triggered_timestamp", conditionalUserProperty.mTriggeredTimestamp);
        cVar.d(bundle);
    }

    public AppMeasurement(b0 b0Var) {
        this.f7199a = new b(b0Var);
    }
}
