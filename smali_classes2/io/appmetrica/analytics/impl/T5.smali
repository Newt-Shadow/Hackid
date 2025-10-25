.class public final Lio/appmetrica/analytics/impl/T5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/n;

.field public final b:Lio/appmetrica/analytics/IReporter;

.field public c:Landroid/content/Context;

.field public final d:Lio/appmetrica/analytics/impl/S5;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/n;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/T5;-><init>(Lio/appmetrica/analytics/impl/n;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/n;I)V
    .locals 0

    .line 6
    invoke-static {}, Lio/appmetrica/analytics/impl/o1;->a()Lio/appmetrica/analytics/impl/Oj;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/T5;-><init>(Lio/appmetrica/analytics/impl/n;Lio/appmetrica/analytics/IReporter;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/n;Lio/appmetrica/analytics/IReporter;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/T5;->a:Lio/appmetrica/analytics/impl/n;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/T5;->b:Lio/appmetrica/analytics/IReporter;

    .line 5
    new-instance p1, Lio/appmetrica/analytics/impl/S5;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/S5;-><init>(Lio/appmetrica/analytics/impl/T5;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/T5;->d:Lio/appmetrica/analytics/impl/S5;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T5;->c:Landroid/content/Context;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T5;->a:Lio/appmetrica/analytics/impl/n;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/n;->a(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T5;->a:Lio/appmetrica/analytics/impl/n;

    .line 16
    .line 17
    iget-object v1, p0, Lio/appmetrica/analytics/impl/T5;->d:Lio/appmetrica/analytics/impl/S5;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    .line 21
    .line 22
    sget-object v3, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->RESUMED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    aput-object v3, v2, v4

    .line 26
    .line 27
    sget-object v3, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->PAUSED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    aput-object v3, v2, v4

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/n;->registerListener(Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;[Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lio/appmetrica/analytics/impl/T5;->c:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    :cond_0
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    monitor-exit p0

    .line 41
    throw p1
.end method
