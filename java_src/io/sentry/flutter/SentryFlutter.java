package io.sentry.flutter;

import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.c0;
import io.sentry.protocol.p;
import io.sentry.s5;
import io.sentry.t5;
import io.sentry.u5;
import io.sentry.z2;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import org.apache.tika.mime.MimeTypesReaderMetKeys;
import rd.b0;
import yc.h0;
/* loaded from: classes2.dex */
public final class SentryFlutter {
    public static final String ANDROID_SDK = "sentry.java.android.flutter";
    public static final Companion Companion = new Companion(null);
    public static final String FLUTTER_SDK = "sentry.dart.flutter";
    public static final String NATIVE_SDK = "sentry.native.android.flutter";
    private boolean autoPerformanceTracingEnabled;

    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateReplayOptions(SentryAndroidOptions sentryAndroidOptions, Map<String, ? extends Object> map) {
        String str;
        u5.a aVar;
        Number number;
        Double d10;
        Number number2;
        Double d11;
        u5 sessionReplay = sentryAndroidOptions.getSessionReplay();
        m.d(sessionReplay, "options.sessionReplay");
        Object obj = map.get("quality");
        final Map map2 = null;
        if (obj instanceof String) {
            str = (String) obj;
        } else {
            str = null;
        }
        if (m.a(str, "low")) {
            aVar = u5.a.LOW;
        } else if (m.a(str, "high")) {
            aVar = u5.a.HIGH;
        } else {
            aVar = u5.a.MEDIUM;
        }
        sessionReplay.u(aVar);
        Object obj2 = map.get("sessionSampleRate");
        if (obj2 instanceof Number) {
            number = (Number) obj2;
        } else {
            number = null;
        }
        if (number != null) {
            d10 = Double.valueOf(number.doubleValue());
        } else {
            d10 = null;
        }
        sessionReplay.w(d10);
        Object obj3 = map.get("onErrorSampleRate");
        if (obj3 instanceof Number) {
            number2 = (Number) obj3;
        } else {
            number2 = null;
        }
        if (number2 != null) {
            d11 = Double.valueOf(number2.doubleValue());
        } else {
            d11 = null;
        }
        sessionReplay.t(d11);
        sessionReplay.x(false);
        Object obj4 = map.get("tags");
        if (obj4 instanceof Map) {
            map2 = (Map) obj4;
        }
        if (map2 == null) {
            map2 = h0.e();
        }
        sentryAndroidOptions.setBeforeSendReplay(new s5.e() { // from class: io.sentry.flutter.a
            @Override // io.sentry.s5.e
            public final t5 a(t5 t5Var, c0 c0Var) {
                t5 updateReplayOptions$lambda$4;
                updateReplayOptions$lambda$4 = SentryFlutter.updateReplayOptions$lambda$4(map2, t5Var, c0Var);
                return updateReplayOptions$lambda$4;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final t5 updateReplayOptions$lambda$4(Map map, t5 event, c0 hint) {
        List a10;
        Object obj;
        boolean N;
        m.e(event, "event");
        m.e(hint, "hint");
        z2 f10 = hint.f();
        if (f10 != null && (a10 = f10.a()) != null) {
            Iterator it = a10.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (((io.sentry.rrweb.b) obj) instanceof io.sentry.rrweb.h) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            io.sentry.rrweb.b bVar = (io.sentry.rrweb.b) obj;
            if (bVar != null) {
                Map g10 = ((io.sentry.rrweb.h) bVar).g();
                m.d(g10, "optionsEvent as RRWebOptionsEvent).optionsPayload");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Map.Entry entry : g10.entrySet()) {
                    String it2 = (String) entry.getKey();
                    m.d(it2, "it");
                    N = b0.N(it2, MimeTypesReaderMetKeys.MATCH_MASK_ATTR, false, 2, null);
                    if (N) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                    g10.remove((String) entry2.getKey());
                }
                g10.putAll(map);
            }
        }
        return event;
    }

    public final boolean getAutoPerformanceTracingEnabled() {
        return this.autoPerformanceTracingEnabled;
    }

    public final void setAutoPerformanceTracingEnabled(boolean z10) {
        this.autoPerformanceTracingEnabled = z10;
    }

    public final void updateOptions(SentryAndroidOptions options, Map<String, ? extends Object> data) {
        Boolean bool;
        boolean z10;
        m.e(options, "options");
        m.e(data, "data");
        SentryFlutterKt.getIfNotNull(data, "dsn", new SentryFlutter$updateOptions$1(options));
        SentryFlutterKt.getIfNotNull(data, "debug", new SentryFlutter$updateOptions$2(options));
        SentryFlutterKt.getIfNotNull(data, "environment", new SentryFlutter$updateOptions$3(options));
        SentryFlutterKt.getIfNotNull(data, "release", new SentryFlutter$updateOptions$4(options));
        SentryFlutterKt.getIfNotNull(data, "dist", new SentryFlutter$updateOptions$5(options));
        SentryFlutterKt.getIfNotNull(data, "enableAutoSessionTracking", new SentryFlutter$updateOptions$6(options));
        SentryFlutterKt.getIfNotNull(data, "autoSessionTrackingIntervalMillis", new SentryFlutter$updateOptions$7(options));
        SentryFlutterKt.getIfNotNull(data, "anrTimeoutIntervalMillis", new SentryFlutter$updateOptions$8(options));
        SentryFlutterKt.getIfNotNull(data, "attachThreads", new SentryFlutter$updateOptions$9(options));
        SentryFlutterKt.getIfNotNull(data, "attachStacktrace", new SentryFlutter$updateOptions$10(options));
        SentryFlutterKt.getIfNotNull(data, "enableAutoNativeBreadcrumbs", new SentryFlutter$updateOptions$11(options));
        SentryFlutterKt.getIfNotNull(data, "maxBreadcrumbs", new SentryFlutter$updateOptions$12(options));
        SentryFlutterKt.getIfNotNull(data, "maxCacheItems", new SentryFlutter$updateOptions$13(options));
        SentryFlutterKt.getIfNotNull(data, "diagnosticLevel", new SentryFlutter$updateOptions$14(options));
        SentryFlutterKt.getIfNotNull(data, "anrEnabled", new SentryFlutter$updateOptions$15(options));
        SentryFlutterKt.getIfNotNull(data, "sendDefaultPii", new SentryFlutter$updateOptions$16(options));
        SentryFlutterKt.getIfNotNull(data, "enableNdkScopeSync", new SentryFlutter$updateOptions$17(options));
        SentryFlutterKt.getIfNotNull(data, "proguardUuid", new SentryFlutter$updateOptions$18(options));
        SentryFlutterKt.getIfNotNull(data, "enableSpotlight", new SentryFlutter$updateOptions$19(options));
        SentryFlutterKt.getIfNotNull(data, "spotlightUrl", new SentryFlutter$updateOptions$20(options));
        Object obj = data.get("enableNativeCrashHandling");
        if (obj instanceof Boolean) {
            bool = (Boolean) obj;
        } else {
            bool = null;
        }
        if (bool != null) {
            z10 = bool.booleanValue();
        } else {
            z10 = true;
        }
        if (!z10) {
            options.setEnableUncaughtExceptionHandler(false);
            options.setAnrEnabled(false);
        }
        SentryFlutterKt.getIfNotNull(data, "enableAutoPerformanceTracing", new SentryFlutter$updateOptions$21(this));
        SentryFlutterKt.getIfNotNull(data, "sendClientReports", new SentryFlutter$updateOptions$22(options));
        SentryFlutterKt.getIfNotNull(data, "maxAttachmentSize", new SentryFlutter$updateOptions$23(options));
        kotlin.jvm.internal.c0 c0Var = new kotlin.jvm.internal.c0();
        p sdkVersion = options.getSdkVersion();
        c0Var.f24971a = sdkVersion;
        if (sdkVersion == null) {
            c0Var.f24971a = new p(ANDROID_SDK, "7.22.4");
        } else {
            sdkVersion.i(ANDROID_SDK);
        }
        options.setSdkVersion((p) c0Var.f24971a);
        options.setSentryClientName("sentry.java.android.flutter/7.22.4");
        options.setNativeSdkName(NATIVE_SDK);
        SentryFlutterKt.getIfNotNull(data, "sdk", new SentryFlutter$updateOptions$24(c0Var));
        options.setBeforeSend(new BeforeSendCallbackImpl());
        SentryFlutterKt.getIfNotNull(data, "connectionTimeoutMillis", new SentryFlutter$updateOptions$25(options));
        SentryFlutterKt.getIfNotNull(data, "readTimeoutMillis", new SentryFlutter$updateOptions$26(options));
        SentryFlutterKt.getIfNotNull(data, "proxy", new SentryFlutter$updateOptions$27(options));
        SentryFlutterKt.getIfNotNull(data, "replay", new SentryFlutter$updateOptions$28(this, options, data));
    }
}
