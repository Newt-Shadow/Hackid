.class public Lio/sentry/s5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/s5$d;,
        Lio/sentry/s5$f;,
        Lio/sentry/s5$e;,
        Lio/sentry/s5$a;,
        Lio/sentry/s5$i;,
        Lio/sentry/s5$k;,
        Lio/sentry/s5$j;,
        Lio/sentry/s5$h;,
        Lio/sentry/s5$c;,
        Lio/sentry/s5$b;,
        Lio/sentry/s5$g;
    }
.end annotation


# static fields
.field static final DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/j5;

.field private static final DEFAULT_ENVIRONMENT:Ljava/lang/String; = "production"

.field public static final DEFAULT_PROPAGATION_TARGETS:Ljava/lang/String; = ".*"


# instance fields
.field private attachServerName:Z

.field private attachStacktrace:Z

.field private attachThreads:Z

.field private backpressureMonitor:Lio/sentry/backpressure/b;

.field private beforeBreadcrumb:Lio/sentry/s5$a;

.field private beforeEmitMetricCallback:Lio/sentry/s5$b;

.field private beforeEnvelopeCallback:Lio/sentry/s5$c;

.field private beforeSend:Lio/sentry/s5$d;

.field private beforeSendReplay:Lio/sentry/s5$e;

.field private beforeSendTransaction:Lio/sentry/s5$f;

.field private final bundleIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cacheDirPath:Ljava/lang/String;

.field clientReportRecorder:Lio/sentry/clientreport/h;

.field private connectionStatusProvider:Lio/sentry/l0;

.field private connectionTimeoutMillis:I

.field private final contextTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cron:Lio/sentry/s5$g;

.field private final dateProvider:Lio/sentry/util/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/m;"
        }
    .end annotation
.end field

.field private debug:Z

.field private debugMetaLoader:Lio/sentry/internal/debugmeta/a;

.field private final defaultTracePropagationTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private diagnosticLevel:Lio/sentry/j5;

.field private dist:Ljava/lang/String;

.field private distinctId:Ljava/lang/String;

.field private dsn:Ljava/lang/String;

.field private dsnHash:Ljava/lang/String;

.field private enableAppStartProfiling:Z

.field private enableAutoSessionTracking:Z

.field private enableBackpressureHandling:Z

.field private enableDeduplication:Z

.field private enableDefaultTagsForMetrics:Z

.field private enableExternalConfiguration:Z

.field private enableMetrics:Z

.field private enablePrettySerializationOutput:Z

.field private enableScopePersistence:Z

.field private enableScreenTracking:Z

.field private enableShutdownHook:Z

.field private enableSpanLocalMetricAggregation:Z

.field private enableSpotlight:Z

.field private enableTimeToFullDisplayTracing:Z

.field private enableTracing:Ljava/lang/Boolean;

.field private enableUncaughtExceptionHandler:Z

.field private enableUserInteractionBreadcrumbs:Z

.field private enableUserInteractionTracing:Z

.field private enabled:Z

.field private envelopeDiskCache:Lio/sentry/cache/g;

.field private final envelopeReader:Lio/sentry/util/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/m;"
        }
    .end annotation
.end field

.field private environment:Ljava/lang/String;

.field private final eventProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/y;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Lio/sentry/x0;

.field private final experimental:Lio/sentry/z;

.field private flushTimeoutMillis:J

.field private fullyDisplayedReporter:Lio/sentry/b0;

.field private final gestureTargetLocators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/internal/gestures/a;",
            ">;"
        }
    .end annotation
.end field

.field private idleTimeout:Ljava/lang/Long;

.field private ignoredCheckIns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoredExceptionsForType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final inAppExcludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inAppIncludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private instrumenter:Lio/sentry/d1;

.field private final integrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/e1;",
            ">;"
        }
    .end annotation
.end field

.field private logger:Lio/sentry/ILogger;

.field private mainThreadChecker:Lio/sentry/util/thread/a;

.field private maxAttachmentSize:J

.field private maxBreadcrumbs:I

.field private maxCacheItems:I

.field private maxDepth:I

.field private maxQueueSize:I

.field private maxRequestBodySize:Lio/sentry/s5$j;

.field private maxSpans:I

.field private maxTraceFileSize:J

.field private modulesLoader:Lio/sentry/internal/modules/b;

.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/v0;",
            ">;"
        }
    .end annotation
.end field

.field private final optionsObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/q0;",
            ">;"
        }
    .end annotation
.end field

.field private final parsedDsn:Lio/sentry/util/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/m;"
        }
    .end annotation
.end field

.field private final performanceCollectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/r0;",
            ">;"
        }
    .end annotation
.end field

.field private printUncaughtStackTrace:Z

.field private profilesSampleRate:Ljava/lang/Double;

.field private profilesSampler:Lio/sentry/s5$h;

.field private profilingTracesHz:I

.field private proguardUuid:Ljava/lang/String;

.field private proxy:Lio/sentry/s5$i;

.field private readTimeoutMillis:I

.field private release:Ljava/lang/String;

.field private replayController:Lio/sentry/y2;

.field private sampleRate:Ljava/lang/Double;

.field private sdkVersion:Lio/sentry/protocol/p;

.field private sendClientReports:Z

.field private sendDefaultPii:Z

.field private sendModules:Z

.field private sentryClientName:Ljava/lang/String;

.field private final serializer:Lio/sentry/util/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/m;"
        }
    .end annotation
.end field

.field private serverName:Ljava/lang/String;

.field private sessionFlushTimeoutMillis:J

.field private sessionReplay:Lio/sentry/u5;

.field private sessionTrackingIntervalMillis:J

.field private shutdownTimeoutMillis:J

.field private spotlightConnectionUrl:Ljava/lang/String;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private traceOptionsRequests:Z

.field private tracePropagationTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private traceSampling:Z

.field private tracesSampleRate:Ljava/lang/Double;

.field private tracesSampler:Lio/sentry/s5$k;

.field private transactionPerformanceCollector:Lio/sentry/b7;

.field private transactionProfiler:Lio/sentry/b1;

.field private transportFactory:Lio/sentry/c1;

.field private transportGate:Lio/sentry/transport/r;

.field private final viewHierarchyExporters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 2
    .line 3
    sput-object v0, Lio/sentry/s5;->DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/j5;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/sentry/s5;-><init>(Z)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/s5;->eventProcessors:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lio/sentry/s5;->ignoredExceptionsForType:Ljava/util/Set;

    .line 5
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lio/sentry/s5;->integrations:Ljava/util/List;

    .line 6
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, p0, Lio/sentry/s5;->bundleIds:Ljava/util/Set;

    .line 7
    new-instance v2, Lio/sentry/util/m;

    new-instance v3, Lio/sentry/o5;

    invoke-direct {v3, p0}, Lio/sentry/o5;-><init>(Lio/sentry/s5;)V

    invoke-direct {v2, v3}, Lio/sentry/util/m;-><init>(Lio/sentry/util/m$a;)V

    iput-object v2, p0, Lio/sentry/s5;->parsedDsn:Lio/sentry/util/m;

    const-wide/16 v2, 0x7d0

    .line 8
    iput-wide v2, p0, Lio/sentry/s5;->shutdownTimeoutMillis:J

    const-wide/16 v2, 0x3a98

    .line 9
    iput-wide v2, p0, Lio/sentry/s5;->flushTimeoutMillis:J

    .line 10
    iput-wide v2, p0, Lio/sentry/s5;->sessionFlushTimeoutMillis:J

    .line 11
    invoke-static {}, Lio/sentry/z1;->e()Lio/sentry/z1;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/s5;->logger:Lio/sentry/ILogger;

    .line 12
    sget-object v2, Lio/sentry/s5;->DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/j5;

    iput-object v2, p0, Lio/sentry/s5;->diagnosticLevel:Lio/sentry/j5;

    .line 13
    new-instance v2, Lio/sentry/util/m;

    new-instance v3, Lio/sentry/p5;

    invoke-direct {v3, p0}, Lio/sentry/p5;-><init>(Lio/sentry/s5;)V

    invoke-direct {v2, v3}, Lio/sentry/util/m;-><init>(Lio/sentry/util/m$a;)V

    iput-object v2, p0, Lio/sentry/s5;->serializer:Lio/sentry/util/m;

    .line 14
    new-instance v2, Lio/sentry/util/m;

    new-instance v3, Lio/sentry/q5;

    invoke-direct {v3, p0}, Lio/sentry/q5;-><init>(Lio/sentry/s5;)V

    invoke-direct {v2, v3}, Lio/sentry/util/m;-><init>(Lio/sentry/util/m$a;)V

    iput-object v2, p0, Lio/sentry/s5;->envelopeReader:Lio/sentry/util/m;

    const/16 v2, 0x64

    .line 15
    iput v2, p0, Lio/sentry/s5;->maxDepth:I

    const/16 v3, 0x1e

    .line 16
    iput v3, p0, Lio/sentry/s5;->maxCacheItems:I

    .line 17
    iput v3, p0, Lio/sentry/s5;->maxQueueSize:I

    .line 18
    iput v2, p0, Lio/sentry/s5;->maxBreadcrumbs:I

    .line 19
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lio/sentry/s5;->inAppExcludes:Ljava/util/List;

    .line 20
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lio/sentry/s5;->inAppIncludes:Ljava/util/List;

    .line 21
    invoke-static {}, Lio/sentry/k2;->b()Lio/sentry/k2;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/s5;->transportFactory:Lio/sentry/c1;

    .line 22
    invoke-static {}, Lio/sentry/transport/u;->b()Lio/sentry/transport/u;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/s5;->transportGate:Lio/sentry/transport/r;

    const/4 v2, 0x1

    .line 23
    iput-boolean v2, p0, Lio/sentry/s5;->attachStacktrace:Z

    .line 24
    iput-boolean v2, p0, Lio/sentry/s5;->enableAutoSessionTracking:Z

    const-wide/16 v3, 0x7530

    .line 25
    iput-wide v3, p0, Lio/sentry/s5;->sessionTrackingIntervalMillis:J

    .line 26
    iput-boolean v2, p0, Lio/sentry/s5;->attachServerName:Z

    .line 27
    iput-boolean v2, p0, Lio/sentry/s5;->enableUncaughtExceptionHandler:Z

    const/4 v3, 0x0

    .line 28
    iput-boolean v3, p0, Lio/sentry/s5;->printUncaughtStackTrace:Z

    .line 29
    invoke-static {}, Lio/sentry/e2;->f()Lio/sentry/x0;

    move-result-object v4

    iput-object v4, p0, Lio/sentry/s5;->executorService:Lio/sentry/x0;

    const/16 v4, 0x1388

    .line 30
    iput v4, p0, Lio/sentry/s5;->connectionTimeoutMillis:I

    .line 31
    iput v4, p0, Lio/sentry/s5;->readTimeoutMillis:I

    .line 32
    invoke-static {}, Lio/sentry/transport/s;->d()Lio/sentry/transport/s;

    move-result-object v4

    iput-object v4, p0, Lio/sentry/s5;->envelopeDiskCache:Lio/sentry/cache/g;

    .line 33
    iput-boolean v3, p0, Lio/sentry/s5;->sendDefaultPii:Z

    .line 34
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lio/sentry/s5;->observers:Ljava/util/List;

    .line 35
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lio/sentry/s5;->optionsObservers:Ljava/util/List;

    .line 36
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lio/sentry/s5;->tags:Ljava/util/Map;

    const-wide/32 v4, 0x1400000

    .line 37
    iput-wide v4, p0, Lio/sentry/s5;->maxAttachmentSize:J

    .line 38
    iput-boolean v2, p0, Lio/sentry/s5;->enableDeduplication:Z

    const/16 v4, 0x3e8

    .line 39
    iput v4, p0, Lio/sentry/s5;->maxSpans:I

    .line 40
    iput-boolean v2, p0, Lio/sentry/s5;->enableShutdownHook:Z

    .line 41
    sget-object v4, Lio/sentry/s5$j;->NONE:Lio/sentry/s5$j;

    iput-object v4, p0, Lio/sentry/s5;->maxRequestBodySize:Lio/sentry/s5$j;

    .line 42
    iput-boolean v2, p0, Lio/sentry/s5;->traceSampling:Z

    const-wide/32 v4, 0x500000

    .line 43
    iput-wide v4, p0, Lio/sentry/s5;->maxTraceFileSize:J

    .line 44
    invoke-static {}, Lio/sentry/j2;->c()Lio/sentry/j2;

    move-result-object v4

    iput-object v4, p0, Lio/sentry/s5;->transactionProfiler:Lio/sentry/b1;

    const/4 v4, 0x0

    .line 45
    iput-object v4, p0, Lio/sentry/s5;->tracePropagationTargets:Ljava/util/List;

    const-string v5, ".*"

    .line 46
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/s5;->defaultTracePropagationTargets:Ljava/util/List;

    const-wide/16 v5, 0xbb8

    .line 47
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/s5;->idleTimeout:Ljava/lang/Long;

    .line 48
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v5, p0, Lio/sentry/s5;->contextTags:Ljava/util/List;

    .line 49
    iput-boolean v2, p0, Lio/sentry/s5;->sendClientReports:Z

    .line 50
    new-instance v5, Lio/sentry/clientreport/e;

    invoke-direct {v5, p0}, Lio/sentry/clientreport/e;-><init>(Lio/sentry/s5;)V

    iput-object v5, p0, Lio/sentry/s5;->clientReportRecorder:Lio/sentry/clientreport/h;

    .line 51
    invoke-static {}, Lio/sentry/internal/modules/e;->b()Lio/sentry/internal/modules/e;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/s5;->modulesLoader:Lio/sentry/internal/modules/b;

    .line 52
    invoke-static {}, Lio/sentry/internal/debugmeta/b;->b()Lio/sentry/internal/debugmeta/b;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/s5;->debugMetaLoader:Lio/sentry/internal/debugmeta/a;

    .line 53
    iput-boolean v3, p0, Lio/sentry/s5;->enableUserInteractionTracing:Z

    .line 54
    iput-boolean v2, p0, Lio/sentry/s5;->enableUserInteractionBreadcrumbs:Z

    .line 55
    sget-object v5, Lio/sentry/d1;->SENTRY:Lio/sentry/d1;

    iput-object v5, p0, Lio/sentry/s5;->instrumenter:Lio/sentry/d1;

    .line 56
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/sentry/s5;->gestureTargetLocators:Ljava/util/List;

    .line 57
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/sentry/s5;->viewHierarchyExporters:Ljava/util/List;

    .line 58
    invoke-static {}, Lio/sentry/util/thread/c;->b()Lio/sentry/util/thread/c;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/s5;->mainThreadChecker:Lio/sentry/util/thread/a;

    .line 59
    iput-boolean v2, p0, Lio/sentry/s5;->traceOptionsRequests:Z

    .line 60
    new-instance v5, Lio/sentry/util/m;

    new-instance v6, Lio/sentry/r5;

    invoke-direct {v6}, Lio/sentry/r5;-><init>()V

    invoke-direct {v5, v6}, Lio/sentry/util/m;-><init>(Lio/sentry/util/m$a;)V

    iput-object v5, p0, Lio/sentry/s5;->dateProvider:Lio/sentry/util/m;

    .line 61
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/sentry/s5;->performanceCollectors:Ljava/util/List;

    .line 62
    invoke-static {}, Lio/sentry/i2;->e()Lio/sentry/i2;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/s5;->transactionPerformanceCollector:Lio/sentry/b7;

    .line 63
    iput-boolean v3, p0, Lio/sentry/s5;->enableTimeToFullDisplayTracing:Z

    .line 64
    invoke-static {}, Lio/sentry/b0;->a()Lio/sentry/b0;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/s5;->fullyDisplayedReporter:Lio/sentry/b0;

    .line 65
    new-instance v5, Lio/sentry/w1;

    invoke-direct {v5}, Lio/sentry/w1;-><init>()V

    iput-object v5, p0, Lio/sentry/s5;->connectionStatusProvider:Lio/sentry/l0;

    .line 66
    iput-boolean v2, p0, Lio/sentry/s5;->enabled:Z

    .line 67
    iput-boolean v2, p0, Lio/sentry/s5;->enablePrettySerializationOutput:Z

    .line 68
    iput-boolean v2, p0, Lio/sentry/s5;->sendModules:Z

    .line 69
    iput-boolean v3, p0, Lio/sentry/s5;->enableSpotlight:Z

    .line 70
    iput-boolean v2, p0, Lio/sentry/s5;->enableScopePersistence:Z

    .line 71
    iput-object v4, p0, Lio/sentry/s5;->ignoredCheckIns:Ljava/util/List;

    .line 72
    invoke-static {}, Lio/sentry/backpressure/c;->b()Lio/sentry/backpressure/c;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/s5;->backpressureMonitor:Lio/sentry/backpressure/b;

    .line 73
    iput-boolean v2, p0, Lio/sentry/s5;->enableBackpressureHandling:Z

    .line 74
    iput-boolean v3, p0, Lio/sentry/s5;->enableAppStartProfiling:Z

    .line 75
    iput-boolean v3, p0, Lio/sentry/s5;->enableMetrics:Z

    .line 76
    iput-boolean v2, p0, Lio/sentry/s5;->enableDefaultTagsForMetrics:Z

    .line 77
    iput-boolean v2, p0, Lio/sentry/s5;->enableSpanLocalMetricAggregation:Z

    const/16 v3, 0x65

    .line 78
    iput v3, p0, Lio/sentry/s5;->profilingTracesHz:I

    .line 79
    iput-object v4, p0, Lio/sentry/s5;->cron:Lio/sentry/s5$g;

    .line 80
    invoke-static {}, Lio/sentry/b2;->a()Lio/sentry/b2;

    move-result-object v3

    iput-object v3, p0, Lio/sentry/s5;->replayController:Lio/sentry/y2;

    .line 81
    iput-boolean v2, p0, Lio/sentry/s5;->enableScreenTracking:Z

    .line 82
    invoke-direct {p0}, Lio/sentry/s5;->createSdkVersion()Lio/sentry/protocol/p;

    move-result-object v2

    .line 83
    new-instance v3, Lio/sentry/z;

    invoke-direct {v3, p1, v2}, Lio/sentry/z;-><init>(ZLio/sentry/protocol/p;)V

    iput-object v3, p0, Lio/sentry/s5;->experimental:Lio/sentry/z;

    .line 84
    new-instance v3, Lio/sentry/u5;

    invoke-direct {v3, p1, v2}, Lio/sentry/u5;-><init>(ZLio/sentry/protocol/p;)V

    iput-object v3, p0, Lio/sentry/s5;->sessionReplay:Lio/sentry/u5;

    if-nez p1, :cond_1

    .line 85
    new-instance p1, Lio/sentry/b5;

    invoke-direct {p1}, Lio/sentry/b5;-><init>()V

    iput-object p1, p0, Lio/sentry/s5;->executorService:Lio/sentry/x0;

    .line 86
    new-instance p1, Lio/sentry/UncaughtExceptionHandlerIntegration;

    invoke-direct {p1}, Lio/sentry/UncaughtExceptionHandlerIntegration;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance p1, Lio/sentry/ShutdownHookIntegration;

    invoke-direct {p1}, Lio/sentry/ShutdownHookIntegration;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance p1, Lio/sentry/SpotlightIntegration;

    invoke-direct {p1}, Lio/sentry/SpotlightIntegration;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance p1, Lio/sentry/s1;

    invoke-direct {p1, p0}, Lio/sentry/s1;-><init>(Lio/sentry/s5;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance p1, Lio/sentry/s;

    invoke-direct {p1, p0}, Lio/sentry/s;-><init>(Lio/sentry/s5;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Lio/sentry/util/s;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    new-instance p1, Lio/sentry/v5;

    invoke-direct {p1}, Lio/sentry/v5;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p1, "sentry.java/7.22.4"

    .line 93
    invoke-virtual {p0, p1}, Lio/sentry/s5;->setSentryClientName(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, v2}, Lio/sentry/s5;->setSdkVersion(Lio/sentry/protocol/p;)V

    .line 95
    invoke-direct {p0}, Lio/sentry/s5;->e()V

    :cond_1
    return-void
.end method

.method public static synthetic a()Lio/sentry/z3;
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/s5;->i()Lio/sentry/z3;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lio/sentry/s5;)Lio/sentry/y0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/s5;->g()Lio/sentry/y0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lio/sentry/s5;)Lio/sentry/m0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/s5;->h()Lio/sentry/m0;

    move-result-object p0

    return-object p0
.end method

.method private createSdkVersion()Lio/sentry/protocol/p;
    .locals 3

    .line 1
    new-instance v0, Lio/sentry/protocol/p;

    .line 2
    .line 3
    const-string v1, "sentry.java"

    .line 4
    .line 5
    const-string v2, "7.22.4"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v2}, Lio/sentry/protocol/p;->k(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static synthetic d(Lio/sentry/s5;)Lio/sentry/r;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/s5;->f()Lio/sentry/r;

    move-result-object p0

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 1
    invoke-static {}, Lio/sentry/h5;->c()Lio/sentry/h5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "maven:io.sentry:sentry"

    .line 6
    .line 7
    const-string v2, "7.22.4"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lio/sentry/h5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static empty()Lio/sentry/s5;
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/s5;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lio/sentry/s5;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private synthetic f()Lio/sentry/r;
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/r;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/s5;->dsn:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lio/sentry/r;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private synthetic g()Lio/sentry/y0;
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/r1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/sentry/r1;-><init>(Lio/sentry/s5;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private synthetic h()Lio/sentry/m0;
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/t;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/s5;->serializer:Lio/sentry/util/m;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lio/sentry/y0;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lio/sentry/t;-><init>(Lio/sentry/y0;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private static synthetic i()Lio/sentry/z3;
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/s3;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/s3;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public addBundleId(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lio/sentry/s5;->bundleIds:Ljava/util/Set;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public addContextTag(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->contextTags:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addEventProcessor(Lio/sentry/y;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->eventProcessors:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addIgnoredExceptionForType(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->ignoredExceptionsForType:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addInAppExclude(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->inAppExcludes:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addInAppInclude(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->inAppIncludes:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addIntegration(Lio/sentry/e1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->integrations:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addOptionsObserver(Lio/sentry/q0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->optionsObservers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addPerformanceCollector(Lio/sentry/r0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->performanceCollectors:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addScopeObserver(Lio/sentry/v0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->observers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addTracingOrigin(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->tracePropagationTargets:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/sentry/s5;->tracePropagationTargets:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lio/sentry/s5;->tracePropagationTargets:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method containsIgnoredExceptionForType(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->ignoredExceptionsForType:Ljava/util/Set;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public findPersistingScopeObserver()Lio/sentry/cache/t;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->observers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/sentry/v0;

    .line 18
    .line 19
    instance-of v2, v1, Lio/sentry/cache/t;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    check-cast v1, Lio/sentry/cache/t;

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method public getBackpressureMonitor()Lio/sentry/backpressure/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->backpressureMonitor:Lio/sentry/backpressure/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBeforeBreadcrumb()Lio/sentry/s5$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBeforeEmitMetricCallback()Lio/sentry/s5$b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBeforeEnvelopeCallback()Lio/sentry/s5$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->beforeEnvelopeCallback:Lio/sentry/s5$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBeforeSend()Lio/sentry/s5$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->beforeSend:Lio/sentry/s5$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBeforeSendReplay()Lio/sentry/s5$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->beforeSendReplay:Lio/sentry/s5$e;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBeforeSendTransaction()Lio/sentry/s5$f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBundleIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->bundleIds:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCacheDirPath()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->cacheDirPath:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lio/sentry/s5;->dsnHash:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    iget-object v1, p0, Lio/sentry/s5;->cacheDirPath:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Lio/sentry/s5;->dsnHash:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lio/sentry/s5;->cacheDirPath:Ljava/lang/String;

    .line 31
    .line 32
    :goto_0
    return-object v0

    .line 33
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 34
    return-object v0
.end method

.method getCacheDirPathWithoutDsn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->cacheDirPath:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/sentry/s5;->cacheDirPath:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 16
    return-object v0
.end method

.method public getClientReportRecorder()Lio/sentry/clientreport/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->clientReportRecorder:Lio/sentry/clientreport/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConnectionStatusProvider()Lio/sentry/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->connectionStatusProvider:Lio/sentry/l0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConnectionTimeoutMillis()I
    .locals 1

    .line 1
    iget v0, p0, Lio/sentry/s5;->connectionTimeoutMillis:I

    .line 2
    .line 3
    return v0
.end method

.method public getContextTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->contextTags:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCron()Lio/sentry/s5$g;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->cron:Lio/sentry/s5$g;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDateProvider()Lio/sentry/z3;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->dateProvider:Lio/sentry/util/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/sentry/z3;

    .line 8
    .line 9
    return-object v0
.end method

.method public getDebugMetaLoader()Lio/sentry/internal/debugmeta/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->debugMetaLoader:Lio/sentry/internal/debugmeta/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDiagnosticLevel()Lio/sentry/j5;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->diagnosticLevel:Lio/sentry/j5;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDist()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->dist:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDistinctId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->distinctId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDsn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->dsn:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEnableTracing()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->enableTracing:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEnvelopeDiskCache()Lio/sentry/cache/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->envelopeDiskCache:Lio/sentry/cache/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEnvelopeReader()Lio/sentry/m0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->envelopeReader:Lio/sentry/util/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/sentry/m0;

    .line 8
    .line 9
    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->environment:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "production"

    .line 7
    .line 8
    :goto_0
    return-object v0
.end method

.method public getEventProcessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/y;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->eventProcessors:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExecutorService()Lio/sentry/x0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->executorService:Lio/sentry/x0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExperimental()Lio/sentry/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->experimental:Lio/sentry/z;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFlushTimeoutMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/s5;->flushTimeoutMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFullyDisplayedReporter()Lio/sentry/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->fullyDisplayedReporter:Lio/sentry/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGestureTargetLocators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/internal/gestures/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->gestureTargetLocators:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIdleTimeout()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->idleTimeout:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIgnoredCheckIns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->ignoredCheckIns:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIgnoredExceptionsForType()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->ignoredExceptionsForType:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInAppExcludes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->inAppExcludes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInAppIncludes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->inAppIncludes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInstrumenter()Lio/sentry/d1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->instrumenter:Lio/sentry/d1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntegrations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/e1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->integrations:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogger()Lio/sentry/ILogger;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->logger:Lio/sentry/ILogger;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMainThreadChecker()Lio/sentry/util/thread/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->mainThreadChecker:Lio/sentry/util/thread/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxAttachmentSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/s5;->maxAttachmentSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMaxBreadcrumbs()I
    .locals 1

    .line 1
    iget v0, p0, Lio/sentry/s5;->maxBreadcrumbs:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxCacheItems()I
    .locals 1

    .line 1
    iget v0, p0, Lio/sentry/s5;->maxCacheItems:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxDepth()I
    .locals 1

    .line 1
    iget v0, p0, Lio/sentry/s5;->maxDepth:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxQueueSize()I
    .locals 1

    .line 1
    iget v0, p0, Lio/sentry/s5;->maxQueueSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxRequestBodySize()Lio/sentry/s5$j;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->maxRequestBodySize:Lio/sentry/s5$j;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxSpans()I
    .locals 1

    .line 1
    iget v0, p0, Lio/sentry/s5;->maxSpans:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxTraceFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/s5;->maxTraceFileSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getModulesLoader()Lio/sentry/internal/modules/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->modulesLoader:Lio/sentry/internal/modules/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOptionsObservers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/q0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->optionsObservers:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOutboxPath()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 10
    .line 11
    const-string v2, "outbox"

    .line 12
    .line 13
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public getPerformanceCollectors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/r0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->performanceCollectors:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProfilesSampleRate()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->profilesSampleRate:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProfilesSampler()Lio/sentry/s5$h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfilingTracesDirPath()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 10
    .line 11
    const-string v2, "profiling_traces"

    .line 12
    .line 13
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public getProfilingTracesHz()I
    .locals 1

    .line 1
    iget v0, p0, Lio/sentry/s5;->profilingTracesHz:I

    .line 2
    .line 3
    return v0
.end method

.method public getProguardUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->proguardUuid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProxy()Lio/sentry/s5$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->proxy:Lio/sentry/s5$i;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReadTimeoutMillis()I
    .locals 1

    .line 1
    iget v0, p0, Lio/sentry/s5;->readTimeoutMillis:I

    .line 2
    .line 3
    return v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->release:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReplayController()Lio/sentry/y2;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->replayController:Lio/sentry/y2;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSampleRate()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->sampleRate:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScopeObservers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/v0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->observers:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdkVersion()Lio/sentry/protocol/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->sdkVersion:Lio/sentry/protocol/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSentryClientName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->sentryClientName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerializer()Lio/sentry/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->serializer:Lio/sentry/util/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/sentry/y0;

    .line 8
    .line 9
    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->serverName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSessionFlushTimeoutMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/s5;->sessionFlushTimeoutMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSessionReplay()Lio/sentry/u5;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->sessionReplay:Lio/sentry/u5;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSessionTrackingIntervalMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/s5;->sessionTrackingIntervalMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getShutdownTimeout()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/sentry/s5;->shutdownTimeoutMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getShutdownTimeoutMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/s5;->shutdownTimeoutMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSpotlightConnectionUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->spotlightConnectionUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->tags:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTracePropagationTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->tracePropagationTargets:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/sentry/s5;->defaultTracePropagationTargets:Ljava/util/List;

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public getTracesSampleRate()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->tracesSampleRate:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTracesSampler()Lio/sentry/s5$k;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTracingOrigins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->getTracePropagationTargets()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getTransactionPerformanceCollector()Lio/sentry/b7;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->transactionPerformanceCollector:Lio/sentry/b7;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTransactionProfiler()Lio/sentry/b1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->transactionProfiler:Lio/sentry/b1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTransportFactory()Lio/sentry/c1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->transportFactory:Lio/sentry/c1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTransportGate()Lio/sentry/transport/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->transportGate:Lio/sentry/transport/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewHierarchyExporters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->viewHierarchyExporters:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAttachServerName()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->attachServerName:Z

    .line 2
    .line 3
    return v0
.end method

.method public isAttachStacktrace()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->attachStacktrace:Z

    .line 2
    .line 3
    return v0
.end method

.method public isAttachThreads()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->attachThreads:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->debug:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableAppStartProfiling()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->isProfilingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lio/sentry/s5;->enableAppStartProfiling:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isEnableAutoSessionTracking()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->enableAutoSessionTracking:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableBackpressureHandling()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->enableBackpressureHandling:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableDeduplication()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->enableDeduplication:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableDefaultTagsForMetrics()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->isEnableMetrics()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lio/sentry/s5;->enableDefaultTagsForMetrics:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isEnableExternalConfiguration()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->enableExternalConfiguration:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableMetrics()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->enableMetrics:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnablePrettySerializationOutput()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->enablePrettySerializationOutput:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableScopePersistence()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->enableScopePersistence:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableScreenTracking()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->enableScreenTracking:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableShutdownHook()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->enableShutdownHook:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableSpanLocalMetricAggregation()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->isEnableMetrics()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lio/sentry/s5;->enableSpanLocalMetricAggregation:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isEnableSpotlight()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->enableSpotlight:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableTimeToFullDisplayTracing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->enableTimeToFullDisplayTracing:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableUncaughtExceptionHandler()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->enableUncaughtExceptionHandler:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableUserInteractionBreadcrumbs()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->enableUserInteractionBreadcrumbs:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableUserInteractionTracing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->enableUserInteractionTracing:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->enabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPrintUncaughtStackTrace()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->printUncaughtStackTrace:Z

    .line 2
    .line 3
    return v0
.end method

.method public isProfilingEnabled()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->getProfilesSampleRate()Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/s5;->getProfilesSampleRate()Ljava/lang/Double;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmpl-double v0, v0, v2

    .line 18
    .line 19
    if-gtz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/sentry/s5;->getProfilesSampler()Lio/sentry/s5$h;

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_1
    return v0
.end method

.method public isSendClientReports()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->sendClientReports:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSendDefaultPii()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->sendDefaultPii:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSendModules()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->sendModules:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTraceOptionsRequests()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->traceOptionsRequests:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTraceSampling()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/s5;->traceSampling:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTracingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->enableTracing:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lio/sentry/s5;->getTracesSampleRate()Ljava/lang/Double;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lio/sentry/s5;->getTracesSampler()Lio/sentry/s5$k;

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    :goto_0
    return v0
.end method

.method loadLazyFields()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->getSerializer()Lio/sentry/y0;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/sentry/s5;->retrieveParsedDsn()Lio/sentry/r;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/s5;->getEnvelopeReader()Lio/sentry/m0;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lio/sentry/s5;->getDateProvider()Lio/sentry/z3;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public merge(Lio/sentry/a0;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lio/sentry/a0;->m()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lio/sentry/a0;->m()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setDsn(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Lio/sentry/a0;->q()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lio/sentry/a0;->q()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setEnvironment(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p1}, Lio/sentry/a0;->A()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Lio/sentry/a0;->A()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setRelease(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p1}, Lio/sentry/a0;->l()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p1}, Lio/sentry/a0;->l()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setDist(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-virtual {p1}, Lio/sentry/a0;->C()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {p1}, Lio/sentry/a0;->C()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setServerName(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    invoke-virtual {p1}, Lio/sentry/a0;->z()Lio/sentry/s5$i;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    invoke-virtual {p1}, Lio/sentry/a0;->z()Lio/sentry/s5$i;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setProxy(Lio/sentry/s5$i;)V

    .line 77
    .line 78
    .line 79
    :cond_5
    invoke-virtual {p1}, Lio/sentry/a0;->p()Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    invoke-virtual {p1}, Lio/sentry/a0;->p()Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setEnableUncaughtExceptionHandler(Z)V

    .line 94
    .line 95
    .line 96
    :cond_6
    invoke-virtual {p1}, Lio/sentry/a0;->w()Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_7

    .line 101
    .line 102
    invoke-virtual {p1}, Lio/sentry/a0;->w()Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setPrintUncaughtStackTrace(Z)V

    .line 111
    .line 112
    .line 113
    :cond_7
    invoke-virtual {p1}, Lio/sentry/a0;->o()Ljava/lang/Boolean;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_8

    .line 118
    .line 119
    invoke-virtual {p1}, Lio/sentry/a0;->o()Ljava/lang/Boolean;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setEnableTracing(Ljava/lang/Boolean;)V

    .line 124
    .line 125
    .line 126
    :cond_8
    invoke-virtual {p1}, Lio/sentry/a0;->F()Ljava/lang/Double;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_9

    .line 131
    .line 132
    invoke-virtual {p1}, Lio/sentry/a0;->F()Ljava/lang/Double;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setTracesSampleRate(Ljava/lang/Double;)V

    .line 137
    .line 138
    .line 139
    :cond_9
    invoke-virtual {p1}, Lio/sentry/a0;->x()Ljava/lang/Double;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_a

    .line 144
    .line 145
    invoke-virtual {p1}, Lio/sentry/a0;->x()Ljava/lang/Double;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setProfilesSampleRate(Ljava/lang/Double;)V

    .line 150
    .line 151
    .line 152
    :cond_a
    invoke-virtual {p1}, Lio/sentry/a0;->k()Ljava/lang/Boolean;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-eqz v0, :cond_b

    .line 157
    .line 158
    invoke-virtual {p1}, Lio/sentry/a0;->k()Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setDebug(Z)V

    .line 167
    .line 168
    .line 169
    :cond_b
    invoke-virtual {p1}, Lio/sentry/a0;->n()Ljava/lang/Boolean;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-eqz v0, :cond_c

    .line 174
    .line 175
    invoke-virtual {p1}, Lio/sentry/a0;->n()Ljava/lang/Boolean;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setEnableDeduplication(Z)V

    .line 184
    .line 185
    .line 186
    :cond_c
    invoke-virtual {p1}, Lio/sentry/a0;->B()Ljava/lang/Boolean;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-eqz v0, :cond_d

    .line 191
    .line 192
    invoke-virtual {p1}, Lio/sentry/a0;->B()Ljava/lang/Boolean;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setSendClientReports(Z)V

    .line 201
    .line 202
    .line 203
    :cond_d
    new-instance v0, Ljava/util/HashMap;

    .line 204
    .line 205
    invoke-virtual {p1}, Lio/sentry/a0;->D()Ljava/util/Map;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 210
    .line 211
    .line 212
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_e

    .line 225
    .line 226
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    check-cast v1, Ljava/util/Map$Entry;

    .line 231
    .line 232
    iget-object v2, p0, Lio/sentry/s5;->tags:Ljava/util/Map;

    .line 233
    .line 234
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    check-cast v3, Ljava/lang/String;

    .line 239
    .line 240
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    check-cast v1, Ljava/lang/String;

    .line 245
    .line 246
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    goto :goto_0

    .line 250
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-virtual {p1}, Lio/sentry/a0;->v()Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_f

    .line 268
    .line 269
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    check-cast v1, Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {p0, v1}, Lio/sentry/s5;->addInAppInclude(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    goto :goto_1

    .line 279
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-virtual {p1}, Lio/sentry/a0;->u()Ljava/util/List;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 286
    .line 287
    .line 288
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-eqz v1, :cond_10

    .line 297
    .line 298
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    check-cast v1, Ljava/lang/String;

    .line 303
    .line 304
    invoke-virtual {p0, v1}, Lio/sentry/s5;->addInAppExclude(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    goto :goto_2

    .line 308
    :cond_10
    new-instance v0, Ljava/util/HashSet;

    .line 309
    .line 310
    invoke-virtual {p1}, Lio/sentry/a0;->t()Ljava/util/Set;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_11

    .line 326
    .line 327
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    check-cast v1, Ljava/lang/Class;

    .line 332
    .line 333
    invoke-virtual {p0, v1}, Lio/sentry/s5;->addIgnoredExceptionForType(Ljava/lang/Class;)V

    .line 334
    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_11
    invoke-virtual {p1}, Lio/sentry/a0;->E()Ljava/util/List;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    if-eqz v0, :cond_12

    .line 342
    .line 343
    new-instance v0, Ljava/util/ArrayList;

    .line 344
    .line 345
    invoke-virtual {p1}, Lio/sentry/a0;->E()Ljava/util/List;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setTracePropagationTargets(Ljava/util/List;)V

    .line 353
    .line 354
    .line 355
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    .line 356
    .line 357
    invoke-virtual {p1}, Lio/sentry/a0;->i()Ljava/util/List;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 362
    .line 363
    .line 364
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    if-eqz v1, :cond_13

    .line 373
    .line 374
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    check-cast v1, Ljava/lang/String;

    .line 379
    .line 380
    invoke-virtual {p0, v1}, Lio/sentry/s5;->addContextTag(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    goto :goto_4

    .line 384
    :cond_13
    invoke-virtual {p1}, Lio/sentry/a0;->y()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    if-eqz v0, :cond_14

    .line 389
    .line 390
    invoke-virtual {p1}, Lio/sentry/a0;->y()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setProguardUuid(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    :cond_14
    invoke-virtual {p1}, Lio/sentry/a0;->r()Ljava/lang/Long;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    if-eqz v0, :cond_15

    .line 402
    .line 403
    invoke-virtual {p1}, Lio/sentry/a0;->r()Ljava/lang/Long;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setIdleTimeout(Ljava/lang/Long;)V

    .line 408
    .line 409
    .line 410
    :cond_15
    invoke-virtual {p1}, Lio/sentry/a0;->h()Ljava/util/Set;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    if-eqz v1, :cond_16

    .line 423
    .line 424
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    check-cast v1, Ljava/lang/String;

    .line 429
    .line 430
    invoke-virtual {p0, v1}, Lio/sentry/s5;->addBundleId(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    goto :goto_5

    .line 434
    :cond_16
    invoke-virtual {p1}, Lio/sentry/a0;->I()Ljava/lang/Boolean;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    if-eqz v0, :cond_17

    .line 439
    .line 440
    invoke-virtual {p1}, Lio/sentry/a0;->I()Ljava/lang/Boolean;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setEnabled(Z)V

    .line 449
    .line 450
    .line 451
    :cond_17
    invoke-virtual {p1}, Lio/sentry/a0;->H()Ljava/lang/Boolean;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    if-eqz v0, :cond_18

    .line 456
    .line 457
    invoke-virtual {p1}, Lio/sentry/a0;->H()Ljava/lang/Boolean;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setEnablePrettySerializationOutput(Z)V

    .line 466
    .line 467
    .line 468
    :cond_18
    invoke-virtual {p1}, Lio/sentry/a0;->J()Ljava/lang/Boolean;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    if-eqz v0, :cond_19

    .line 473
    .line 474
    invoke-virtual {p1}, Lio/sentry/a0;->J()Ljava/lang/Boolean;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setSendModules(Z)V

    .line 483
    .line 484
    .line 485
    :cond_19
    invoke-virtual {p1}, Lio/sentry/a0;->s()Ljava/util/List;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    if-eqz v0, :cond_1a

    .line 490
    .line 491
    new-instance v0, Ljava/util/ArrayList;

    .line 492
    .line 493
    invoke-virtual {p1}, Lio/sentry/a0;->s()Ljava/util/List;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setIgnoredCheckIns(Ljava/util/List;)V

    .line 501
    .line 502
    .line 503
    :cond_1a
    invoke-virtual {p1}, Lio/sentry/a0;->G()Ljava/lang/Boolean;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    if-eqz v0, :cond_1b

    .line 508
    .line 509
    invoke-virtual {p1}, Lio/sentry/a0;->G()Ljava/lang/Boolean;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setEnableBackpressureHandling(Z)V

    .line 518
    .line 519
    .line 520
    :cond_1b
    invoke-virtual {p1}, Lio/sentry/a0;->j()Lio/sentry/s5$g;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    if-eqz v0, :cond_21

    .line 525
    .line 526
    invoke-virtual {p0}, Lio/sentry/s5;->getCron()Lio/sentry/s5$g;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    if-nez v0, :cond_1c

    .line 531
    .line 532
    invoke-virtual {p1}, Lio/sentry/a0;->j()Lio/sentry/s5$g;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    invoke-virtual {p0, p1}, Lio/sentry/s5;->setCron(Lio/sentry/s5$g;)V

    .line 537
    .line 538
    .line 539
    goto/16 :goto_6

    .line 540
    .line 541
    :cond_1c
    invoke-virtual {p1}, Lio/sentry/a0;->j()Lio/sentry/s5$g;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-virtual {v0}, Lio/sentry/s5$g;->a()Ljava/lang/Long;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    if-eqz v0, :cond_1d

    .line 550
    .line 551
    invoke-virtual {p0}, Lio/sentry/s5;->getCron()Lio/sentry/s5$g;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    invoke-virtual {p1}, Lio/sentry/a0;->j()Lio/sentry/s5$g;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    invoke-virtual {v1}, Lio/sentry/s5$g;->a()Ljava/lang/Long;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    invoke-virtual {v0, v1}, Lio/sentry/s5$g;->f(Ljava/lang/Long;)V

    .line 564
    .line 565
    .line 566
    :cond_1d
    invoke-virtual {p1}, Lio/sentry/a0;->j()Lio/sentry/s5$g;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-virtual {v0}, Lio/sentry/s5$g;->c()Ljava/lang/Long;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    if-eqz v0, :cond_1e

    .line 575
    .line 576
    invoke-virtual {p0}, Lio/sentry/s5;->getCron()Lio/sentry/s5$g;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    invoke-virtual {p1}, Lio/sentry/a0;->j()Lio/sentry/s5$g;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    invoke-virtual {v1}, Lio/sentry/s5$g;->c()Ljava/lang/Long;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    invoke-virtual {v0, v1}, Lio/sentry/s5$g;->h(Ljava/lang/Long;)V

    .line 589
    .line 590
    .line 591
    :cond_1e
    invoke-virtual {p1}, Lio/sentry/a0;->j()Lio/sentry/s5$g;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    invoke-virtual {v0}, Lio/sentry/s5$g;->e()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    if-eqz v0, :cond_1f

    .line 600
    .line 601
    invoke-virtual {p0}, Lio/sentry/s5;->getCron()Lio/sentry/s5$g;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    invoke-virtual {p1}, Lio/sentry/a0;->j()Lio/sentry/s5$g;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    invoke-virtual {v1}, Lio/sentry/s5$g;->e()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    invoke-virtual {v0, v1}, Lio/sentry/s5$g;->j(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    :cond_1f
    invoke-virtual {p1}, Lio/sentry/a0;->j()Lio/sentry/s5$g;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    invoke-virtual {v0}, Lio/sentry/s5$g;->b()Ljava/lang/Long;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    if-eqz v0, :cond_20

    .line 625
    .line 626
    invoke-virtual {p0}, Lio/sentry/s5;->getCron()Lio/sentry/s5$g;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    invoke-virtual {p1}, Lio/sentry/a0;->j()Lio/sentry/s5$g;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    invoke-virtual {v1}, Lio/sentry/s5$g;->b()Ljava/lang/Long;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    invoke-virtual {v0, v1}, Lio/sentry/s5$g;->g(Ljava/lang/Long;)V

    .line 639
    .line 640
    .line 641
    :cond_20
    invoke-virtual {p1}, Lio/sentry/a0;->j()Lio/sentry/s5$g;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-virtual {v0}, Lio/sentry/s5$g;->d()Ljava/lang/Long;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    if-eqz v0, :cond_21

    .line 650
    .line 651
    invoke-virtual {p0}, Lio/sentry/s5;->getCron()Lio/sentry/s5$g;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    invoke-virtual {p1}, Lio/sentry/a0;->j()Lio/sentry/s5$g;

    .line 656
    .line 657
    .line 658
    move-result-object p1

    .line 659
    invoke-virtual {p1}, Lio/sentry/s5$g;->d()Ljava/lang/Long;

    .line 660
    .line 661
    .line 662
    move-result-object p1

    .line 663
    invoke-virtual {v0, p1}, Lio/sentry/s5$g;->i(Ljava/lang/Long;)V

    .line 664
    .line 665
    .line 666
    :cond_21
    :goto_6
    return-void
.end method

.method retrieveParsedDsn()Lio/sentry/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->parsedDsn:Lio/sentry/util/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/sentry/r;

    .line 8
    .line 9
    return-object v0
.end method

.method public setAttachServerName(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->attachServerName:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAttachStacktrace(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->attachStacktrace:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAttachThreads(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->attachThreads:Z

    .line 2
    .line 3
    return-void
.end method

.method public setBackpressureMonitor(Lio/sentry/backpressure/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->backpressureMonitor:Lio/sentry/backpressure/b;

    .line 2
    .line 3
    return-void
.end method

.method public setBeforeBreadcrumb(Lio/sentry/s5$a;)V
    .locals 0

    return-void
.end method

.method public setBeforeEmitMetricCallback(Lio/sentry/s5$b;)V
    .locals 0

    return-void
.end method

.method public setBeforeEnvelopeCallback(Lio/sentry/s5$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->beforeEnvelopeCallback:Lio/sentry/s5$c;

    .line 2
    .line 3
    return-void
.end method

.method public setBeforeSend(Lio/sentry/s5$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->beforeSend:Lio/sentry/s5$d;

    .line 2
    .line 3
    return-void
.end method

.method public setBeforeSendReplay(Lio/sentry/s5$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->beforeSendReplay:Lio/sentry/s5$e;

    .line 2
    .line 3
    return-void
.end method

.method public setBeforeSendTransaction(Lio/sentry/s5$f;)V
    .locals 0

    return-void
.end method

.method public setCacheDirPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->cacheDirPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setConnectionStatusProvider(Lio/sentry/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->connectionStatusProvider:Lio/sentry/l0;

    .line 2
    .line 3
    return-void
.end method

.method public setConnectionTimeoutMillis(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/s5;->connectionTimeoutMillis:I

    .line 2
    .line 3
    return-void
.end method

.method public setCron(Lio/sentry/s5$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->cron:Lio/sentry/s5$g;

    .line 2
    .line 3
    return-void
.end method

.method public setDateProvider(Lio/sentry/z3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->dateProvider:Lio/sentry/util/m;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/sentry/util/m;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->debug:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDebugMetaLoader(Lio/sentry/internal/debugmeta/a;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lio/sentry/internal/debugmeta/b;->b()Lio/sentry/internal/debugmeta/b;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    iput-object p1, p0, Lio/sentry/s5;->debugMetaLoader:Lio/sentry/internal/debugmeta/a;

    .line 9
    .line 10
    return-void
.end method

.method public setDiagnosticLevel(Lio/sentry/j5;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lio/sentry/s5;->DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/j5;

    .line 5
    .line 6
    :goto_0
    iput-object p1, p0, Lio/sentry/s5;->diagnosticLevel:Lio/sentry/j5;

    .line 7
    .line 8
    return-void
.end method

.method public setDist(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->dist:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDistinctId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->distinctId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDsn(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->dsn:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lio/sentry/s5;->parsedDsn:Lio/sentry/util/m;

    .line 4
    .line 5
    invoke-virtual {p1}, Lio/sentry/util/m;->b()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lio/sentry/s5;->dsn:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/s5;->logger:Lio/sentry/ILogger;

    .line 11
    .line 12
    invoke-static {p1, v0}, Lio/sentry/util/w;->a(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lio/sentry/s5;->dsnHash:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public setEnableAppStartProfiling(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->enableAppStartProfiling:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableAutoSessionTracking(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->enableAutoSessionTracking:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableBackpressureHandling(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->enableBackpressureHandling:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableDeduplication(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->enableDeduplication:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableDefaultTagsForMetrics(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->enableDefaultTagsForMetrics:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableExternalConfiguration(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->enableExternalConfiguration:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableMetrics(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->enableMetrics:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnablePrettySerializationOutput(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->enablePrettySerializationOutput:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableScopePersistence(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->enableScopePersistence:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableScreenTracking(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->enableScreenTracking:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableShutdownHook(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->enableShutdownHook:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableSpanLocalMetricAggregation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->enableSpanLocalMetricAggregation:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableSpotlight(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->enableSpotlight:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableTimeToFullDisplayTracing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->enableTimeToFullDisplayTracing:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableTracing(Ljava/lang/Boolean;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->enableTracing:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setEnableUncaughtExceptionHandler(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->enableUncaughtExceptionHandler:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableUserInteractionBreadcrumbs(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->enableUserInteractionBreadcrumbs:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableUserInteractionTracing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->enableUserInteractionTracing:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->enabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnvelopeDiskCache(Lio/sentry/cache/g;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lio/sentry/transport/s;->d()Lio/sentry/transport/s;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    iput-object p1, p0, Lio/sentry/s5;->envelopeDiskCache:Lio/sentry/cache/g;

    .line 9
    .line 10
    return-void
.end method

.method public setEnvelopeReader(Lio/sentry/m0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->envelopeReader:Lio/sentry/util/m;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lio/sentry/x1;->b()Lio/sentry/x1;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-virtual {v0, p1}, Lio/sentry/util/m;->c(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->environment:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExecutorService(Lio/sentry/x0;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/sentry/s5;->executorService:Lio/sentry/x0;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setFlushTimeoutMillis(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/sentry/s5;->flushTimeoutMillis:J

    .line 2
    .line 3
    return-void
.end method

.method public setFullyDisplayedReporter(Lio/sentry/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->fullyDisplayedReporter:Lio/sentry/b0;

    .line 2
    .line 3
    return-void
.end method

.method public setGestureTargetLocators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/internal/gestures/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->gestureTargetLocators:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/s5;->gestureTargetLocators:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setIdleTimeout(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->idleTimeout:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setIgnoredCheckIns(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/sentry/s5;->ignoredCheckIns:Ljava/util/List;

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iput-object v0, p0, Lio/sentry/s5;->ignoredCheckIns:Ljava/util/List;

    .line 39
    .line 40
    :goto_1
    return-void
.end method

.method public setInstrumenter(Lio/sentry/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->instrumenter:Lio/sentry/d1;

    .line 2
    .line 3
    return-void
.end method

.method public setLogger(Lio/sentry/ILogger;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lio/sentry/z1;->e()Lio/sentry/z1;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lio/sentry/n;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lio/sentry/n;-><init>(Lio/sentry/s5;Lio/sentry/ILogger;)V

    .line 11
    .line 12
    .line 13
    move-object p1, v0

    .line 14
    :goto_0
    iput-object p1, p0, Lio/sentry/s5;->logger:Lio/sentry/ILogger;

    .line 15
    .line 16
    return-void
.end method

.method public setMainThreadChecker(Lio/sentry/util/thread/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->mainThreadChecker:Lio/sentry/util/thread/a;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxAttachmentSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/sentry/s5;->maxAttachmentSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setMaxBreadcrumbs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/s5;->maxBreadcrumbs:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxCacheItems(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/s5;->maxCacheItems:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxDepth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/s5;->maxDepth:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxQueueSize(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lio/sentry/s5;->maxQueueSize:I

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setMaxRequestBodySize(Lio/sentry/s5$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->maxRequestBodySize:Lio/sentry/s5$j;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxSpans(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/s5;->maxSpans:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxTraceFileSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/sentry/s5;->maxTraceFileSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setModulesLoader(Lio/sentry/internal/modules/b;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lio/sentry/internal/modules/e;->b()Lio/sentry/internal/modules/e;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    iput-object p1, p0, Lio/sentry/s5;->modulesLoader:Lio/sentry/internal/modules/b;

    .line 9
    .line 10
    return-void
.end method

.method public setPrintUncaughtStackTrace(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->printUncaughtStackTrace:Z

    .line 2
    .line 3
    return-void
.end method

.method public setProfilesSampleRate(Ljava/lang/Double;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lio/sentry/util/u;->a(Ljava/lang/Double;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lio/sentry/s5;->profilesSampleRate:Ljava/lang/Double;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "The value "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " is not valid. Use null to disable or values between 0.0 and 1.0."

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public setProfilesSampler(Lio/sentry/s5$h;)V
    .locals 0

    return-void
.end method

.method public setProfilingEnabled(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->getProfilesSampleRate()Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0, p1}, Lio/sentry/s5;->setProfilesSampleRate(Ljava/lang/Double;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public setProfilingTracesHz(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/s5;->profilingTracesHz:I

    .line 2
    .line 3
    return-void
.end method

.method public setProguardUuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->proguardUuid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setProxy(Lio/sentry/s5$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->proxy:Lio/sentry/s5$i;

    .line 2
    .line 3
    return-void
.end method

.method public setReadTimeoutMillis(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/s5;->readTimeoutMillis:I

    .line 2
    .line 3
    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->release:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReplayController(Lio/sentry/y2;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lio/sentry/b2;->a()Lio/sentry/b2;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    iput-object p1, p0, Lio/sentry/s5;->replayController:Lio/sentry/y2;

    .line 9
    .line 10
    return-void
.end method

.method public setSampleRate(Ljava/lang/Double;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lio/sentry/util/u;->c(Ljava/lang/Double;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lio/sentry/s5;->sampleRate:Ljava/lang/Double;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "The value "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " is not valid. Use null to disable or values >= 0.0 and <= 1.0."

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public setSdkVersion(Lio/sentry/protocol/p;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/sentry/u5;->i()Lio/sentry/protocol/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lio/sentry/s5;->sdkVersion:Lio/sentry/protocol/p;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lio/sentry/protocol/p;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lio/sentry/u5;->v(Lio/sentry/protocol/p;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iput-object p1, p0, Lio/sentry/s5;->sdkVersion:Lio/sentry/protocol/p;

    .line 29
    .line 30
    return-void
.end method

.method public setSendClientReports(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->sendClientReports:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lio/sentry/clientreport/e;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lio/sentry/clientreport/e;-><init>(Lio/sentry/s5;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lio/sentry/s5;->clientReportRecorder:Lio/sentry/clientreport/h;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lio/sentry/clientreport/j;

    .line 14
    .line 15
    invoke-direct {p1}, Lio/sentry/clientreport/j;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lio/sentry/s5;->clientReportRecorder:Lio/sentry/clientreport/h;

    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public setSendDefaultPii(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->sendDefaultPii:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSendModules(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->sendModules:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSentryClientName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->sentryClientName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSerializer(Lio/sentry/y0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->serializer:Lio/sentry/util/m;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lio/sentry/f2;->g()Lio/sentry/f2;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-virtual {v0, p1}, Lio/sentry/util/m;->c(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->serverName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSessionFlushTimeoutMillis(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/sentry/s5;->sessionFlushTimeoutMillis:J

    .line 2
    .line 3
    return-void
.end method

.method public setSessionReplay(Lio/sentry/u5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->sessionReplay:Lio/sentry/u5;

    .line 2
    .line 3
    return-void
.end method

.method public setSessionTrackingIntervalMillis(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/sentry/s5;->sessionTrackingIntervalMillis:J

    .line 2
    .line 3
    return-void
.end method

.method public setShutdownTimeout(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-wide p1, p0, Lio/sentry/s5;->shutdownTimeoutMillis:J

    .line 2
    .line 3
    return-void
.end method

.method public setShutdownTimeoutMillis(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/sentry/s5;->shutdownTimeoutMillis:J

    .line 2
    .line 3
    return-void
.end method

.method public setSpotlightConnectionUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->spotlightConnectionUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    .line 3
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->tags:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTraceOptionsRequests(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->traceOptionsRequests:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTracePropagationTargets(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/sentry/s5;->tracePropagationTargets:Ljava/util/List;

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iput-object v0, p0, Lio/sentry/s5;->tracePropagationTargets:Ljava/util/List;

    .line 39
    .line 40
    :goto_1
    return-void
.end method

.method public setTraceSampling(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/sentry/s5;->traceSampling:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTracesSampleRate(Ljava/lang/Double;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lio/sentry/util/u;->d(Ljava/lang/Double;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lio/sentry/s5;->tracesSampleRate:Ljava/lang/Double;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "The value "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " is not valid. Use null to disable or values between 0.0 and 1.0."

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public setTracesSampler(Lio/sentry/s5$k;)V
    .locals 0

    return-void
.end method

.method public setTracingOrigins(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/sentry/s5;->setTracePropagationTargets(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setTransactionPerformanceCollector(Lio/sentry/b7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/s5;->transactionPerformanceCollector:Lio/sentry/b7;

    .line 2
    .line 3
    return-void
.end method

.method public setTransactionProfiler(Lio/sentry/b1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->transactionProfiler:Lio/sentry/b1;

    .line 2
    .line 3
    invoke-static {}, Lio/sentry/j2;->c()Lio/sentry/j2;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lio/sentry/s5;->transactionProfiler:Lio/sentry/b1;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setTransportFactory(Lio/sentry/c1;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lio/sentry/k2;->b()Lio/sentry/k2;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    iput-object p1, p0, Lio/sentry/s5;->transportFactory:Lio/sentry/c1;

    .line 9
    .line 10
    return-void
.end method

.method public setTransportGate(Lio/sentry/transport/r;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lio/sentry/transport/u;->b()Lio/sentry/transport/u;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    iput-object p1, p0, Lio/sentry/s5;->transportGate:Lio/sentry/transport/r;

    .line 9
    .line 10
    return-void
.end method

.method public setViewHierarchyExporters(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/s5;->viewHierarchyExporters:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/s5;->viewHierarchyExporters:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
