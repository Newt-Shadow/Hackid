package io.sentry;

import com.arthenica.ffmpegkit.AbstractSession;
import com.pichillilorenzo.flutter_inappwebview_android.chrome_custom_tabs.ChromeCustomTabsActivity;
import io.sentry.util.m;
import java.io.File;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2.dex */
public class s5 {
    static final j5 DEFAULT_DIAGNOSTIC_LEVEL = j5.DEBUG;
    private static final String DEFAULT_ENVIRONMENT = "production";
    public static final String DEFAULT_PROPAGATION_TARGETS = ".*";
    private boolean attachServerName;
    private boolean attachStacktrace;
    private boolean attachThreads;
    private io.sentry.backpressure.b backpressureMonitor;
    private a beforeBreadcrumb;
    private b beforeEmitMetricCallback;
    private c beforeEnvelopeCallback;
    private d beforeSend;
    private e beforeSendReplay;
    private f beforeSendTransaction;
    private final Set<String> bundleIds;
    private String cacheDirPath;
    io.sentry.clientreport.h clientReportRecorder;
    private l0 connectionStatusProvider;
    private int connectionTimeoutMillis;
    private final List<String> contextTags;
    private g cron;
    private final io.sentry.util.m dateProvider;
    private boolean debug;
    private io.sentry.internal.debugmeta.a debugMetaLoader;
    private final List<String> defaultTracePropagationTargets;
    private j5 diagnosticLevel;
    private String dist;
    private String distinctId;
    private String dsn;
    private String dsnHash;
    private boolean enableAppStartProfiling;
    private boolean enableAutoSessionTracking;
    private boolean enableBackpressureHandling;
    private boolean enableDeduplication;
    private boolean enableDefaultTagsForMetrics;
    private boolean enableExternalConfiguration;
    private boolean enableMetrics;
    private boolean enablePrettySerializationOutput;
    private boolean enableScopePersistence;
    private boolean enableScreenTracking;
    private boolean enableShutdownHook;
    private boolean enableSpanLocalMetricAggregation;
    private boolean enableSpotlight;
    private boolean enableTimeToFullDisplayTracing;
    private Boolean enableTracing;
    private boolean enableUncaughtExceptionHandler;
    private boolean enableUserInteractionBreadcrumbs;
    private boolean enableUserInteractionTracing;
    private boolean enabled;
    private io.sentry.cache.g envelopeDiskCache;
    private final io.sentry.util.m envelopeReader;
    private String environment;
    private final List<y> eventProcessors;
    private x0 executorService;
    private final z experimental;
    private long flushTimeoutMillis;
    private b0 fullyDisplayedReporter;
    private final List<io.sentry.internal.gestures.a> gestureTargetLocators;
    private Long idleTimeout;
    private List<String> ignoredCheckIns;
    private final Set<Class<? extends Throwable>> ignoredExceptionsForType;
    private final List<String> inAppExcludes;
    private final List<String> inAppIncludes;
    private d1 instrumenter;
    private final List<e1> integrations;
    private ILogger logger;
    private io.sentry.util.thread.a mainThreadChecker;
    private long maxAttachmentSize;
    private int maxBreadcrumbs;
    private int maxCacheItems;
    private int maxDepth;
    private int maxQueueSize;
    private j maxRequestBodySize;
    private int maxSpans;
    private long maxTraceFileSize;
    private io.sentry.internal.modules.b modulesLoader;
    private final List<v0> observers;
    private final List<q0> optionsObservers;
    private final io.sentry.util.m parsedDsn;
    private final List<r0> performanceCollectors;
    private boolean printUncaughtStackTrace;
    private Double profilesSampleRate;
    private h profilesSampler;
    private int profilingTracesHz;
    private String proguardUuid;
    private i proxy;
    private int readTimeoutMillis;
    private String release;
    private y2 replayController;
    private Double sampleRate;
    private io.sentry.protocol.p sdkVersion;
    private boolean sendClientReports;
    private boolean sendDefaultPii;
    private boolean sendModules;
    private String sentryClientName;
    private final io.sentry.util.m serializer;
    private String serverName;
    private long sessionFlushTimeoutMillis;
    private u5 sessionReplay;
    private long sessionTrackingIntervalMillis;
    private long shutdownTimeoutMillis;
    private String spotlightConnectionUrl;
    private SSLSocketFactory sslSocketFactory;
    private final Map<String, String> tags;
    private boolean traceOptionsRequests;
    private List<String> tracePropagationTargets;
    private boolean traceSampling;
    private Double tracesSampleRate;
    private k tracesSampler;
    private b7 transactionPerformanceCollector;
    private b1 transactionProfiler;
    private c1 transportFactory;
    private io.sentry.transport.r transportGate;
    private final List<Object> viewHierarchyExporters;

    /* loaded from: classes2.dex */
    public interface a {
    }

    /* loaded from: classes2.dex */
    public interface b {
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a(a4 a4Var, c0 c0Var);
    }

    /* loaded from: classes2.dex */
    public interface d {
        z4 execute(z4 z4Var, c0 c0Var);
    }

    /* loaded from: classes2.dex */
    public interface e {
        t5 a(t5 t5Var, c0 c0Var);
    }

    /* loaded from: classes2.dex */
    public interface f {
    }

    /* loaded from: classes2.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        private Long f23643a;

        /* renamed from: b  reason: collision with root package name */
        private Long f23644b;

        /* renamed from: c  reason: collision with root package name */
        private String f23645c;

        /* renamed from: d  reason: collision with root package name */
        private Long f23646d;

        /* renamed from: e  reason: collision with root package name */
        private Long f23647e;

        public Long a() {
            return this.f23643a;
        }

        public Long b() {
            return this.f23646d;
        }

        public Long c() {
            return this.f23644b;
        }

        public Long d() {
            return this.f23647e;
        }

        public String e() {
            return this.f23645c;
        }

        public void f(Long l10) {
            this.f23643a = l10;
        }

        public void g(Long l10) {
            this.f23646d = l10;
        }

        public void h(Long l10) {
            this.f23644b = l10;
        }

        public void i(Long l10) {
            this.f23647e = l10;
        }

        public void j(String str) {
            this.f23645c = str;
        }
    }

    /* loaded from: classes2.dex */
    public interface h {
    }

    /* loaded from: classes2.dex */
    public static final class i {

        /* renamed from: a  reason: collision with root package name */
        private String f23648a;

        /* renamed from: b  reason: collision with root package name */
        private String f23649b;

        /* renamed from: c  reason: collision with root package name */
        private String f23650c;

        /* renamed from: d  reason: collision with root package name */
        private String f23651d;

        /* renamed from: e  reason: collision with root package name */
        private Proxy.Type f23652e;

        public i() {
            this(null, null, null, null, null);
        }

        public String a() {
            return this.f23648a;
        }

        public String b() {
            return this.f23651d;
        }

        public String c() {
            return this.f23649b;
        }

        public Proxy.Type d() {
            return this.f23652e;
        }

        public String e() {
            return this.f23650c;
        }

        public void f(String str) {
            this.f23648a = str;
        }

        public void g(String str) {
            this.f23651d = str;
        }

        public void h(String str) {
            this.f23649b = str;
        }

        public void i(Proxy.Type type) {
            this.f23652e = type;
        }

        public void j(String str) {
            this.f23650c = str;
        }

        public i(String str, String str2, String str3, String str4) {
            this(str, str2, null, str3, str4);
        }

        public i(String str, String str2, Proxy.Type type, String str3, String str4) {
            this.f23648a = str;
            this.f23649b = str2;
            this.f23652e = type;
            this.f23650c = str3;
            this.f23651d = str4;
        }
    }

    /* loaded from: classes2.dex */
    public enum j {
        NONE,
        SMALL,
        MEDIUM,
        ALWAYS
    }

    /* loaded from: classes2.dex */
    public interface k {
    }

    public s5() {
        this(false);
    }

    private io.sentry.protocol.p createSdkVersion() {
        io.sentry.protocol.p pVar = new io.sentry.protocol.p("sentry.java", "7.22.4");
        pVar.k("7.22.4");
        return pVar;
    }

    private void e() {
        h5.c().b("maven:io.sentry:sentry", "7.22.4");
    }

    public static s5 empty() {
        return new s5(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ r f() {
        return new r(this.dsn);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ y0 g() {
        return new r1(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ m0 h() {
        return new t((y0) this.serializer.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ z3 i() {
        return new s3();
    }

    public void addBundleId(String str) {
        if (str != null) {
            String trim = str.trim();
            if (!trim.isEmpty()) {
                this.bundleIds.add(trim);
            }
        }
    }

    public void addContextTag(String str) {
        this.contextTags.add(str);
    }

    public void addEventProcessor(y yVar) {
        this.eventProcessors.add(yVar);
    }

    public void addIgnoredExceptionForType(Class<? extends Throwable> cls) {
        this.ignoredExceptionsForType.add(cls);
    }

    public void addInAppExclude(String str) {
        this.inAppExcludes.add(str);
    }

    public void addInAppInclude(String str) {
        this.inAppIncludes.add(str);
    }

    public void addIntegration(e1 e1Var) {
        this.integrations.add(e1Var);
    }

    public void addOptionsObserver(q0 q0Var) {
        this.optionsObservers.add(q0Var);
    }

    public void addPerformanceCollector(r0 r0Var) {
        this.performanceCollectors.add(r0Var);
    }

    public void addScopeObserver(v0 v0Var) {
        this.observers.add(v0Var);
    }

    @Deprecated
    public void addTracingOrigin(String str) {
        if (this.tracePropagationTargets == null) {
            this.tracePropagationTargets = new CopyOnWriteArrayList();
        }
        if (!str.isEmpty()) {
            this.tracePropagationTargets.add(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean containsIgnoredExceptionForType(Throwable th) {
        return this.ignoredExceptionsForType.contains(th.getClass());
    }

    public io.sentry.cache.t findPersistingScopeObserver() {
        for (v0 v0Var : this.observers) {
            if (v0Var instanceof io.sentry.cache.t) {
                return (io.sentry.cache.t) v0Var;
            }
        }
        return null;
    }

    public io.sentry.backpressure.b getBackpressureMonitor() {
        return this.backpressureMonitor;
    }

    public a getBeforeBreadcrumb() {
        return null;
    }

    public b getBeforeEmitMetricCallback() {
        return null;
    }

    public c getBeforeEnvelopeCallback() {
        return this.beforeEnvelopeCallback;
    }

    public d getBeforeSend() {
        return this.beforeSend;
    }

    public e getBeforeSendReplay() {
        return this.beforeSendReplay;
    }

    public f getBeforeSendTransaction() {
        return null;
    }

    public Set<String> getBundleIds() {
        return this.bundleIds;
    }

    public String getCacheDirPath() {
        String str = this.cacheDirPath;
        if (str != null && !str.isEmpty()) {
            if (this.dsnHash != null) {
                return new File(this.cacheDirPath, this.dsnHash).getAbsolutePath();
            }
            return this.cacheDirPath;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getCacheDirPathWithoutDsn() {
        String str = this.cacheDirPath;
        if (str != null && !str.isEmpty()) {
            return this.cacheDirPath;
        }
        return null;
    }

    public io.sentry.clientreport.h getClientReportRecorder() {
        return this.clientReportRecorder;
    }

    public l0 getConnectionStatusProvider() {
        return this.connectionStatusProvider;
    }

    public int getConnectionTimeoutMillis() {
        return this.connectionTimeoutMillis;
    }

    public List<String> getContextTags() {
        return this.contextTags;
    }

    public g getCron() {
        return this.cron;
    }

    public z3 getDateProvider() {
        return (z3) this.dateProvider.a();
    }

    public io.sentry.internal.debugmeta.a getDebugMetaLoader() {
        return this.debugMetaLoader;
    }

    public j5 getDiagnosticLevel() {
        return this.diagnosticLevel;
    }

    public String getDist() {
        return this.dist;
    }

    public String getDistinctId() {
        return this.distinctId;
    }

    public String getDsn() {
        return this.dsn;
    }

    @Deprecated
    public Boolean getEnableTracing() {
        return this.enableTracing;
    }

    public io.sentry.cache.g getEnvelopeDiskCache() {
        return this.envelopeDiskCache;
    }

    public m0 getEnvelopeReader() {
        return (m0) this.envelopeReader.a();
    }

    public String getEnvironment() {
        String str = this.environment;
        if (str == null) {
            return DEFAULT_ENVIRONMENT;
        }
        return str;
    }

    public List<y> getEventProcessors() {
        return this.eventProcessors;
    }

    public x0 getExecutorService() {
        return this.executorService;
    }

    public z getExperimental() {
        return this.experimental;
    }

    public long getFlushTimeoutMillis() {
        return this.flushTimeoutMillis;
    }

    public b0 getFullyDisplayedReporter() {
        return this.fullyDisplayedReporter;
    }

    public List<io.sentry.internal.gestures.a> getGestureTargetLocators() {
        return this.gestureTargetLocators;
    }

    public Long getIdleTimeout() {
        return this.idleTimeout;
    }

    public List<String> getIgnoredCheckIns() {
        return this.ignoredCheckIns;
    }

    public Set<Class<? extends Throwable>> getIgnoredExceptionsForType() {
        return this.ignoredExceptionsForType;
    }

    public List<String> getInAppExcludes() {
        return this.inAppExcludes;
    }

    public List<String> getInAppIncludes() {
        return this.inAppIncludes;
    }

    public d1 getInstrumenter() {
        return this.instrumenter;
    }

    public List<e1> getIntegrations() {
        return this.integrations;
    }

    public ILogger getLogger() {
        return this.logger;
    }

    public io.sentry.util.thread.a getMainThreadChecker() {
        return this.mainThreadChecker;
    }

    public long getMaxAttachmentSize() {
        return this.maxAttachmentSize;
    }

    public int getMaxBreadcrumbs() {
        return this.maxBreadcrumbs;
    }

    public int getMaxCacheItems() {
        return this.maxCacheItems;
    }

    public int getMaxDepth() {
        return this.maxDepth;
    }

    public int getMaxQueueSize() {
        return this.maxQueueSize;
    }

    public j getMaxRequestBodySize() {
        return this.maxRequestBodySize;
    }

    public int getMaxSpans() {
        return this.maxSpans;
    }

    public long getMaxTraceFileSize() {
        return this.maxTraceFileSize;
    }

    public io.sentry.internal.modules.b getModulesLoader() {
        return this.modulesLoader;
    }

    public List<q0> getOptionsObservers() {
        return this.optionsObservers;
    }

    public String getOutboxPath() {
        String cacheDirPath = getCacheDirPath();
        if (cacheDirPath == null) {
            return null;
        }
        return new File(cacheDirPath, "outbox").getAbsolutePath();
    }

    public List<r0> getPerformanceCollectors() {
        return this.performanceCollectors;
    }

    public Double getProfilesSampleRate() {
        return this.profilesSampleRate;
    }

    public h getProfilesSampler() {
        return null;
    }

    public String getProfilingTracesDirPath() {
        String cacheDirPath = getCacheDirPath();
        if (cacheDirPath == null) {
            return null;
        }
        return new File(cacheDirPath, "profiling_traces").getAbsolutePath();
    }

    public int getProfilingTracesHz() {
        return this.profilingTracesHz;
    }

    public String getProguardUuid() {
        return this.proguardUuid;
    }

    public i getProxy() {
        return this.proxy;
    }

    public int getReadTimeoutMillis() {
        return this.readTimeoutMillis;
    }

    public String getRelease() {
        return this.release;
    }

    public y2 getReplayController() {
        return this.replayController;
    }

    public Double getSampleRate() {
        return this.sampleRate;
    }

    public List<v0> getScopeObservers() {
        return this.observers;
    }

    public io.sentry.protocol.p getSdkVersion() {
        return this.sdkVersion;
    }

    public String getSentryClientName() {
        return this.sentryClientName;
    }

    public y0 getSerializer() {
        return (y0) this.serializer.a();
    }

    public String getServerName() {
        return this.serverName;
    }

    public long getSessionFlushTimeoutMillis() {
        return this.sessionFlushTimeoutMillis;
    }

    public u5 getSessionReplay() {
        return this.sessionReplay;
    }

    public long getSessionTrackingIntervalMillis() {
        return this.sessionTrackingIntervalMillis;
    }

    @Deprecated
    public long getShutdownTimeout() {
        return this.shutdownTimeoutMillis;
    }

    public long getShutdownTimeoutMillis() {
        return this.shutdownTimeoutMillis;
    }

    public String getSpotlightConnectionUrl() {
        return this.spotlightConnectionUrl;
    }

    public SSLSocketFactory getSslSocketFactory() {
        return this.sslSocketFactory;
    }

    public Map<String, String> getTags() {
        return this.tags;
    }

    public List<String> getTracePropagationTargets() {
        List<String> list = this.tracePropagationTargets;
        if (list == null) {
            return this.defaultTracePropagationTargets;
        }
        return list;
    }

    public Double getTracesSampleRate() {
        return this.tracesSampleRate;
    }

    public k getTracesSampler() {
        return null;
    }

    @Deprecated
    public List<String> getTracingOrigins() {
        return getTracePropagationTargets();
    }

    public b7 getTransactionPerformanceCollector() {
        return this.transactionPerformanceCollector;
    }

    public b1 getTransactionProfiler() {
        return this.transactionProfiler;
    }

    public c1 getTransportFactory() {
        return this.transportFactory;
    }

    public io.sentry.transport.r getTransportGate() {
        return this.transportGate;
    }

    public final List<Object> getViewHierarchyExporters() {
        return this.viewHierarchyExporters;
    }

    public boolean isAttachServerName() {
        return this.attachServerName;
    }

    public boolean isAttachStacktrace() {
        return this.attachStacktrace;
    }

    public boolean isAttachThreads() {
        return this.attachThreads;
    }

    public boolean isDebug() {
        return this.debug;
    }

    public boolean isEnableAppStartProfiling() {
        if (isProfilingEnabled() && this.enableAppStartProfiling) {
            return true;
        }
        return false;
    }

    public boolean isEnableAutoSessionTracking() {
        return this.enableAutoSessionTracking;
    }

    public boolean isEnableBackpressureHandling() {
        return this.enableBackpressureHandling;
    }

    public boolean isEnableDeduplication() {
        return this.enableDeduplication;
    }

    public boolean isEnableDefaultTagsForMetrics() {
        if (isEnableMetrics() && this.enableDefaultTagsForMetrics) {
            return true;
        }
        return false;
    }

    public boolean isEnableExternalConfiguration() {
        return this.enableExternalConfiguration;
    }

    public boolean isEnableMetrics() {
        return this.enableMetrics;
    }

    public boolean isEnablePrettySerializationOutput() {
        return this.enablePrettySerializationOutput;
    }

    public boolean isEnableScopePersistence() {
        return this.enableScopePersistence;
    }

    public boolean isEnableScreenTracking() {
        return this.enableScreenTracking;
    }

    public boolean isEnableShutdownHook() {
        return this.enableShutdownHook;
    }

    public boolean isEnableSpanLocalMetricAggregation() {
        if (isEnableMetrics() && this.enableSpanLocalMetricAggregation) {
            return true;
        }
        return false;
    }

    public boolean isEnableSpotlight() {
        return this.enableSpotlight;
    }

    public boolean isEnableTimeToFullDisplayTracing() {
        return this.enableTimeToFullDisplayTracing;
    }

    public boolean isEnableUncaughtExceptionHandler() {
        return this.enableUncaughtExceptionHandler;
    }

    public boolean isEnableUserInteractionBreadcrumbs() {
        return this.enableUserInteractionBreadcrumbs;
    }

    public boolean isEnableUserInteractionTracing() {
        return this.enableUserInteractionTracing;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public boolean isPrintUncaughtStackTrace() {
        return this.printUncaughtStackTrace;
    }

    public boolean isProfilingEnabled() {
        if (getProfilesSampleRate() != null && getProfilesSampleRate().doubleValue() > 0.0d) {
            return true;
        }
        getProfilesSampler();
        return false;
    }

    public boolean isSendClientReports() {
        return this.sendClientReports;
    }

    public boolean isSendDefaultPii() {
        return this.sendDefaultPii;
    }

    public boolean isSendModules() {
        return this.sendModules;
    }

    public boolean isTraceOptionsRequests() {
        return this.traceOptionsRequests;
    }

    public boolean isTraceSampling() {
        return this.traceSampling;
    }

    public boolean isTracingEnabled() {
        Boolean bool = this.enableTracing;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (getTracesSampleRate() == null) {
            getTracesSampler();
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadLazyFields() {
        getSerializer();
        retrieveParsedDsn();
        getEnvelopeReader();
        getDateProvider();
    }

    public void merge(a0 a0Var) {
        if (a0Var.m() != null) {
            setDsn(a0Var.m());
        }
        if (a0Var.q() != null) {
            setEnvironment(a0Var.q());
        }
        if (a0Var.A() != null) {
            setRelease(a0Var.A());
        }
        if (a0Var.l() != null) {
            setDist(a0Var.l());
        }
        if (a0Var.C() != null) {
            setServerName(a0Var.C());
        }
        if (a0Var.z() != null) {
            setProxy(a0Var.z());
        }
        if (a0Var.p() != null) {
            setEnableUncaughtExceptionHandler(a0Var.p().booleanValue());
        }
        if (a0Var.w() != null) {
            setPrintUncaughtStackTrace(a0Var.w().booleanValue());
        }
        if (a0Var.o() != null) {
            setEnableTracing(a0Var.o());
        }
        if (a0Var.F() != null) {
            setTracesSampleRate(a0Var.F());
        }
        if (a0Var.x() != null) {
            setProfilesSampleRate(a0Var.x());
        }
        if (a0Var.k() != null) {
            setDebug(a0Var.k().booleanValue());
        }
        if (a0Var.n() != null) {
            setEnableDeduplication(a0Var.n().booleanValue());
        }
        if (a0Var.B() != null) {
            setSendClientReports(a0Var.B().booleanValue());
        }
        for (Map.Entry entry : new HashMap(a0Var.D()).entrySet()) {
            this.tags.put((String) entry.getKey(), (String) entry.getValue());
        }
        for (String str : new ArrayList(a0Var.v())) {
            addInAppInclude(str);
        }
        for (String str2 : new ArrayList(a0Var.u())) {
            addInAppExclude(str2);
        }
        Iterator it = new HashSet(a0Var.t()).iterator();
        while (it.hasNext()) {
            addIgnoredExceptionForType((Class) it.next());
        }
        if (a0Var.E() != null) {
            setTracePropagationTargets(new ArrayList(a0Var.E()));
        }
        for (String str3 : new ArrayList(a0Var.i())) {
            addContextTag(str3);
        }
        if (a0Var.y() != null) {
            setProguardUuid(a0Var.y());
        }
        if (a0Var.r() != null) {
            setIdleTimeout(a0Var.r());
        }
        for (String str4 : a0Var.h()) {
            addBundleId(str4);
        }
        if (a0Var.I() != null) {
            setEnabled(a0Var.I().booleanValue());
        }
        if (a0Var.H() != null) {
            setEnablePrettySerializationOutput(a0Var.H().booleanValue());
        }
        if (a0Var.J() != null) {
            setSendModules(a0Var.J().booleanValue());
        }
        if (a0Var.s() != null) {
            setIgnoredCheckIns(new ArrayList(a0Var.s()));
        }
        if (a0Var.G() != null) {
            setEnableBackpressureHandling(a0Var.G().booleanValue());
        }
        if (a0Var.j() != null) {
            if (getCron() == null) {
                setCron(a0Var.j());
                return;
            }
            if (a0Var.j().a() != null) {
                getCron().f(a0Var.j().a());
            }
            if (a0Var.j().c() != null) {
                getCron().h(a0Var.j().c());
            }
            if (a0Var.j().e() != null) {
                getCron().j(a0Var.j().e());
            }
            if (a0Var.j().b() != null) {
                getCron().g(a0Var.j().b());
            }
            if (a0Var.j().d() != null) {
                getCron().i(a0Var.j().d());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r retrieveParsedDsn() {
        return (r) this.parsedDsn.a();
    }

    public void setAttachServerName(boolean z10) {
        this.attachServerName = z10;
    }

    public void setAttachStacktrace(boolean z10) {
        this.attachStacktrace = z10;
    }

    public void setAttachThreads(boolean z10) {
        this.attachThreads = z10;
    }

    public void setBackpressureMonitor(io.sentry.backpressure.b bVar) {
        this.backpressureMonitor = bVar;
    }

    public void setBeforeBreadcrumb(a aVar) {
    }

    public void setBeforeEmitMetricCallback(b bVar) {
    }

    public void setBeforeEnvelopeCallback(c cVar) {
        this.beforeEnvelopeCallback = cVar;
    }

    public void setBeforeSend(d dVar) {
        this.beforeSend = dVar;
    }

    public void setBeforeSendReplay(e eVar) {
        this.beforeSendReplay = eVar;
    }

    public void setBeforeSendTransaction(f fVar) {
    }

    public void setCacheDirPath(String str) {
        this.cacheDirPath = str;
    }

    public void setConnectionStatusProvider(l0 l0Var) {
        this.connectionStatusProvider = l0Var;
    }

    public void setConnectionTimeoutMillis(int i10) {
        this.connectionTimeoutMillis = i10;
    }

    public void setCron(g gVar) {
        this.cron = gVar;
    }

    public void setDateProvider(z3 z3Var) {
        this.dateProvider.c(z3Var);
    }

    public void setDebug(boolean z10) {
        this.debug = z10;
    }

    public void setDebugMetaLoader(io.sentry.internal.debugmeta.a aVar) {
        if (aVar == null) {
            aVar = io.sentry.internal.debugmeta.b.b();
        }
        this.debugMetaLoader = aVar;
    }

    public void setDiagnosticLevel(j5 j5Var) {
        if (j5Var == null) {
            j5Var = DEFAULT_DIAGNOSTIC_LEVEL;
        }
        this.diagnosticLevel = j5Var;
    }

    public void setDist(String str) {
        this.dist = str;
    }

    public void setDistinctId(String str) {
        this.distinctId = str;
    }

    public void setDsn(String str) {
        this.dsn = str;
        this.parsedDsn.b();
        this.dsnHash = io.sentry.util.w.a(this.dsn, this.logger);
    }

    public void setEnableAppStartProfiling(boolean z10) {
        this.enableAppStartProfiling = z10;
    }

    public void setEnableAutoSessionTracking(boolean z10) {
        this.enableAutoSessionTracking = z10;
    }

    public void setEnableBackpressureHandling(boolean z10) {
        this.enableBackpressureHandling = z10;
    }

    public void setEnableDeduplication(boolean z10) {
        this.enableDeduplication = z10;
    }

    public void setEnableDefaultTagsForMetrics(boolean z10) {
        this.enableDefaultTagsForMetrics = z10;
    }

    public void setEnableExternalConfiguration(boolean z10) {
        this.enableExternalConfiguration = z10;
    }

    public void setEnableMetrics(boolean z10) {
        this.enableMetrics = z10;
    }

    public void setEnablePrettySerializationOutput(boolean z10) {
        this.enablePrettySerializationOutput = z10;
    }

    public void setEnableScopePersistence(boolean z10) {
        this.enableScopePersistence = z10;
    }

    public void setEnableScreenTracking(boolean z10) {
        this.enableScreenTracking = z10;
    }

    public void setEnableShutdownHook(boolean z10) {
        this.enableShutdownHook = z10;
    }

    public void setEnableSpanLocalMetricAggregation(boolean z10) {
        this.enableSpanLocalMetricAggregation = z10;
    }

    public void setEnableSpotlight(boolean z10) {
        this.enableSpotlight = z10;
    }

    public void setEnableTimeToFullDisplayTracing(boolean z10) {
        this.enableTimeToFullDisplayTracing = z10;
    }

    @Deprecated
    public void setEnableTracing(Boolean bool) {
        this.enableTracing = bool;
    }

    public void setEnableUncaughtExceptionHandler(boolean z10) {
        this.enableUncaughtExceptionHandler = z10;
    }

    public void setEnableUserInteractionBreadcrumbs(boolean z10) {
        this.enableUserInteractionBreadcrumbs = z10;
    }

    public void setEnableUserInteractionTracing(boolean z10) {
        this.enableUserInteractionTracing = z10;
    }

    public void setEnabled(boolean z10) {
        this.enabled = z10;
    }

    public void setEnvelopeDiskCache(io.sentry.cache.g gVar) {
        if (gVar == null) {
            gVar = io.sentry.transport.s.d();
        }
        this.envelopeDiskCache = gVar;
    }

    public void setEnvelopeReader(m0 m0Var) {
        io.sentry.util.m mVar = this.envelopeReader;
        if (m0Var == null) {
            m0Var = x1.b();
        }
        mVar.c(m0Var);
    }

    public void setEnvironment(String str) {
        this.environment = str;
    }

    public void setExecutorService(x0 x0Var) {
        if (x0Var != null) {
            this.executorService = x0Var;
        }
    }

    public void setFlushTimeoutMillis(long j10) {
        this.flushTimeoutMillis = j10;
    }

    public void setFullyDisplayedReporter(b0 b0Var) {
        this.fullyDisplayedReporter = b0Var;
    }

    public void setGestureTargetLocators(List<io.sentry.internal.gestures.a> list) {
        this.gestureTargetLocators.clear();
        this.gestureTargetLocators.addAll(list);
    }

    public void setIdleTimeout(Long l10) {
        this.idleTimeout = l10;
    }

    public void setIgnoredCheckIns(List<String> list) {
        if (list == null) {
            this.ignoredCheckIns = null;
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!str.isEmpty()) {
                arrayList.add(str);
            }
        }
        this.ignoredCheckIns = arrayList;
    }

    public void setInstrumenter(d1 d1Var) {
        this.instrumenter = d1Var;
    }

    public void setLogger(ILogger iLogger) {
        ILogger nVar;
        if (iLogger == null) {
            nVar = z1.e();
        } else {
            nVar = new n(this, iLogger);
        }
        this.logger = nVar;
    }

    public void setMainThreadChecker(io.sentry.util.thread.a aVar) {
        this.mainThreadChecker = aVar;
    }

    public void setMaxAttachmentSize(long j10) {
        this.maxAttachmentSize = j10;
    }

    public void setMaxBreadcrumbs(int i10) {
        this.maxBreadcrumbs = i10;
    }

    public void setMaxCacheItems(int i10) {
        this.maxCacheItems = i10;
    }

    public void setMaxDepth(int i10) {
        this.maxDepth = i10;
    }

    public void setMaxQueueSize(int i10) {
        if (i10 > 0) {
            this.maxQueueSize = i10;
        }
    }

    public void setMaxRequestBodySize(j jVar) {
        this.maxRequestBodySize = jVar;
    }

    public void setMaxSpans(int i10) {
        this.maxSpans = i10;
    }

    public void setMaxTraceFileSize(long j10) {
        this.maxTraceFileSize = j10;
    }

    public void setModulesLoader(io.sentry.internal.modules.b bVar) {
        if (bVar == null) {
            bVar = io.sentry.internal.modules.e.b();
        }
        this.modulesLoader = bVar;
    }

    public void setPrintUncaughtStackTrace(boolean z10) {
        this.printUncaughtStackTrace = z10;
    }

    public void setProfilesSampleRate(Double d10) {
        if (io.sentry.util.u.a(d10)) {
            this.profilesSampleRate = d10;
            return;
        }
        throw new IllegalArgumentException("The value " + d10 + " is not valid. Use null to disable or values between 0.0 and 1.0.");
    }

    public void setProfilesSampler(h hVar) {
    }

    @Deprecated
    public void setProfilingEnabled(boolean z10) {
        Double d10;
        if (getProfilesSampleRate() == null) {
            if (z10) {
                d10 = Double.valueOf(1.0d);
            } else {
                d10 = null;
            }
            setProfilesSampleRate(d10);
        }
    }

    public void setProfilingTracesHz(int i10) {
        this.profilingTracesHz = i10;
    }

    public void setProguardUuid(String str) {
        this.proguardUuid = str;
    }

    public void setProxy(i iVar) {
        this.proxy = iVar;
    }

    public void setReadTimeoutMillis(int i10) {
        this.readTimeoutMillis = i10;
    }

    public void setRelease(String str) {
        this.release = str;
    }

    public void setReplayController(y2 y2Var) {
        if (y2Var == null) {
            y2Var = b2.a();
        }
        this.replayController = y2Var;
    }

    public void setSampleRate(Double d10) {
        if (io.sentry.util.u.c(d10)) {
            this.sampleRate = d10;
            return;
        }
        throw new IllegalArgumentException("The value " + d10 + " is not valid. Use null to disable or values >= 0.0 and <= 1.0.");
    }

    public void setSdkVersion(io.sentry.protocol.p pVar) {
        io.sentry.protocol.p i10 = getSessionReplay().i();
        io.sentry.protocol.p pVar2 = this.sdkVersion;
        if (pVar2 != null && i10 != null && pVar2.equals(i10)) {
            getSessionReplay().v(pVar);
        }
        this.sdkVersion = pVar;
    }

    public void setSendClientReports(boolean z10) {
        this.sendClientReports = z10;
        if (z10) {
            this.clientReportRecorder = new io.sentry.clientreport.e(this);
        } else {
            this.clientReportRecorder = new io.sentry.clientreport.j();
        }
    }

    public void setSendDefaultPii(boolean z10) {
        this.sendDefaultPii = z10;
    }

    public void setSendModules(boolean z10) {
        this.sendModules = z10;
    }

    public void setSentryClientName(String str) {
        this.sentryClientName = str;
    }

    public void setSerializer(y0 y0Var) {
        io.sentry.util.m mVar = this.serializer;
        if (y0Var == null) {
            y0Var = f2.g();
        }
        mVar.c(y0Var);
    }

    public void setServerName(String str) {
        this.serverName = str;
    }

    public void setSessionFlushTimeoutMillis(long j10) {
        this.sessionFlushTimeoutMillis = j10;
    }

    public void setSessionReplay(u5 u5Var) {
        this.sessionReplay = u5Var;
    }

    public void setSessionTrackingIntervalMillis(long j10) {
        this.sessionTrackingIntervalMillis = j10;
    }

    @Deprecated
    public void setShutdownTimeout(long j10) {
        this.shutdownTimeoutMillis = j10;
    }

    public void setShutdownTimeoutMillis(long j10) {
        this.shutdownTimeoutMillis = j10;
    }

    public void setSpotlightConnectionUrl(String str) {
        this.spotlightConnectionUrl = str;
    }

    public void setSslSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.sslSocketFactory = sSLSocketFactory;
    }

    public void setTag(String str, String str2) {
        this.tags.put(str, str2);
    }

    public void setTraceOptionsRequests(boolean z10) {
        this.traceOptionsRequests = z10;
    }

    public void setTracePropagationTargets(List<String> list) {
        if (list == null) {
            this.tracePropagationTargets = null;
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!str.isEmpty()) {
                arrayList.add(str);
            }
        }
        this.tracePropagationTargets = arrayList;
    }

    @Deprecated
    public void setTraceSampling(boolean z10) {
        this.traceSampling = z10;
    }

    public void setTracesSampleRate(Double d10) {
        if (io.sentry.util.u.d(d10)) {
            this.tracesSampleRate = d10;
            return;
        }
        throw new IllegalArgumentException("The value " + d10 + " is not valid. Use null to disable or values between 0.0 and 1.0.");
    }

    public void setTracesSampler(k kVar) {
    }

    @Deprecated
    public void setTracingOrigins(List<String> list) {
        setTracePropagationTargets(list);
    }

    public void setTransactionPerformanceCollector(b7 b7Var) {
        this.transactionPerformanceCollector = b7Var;
    }

    public void setTransactionProfiler(b1 b1Var) {
        if (this.transactionProfiler == j2.c() && b1Var != null) {
            this.transactionProfiler = b1Var;
        }
    }

    public void setTransportFactory(c1 c1Var) {
        if (c1Var == null) {
            c1Var = k2.b();
        }
        this.transportFactory = c1Var;
    }

    public void setTransportGate(io.sentry.transport.r rVar) {
        if (rVar == null) {
            rVar = io.sentry.transport.u.b();
        }
        this.transportGate = rVar;
    }

    public void setViewHierarchyExporters(List<Object> list) {
        this.viewHierarchyExporters.clear();
        this.viewHierarchyExporters.addAll(list);
    }

    private s5(boolean z10) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.eventProcessors = copyOnWriteArrayList;
        this.ignoredExceptionsForType = new CopyOnWriteArraySet();
        CopyOnWriteArrayList copyOnWriteArrayList2 = new CopyOnWriteArrayList();
        this.integrations = copyOnWriteArrayList2;
        this.bundleIds = new CopyOnWriteArraySet();
        this.parsedDsn = new io.sentry.util.m(new m.a() { // from class: io.sentry.o5
            @Override // io.sentry.util.m.a
            public final Object a() {
                r f10;
                f10 = s5.this.f();
                return f10;
            }
        });
        this.shutdownTimeoutMillis = 2000L;
        this.flushTimeoutMillis = 15000L;
        this.sessionFlushTimeoutMillis = 15000L;
        this.logger = z1.e();
        this.diagnosticLevel = DEFAULT_DIAGNOSTIC_LEVEL;
        this.serializer = new io.sentry.util.m(new m.a() { // from class: io.sentry.p5
            @Override // io.sentry.util.m.a
            public final Object a() {
                y0 g10;
                g10 = s5.this.g();
                return g10;
            }
        });
        this.envelopeReader = new io.sentry.util.m(new m.a() { // from class: io.sentry.q5
            @Override // io.sentry.util.m.a
            public final Object a() {
                m0 h10;
                h10 = s5.this.h();
                return h10;
            }
        });
        this.maxDepth = 100;
        this.maxCacheItems = 30;
        this.maxQueueSize = 30;
        this.maxBreadcrumbs = 100;
        this.inAppExcludes = new CopyOnWriteArrayList();
        this.inAppIncludes = new CopyOnWriteArrayList();
        this.transportFactory = k2.b();
        this.transportGate = io.sentry.transport.u.b();
        this.attachStacktrace = true;
        this.enableAutoSessionTracking = true;
        this.sessionTrackingIntervalMillis = 30000L;
        this.attachServerName = true;
        this.enableUncaughtExceptionHandler = true;
        this.printUncaughtStackTrace = false;
        this.executorService = e2.f();
        this.connectionTimeoutMillis = AbstractSession.DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT;
        this.readTimeoutMillis = AbstractSession.DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT;
        this.envelopeDiskCache = io.sentry.transport.s.d();
        this.sendDefaultPii = false;
        this.observers = new CopyOnWriteArrayList();
        this.optionsObservers = new CopyOnWriteArrayList();
        this.tags = new ConcurrentHashMap();
        this.maxAttachmentSize = 20971520L;
        this.enableDeduplication = true;
        this.maxSpans = 1000;
        this.enableShutdownHook = true;
        this.maxRequestBodySize = j.NONE;
        this.traceSampling = true;
        this.maxTraceFileSize = 5242880L;
        this.transactionProfiler = j2.c();
        this.tracePropagationTargets = null;
        this.defaultTracePropagationTargets = Collections.singletonList(DEFAULT_PROPAGATION_TARGETS);
        this.idleTimeout = 3000L;
        this.contextTags = new CopyOnWriteArrayList();
        this.sendClientReports = true;
        this.clientReportRecorder = new io.sentry.clientreport.e(this);
        this.modulesLoader = io.sentry.internal.modules.e.b();
        this.debugMetaLoader = io.sentry.internal.debugmeta.b.b();
        this.enableUserInteractionTracing = false;
        this.enableUserInteractionBreadcrumbs = true;
        this.instrumenter = d1.SENTRY;
        this.gestureTargetLocators = new ArrayList();
        this.viewHierarchyExporters = new ArrayList();
        this.mainThreadChecker = io.sentry.util.thread.c.b();
        this.traceOptionsRequests = true;
        this.dateProvider = new io.sentry.util.m(new m.a() { // from class: io.sentry.r5
            @Override // io.sentry.util.m.a
            public final Object a() {
                z3 i10;
                i10 = s5.i();
                return i10;
            }
        });
        this.performanceCollectors = new ArrayList();
        this.transactionPerformanceCollector = i2.e();
        this.enableTimeToFullDisplayTracing = false;
        this.fullyDisplayedReporter = b0.a();
        this.connectionStatusProvider = new w1();
        this.enabled = true;
        this.enablePrettySerializationOutput = true;
        this.sendModules = true;
        this.enableSpotlight = false;
        this.enableScopePersistence = true;
        this.ignoredCheckIns = null;
        this.backpressureMonitor = io.sentry.backpressure.c.b();
        this.enableBackpressureHandling = true;
        this.enableAppStartProfiling = false;
        this.enableMetrics = false;
        this.enableDefaultTagsForMetrics = true;
        this.enableSpanLocalMetricAggregation = true;
        this.profilingTracesHz = ChromeCustomTabsActivity.NO_HISTORY_CHROME_CUSTOM_TAB_REQUEST_CODE;
        this.cron = null;
        this.replayController = b2.a();
        this.enableScreenTracking = true;
        io.sentry.protocol.p createSdkVersion = createSdkVersion();
        this.experimental = new z(z10, createSdkVersion);
        this.sessionReplay = new u5(z10, createSdkVersion);
        if (z10) {
            return;
        }
        this.executorService = new b5();
        copyOnWriteArrayList2.add(new UncaughtExceptionHandlerIntegration());
        copyOnWriteArrayList2.add(new ShutdownHookIntegration());
        copyOnWriteArrayList2.add(new SpotlightIntegration());
        copyOnWriteArrayList.add(new s1(this));
        copyOnWriteArrayList.add(new s(this));
        if (io.sentry.util.s.c()) {
            copyOnWriteArrayList.add(new v5());
        }
        setSentryClientName("sentry.java/7.22.4");
        setSdkVersion(createSdkVersion);
        e();
    }
}
