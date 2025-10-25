package io.sentry.android.core;

import io.sentry.s5;
/* loaded from: classes2.dex */
public final class SentryAndroidOptions extends s5 {
    private boolean attachScreenshot;
    private boolean attachViewHierarchy;
    private a beforeScreenshotCaptureCallback;
    private a beforeViewHierarchyCaptureCallback;
    private io.sentry.android.core.internal.util.t frameMetricsCollector;
    private boolean anrEnabled = true;
    private long anrTimeoutIntervalMillis = 5000;
    private boolean anrReportInDebug = false;
    private boolean enableActivityLifecycleBreadcrumbs = true;
    private boolean enableAppLifecycleBreadcrumbs = true;
    private boolean enableSystemEventBreadcrumbs = true;
    private boolean enableAppComponentBreadcrumbs = true;
    private boolean enableNetworkEventBreadcrumbs = true;
    private boolean enableAutoActivityLifecycleTracing = true;
    private boolean enableActivityLifecycleTracingAutoFinish = true;
    private f1 debugImagesLoader = t1.c();
    private boolean collectAdditionalContext = true;
    private long startupCrashFlushTimeoutMillis = 5000;
    private final long startupCrashDurationThresholdMillis = 2000;
    private boolean enableFramesTracking = true;
    private String nativeSdkName = null;
    private boolean enableRootCheck = true;
    private boolean enableNdk = true;
    private q1 ndkHandlerStrategy = q1.SENTRY_HANDLER_STRATEGY_DEFAULT;
    private boolean enableScopeSync = true;
    private boolean reportHistoricalAnrs = false;
    private boolean attachAnrThreadDump = false;
    private boolean enablePerformanceV2 = false;

    /* loaded from: classes2.dex */
    public interface a {
    }

    public SentryAndroidOptions() {
        setSentryClientName("sentry.java.android/7.22.4");
        setSdkVersion(createSdkVersion());
        setAttachServerName(false);
    }

    private io.sentry.protocol.p createSdkVersion() {
        io.sentry.protocol.p l10 = io.sentry.protocol.p.l(getSdkVersion(), "sentry.java.android", "7.22.4");
        l10.d("maven:io.sentry:sentry-android-core", "7.22.4");
        return l10;
    }

    public void enableAllAutoBreadcrumbs(boolean z10) {
        this.enableActivityLifecycleBreadcrumbs = z10;
        this.enableAppComponentBreadcrumbs = z10;
        this.enableSystemEventBreadcrumbs = z10;
        this.enableAppLifecycleBreadcrumbs = z10;
        this.enableNetworkEventBreadcrumbs = z10;
        setEnableUserInteractionBreadcrumbs(z10);
    }

    public long getAnrTimeoutIntervalMillis() {
        return this.anrTimeoutIntervalMillis;
    }

    public a getBeforeScreenshotCaptureCallback() {
        return null;
    }

    public a getBeforeViewHierarchyCaptureCallback() {
        return null;
    }

    public f1 getDebugImagesLoader() {
        return this.debugImagesLoader;
    }

    public io.sentry.android.core.internal.util.t getFrameMetricsCollector() {
        return this.frameMetricsCollector;
    }

    public String getNativeSdkName() {
        return this.nativeSdkName;
    }

    public int getNdkHandlerStrategy() {
        return this.ndkHandlerStrategy.getValue();
    }

    @Deprecated
    public int getProfilingTracesIntervalMillis() {
        return 0;
    }

    public long getStartupCrashDurationThresholdMillis() {
        return 2000L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getStartupCrashFlushTimeoutMillis() {
        return this.startupCrashFlushTimeoutMillis;
    }

    public boolean isAnrEnabled() {
        return this.anrEnabled;
    }

    public boolean isAnrReportInDebug() {
        return this.anrReportInDebug;
    }

    public boolean isAttachAnrThreadDump() {
        return this.attachAnrThreadDump;
    }

    public boolean isAttachScreenshot() {
        return this.attachScreenshot;
    }

    public boolean isAttachViewHierarchy() {
        return this.attachViewHierarchy;
    }

    public boolean isCollectAdditionalContext() {
        return this.collectAdditionalContext;
    }

    public boolean isEnableActivityLifecycleBreadcrumbs() {
        return this.enableActivityLifecycleBreadcrumbs;
    }

    public boolean isEnableActivityLifecycleTracingAutoFinish() {
        return this.enableActivityLifecycleTracingAutoFinish;
    }

    public boolean isEnableAppComponentBreadcrumbs() {
        return this.enableAppComponentBreadcrumbs;
    }

    public boolean isEnableAppLifecycleBreadcrumbs() {
        return this.enableAppLifecycleBreadcrumbs;
    }

    public boolean isEnableAutoActivityLifecycleTracing() {
        return this.enableAutoActivityLifecycleTracing;
    }

    public boolean isEnableFramesTracking() {
        return this.enableFramesTracking;
    }

    public boolean isEnableNdk() {
        return this.enableNdk;
    }

    public boolean isEnableNetworkEventBreadcrumbs() {
        return this.enableNetworkEventBreadcrumbs;
    }

    public boolean isEnablePerformanceV2() {
        return this.enablePerformanceV2;
    }

    public boolean isEnableRootCheck() {
        return this.enableRootCheck;
    }

    public boolean isEnableScopeSync() {
        return this.enableScopeSync;
    }

    public boolean isEnableSystemEventBreadcrumbs() {
        return this.enableSystemEventBreadcrumbs;
    }

    public boolean isReportHistoricalAnrs() {
        return this.reportHistoricalAnrs;
    }

    public void setAnrEnabled(boolean z10) {
        this.anrEnabled = z10;
    }

    public void setAnrReportInDebug(boolean z10) {
        this.anrReportInDebug = z10;
    }

    public void setAnrTimeoutIntervalMillis(long j10) {
        this.anrTimeoutIntervalMillis = j10;
    }

    public void setAttachAnrThreadDump(boolean z10) {
        this.attachAnrThreadDump = z10;
    }

    public void setAttachScreenshot(boolean z10) {
        this.attachScreenshot = z10;
    }

    public void setAttachViewHierarchy(boolean z10) {
        this.attachViewHierarchy = z10;
    }

    public void setBeforeScreenshotCaptureCallback(a aVar) {
    }

    public void setBeforeViewHierarchyCaptureCallback(a aVar) {
    }

    public void setCollectAdditionalContext(boolean z10) {
        this.collectAdditionalContext = z10;
    }

    public void setDebugImagesLoader(f1 f1Var) {
        if (f1Var == null) {
            f1Var = t1.c();
        }
        this.debugImagesLoader = f1Var;
    }

    public void setEnableActivityLifecycleBreadcrumbs(boolean z10) {
        this.enableActivityLifecycleBreadcrumbs = z10;
    }

    public void setEnableActivityLifecycleTracingAutoFinish(boolean z10) {
        this.enableActivityLifecycleTracingAutoFinish = z10;
    }

    public void setEnableAppComponentBreadcrumbs(boolean z10) {
        this.enableAppComponentBreadcrumbs = z10;
    }

    public void setEnableAppLifecycleBreadcrumbs(boolean z10) {
        this.enableAppLifecycleBreadcrumbs = z10;
    }

    public void setEnableAutoActivityLifecycleTracing(boolean z10) {
        this.enableAutoActivityLifecycleTracing = z10;
    }

    public void setEnableFramesTracking(boolean z10) {
        this.enableFramesTracking = z10;
    }

    public void setEnableNdk(boolean z10) {
        this.enableNdk = z10;
    }

    public void setEnableNetworkEventBreadcrumbs(boolean z10) {
        this.enableNetworkEventBreadcrumbs = z10;
    }

    public void setEnablePerformanceV2(boolean z10) {
        this.enablePerformanceV2 = z10;
    }

    public void setEnableRootCheck(boolean z10) {
        this.enableRootCheck = z10;
    }

    public void setEnableScopeSync(boolean z10) {
        this.enableScopeSync = z10;
    }

    public void setEnableSystemEventBreadcrumbs(boolean z10) {
        this.enableSystemEventBreadcrumbs = z10;
    }

    public void setFrameMetricsCollector(io.sentry.android.core.internal.util.t tVar) {
        this.frameMetricsCollector = tVar;
    }

    public void setNativeHandlerStrategy(q1 q1Var) {
        this.ndkHandlerStrategy = q1Var;
    }

    public void setNativeSdkName(String str) {
        this.nativeSdkName = str;
    }

    @Deprecated
    public void setProfilingTracesIntervalMillis(int i10) {
    }

    public void setReportHistoricalAnrs(boolean z10) {
        this.reportHistoricalAnrs = z10;
    }

    void setStartupCrashFlushTimeoutMillis(long j10) {
        this.startupCrashFlushTimeoutMillis = j10;
    }
}
