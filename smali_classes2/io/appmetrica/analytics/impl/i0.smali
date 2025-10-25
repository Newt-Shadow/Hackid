.class public final Lio/appmetrica/analytics/impl/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Na;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

.field public final c:Lio/appmetrica/analytics/impl/v4;

.field public final d:Landroid/os/Handler;

.field public final e:Lio/appmetrica/analytics/impl/U1;

.field public final f:Lio/appmetrica/analytics/impl/wb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/j4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/i0;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iput-object p2, p0, Lio/appmetrica/analytics/impl/i0;->b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 11
    .line 12
    new-instance p2, Lio/appmetrica/analytics/impl/v4;

    .line 13
    .line 14
    invoke-direct {p2}, Lio/appmetrica/analytics/impl/v4;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lio/appmetrica/analytics/impl/i0;->c:Lio/appmetrica/analytics/impl/v4;

    .line 18
    .line 19
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/i0;->f()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p2}, Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;->getHandler()Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iput-object p2, p0, Lio/appmetrica/analytics/impl/i0;->d:Landroid/os/Handler;

    .line 28
    .line 29
    new-instance p2, Lio/appmetrica/analytics/impl/U1;

    .line 30
    .line 31
    invoke-direct {p2}, Lio/appmetrica/analytics/impl/U1;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lio/appmetrica/analytics/impl/i0;->e:Lio/appmetrica/analytics/impl/U1;

    .line 35
    .line 36
    new-instance p2, Lio/appmetrica/analytics/impl/wb;

    .line 37
    .line 38
    invoke-direct {p2}, Lio/appmetrica/analytics/impl/wb;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lio/appmetrica/analytics/impl/i0;->f:Lio/appmetrica/analytics/impl/wb;

    .line 42
    .line 43
    invoke-static {p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->init(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/i0;->f()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance p2, Lio/appmetrica/analytics/impl/sp;

    .line 51
    .line 52
    invoke-direct {p2}, Lio/appmetrica/analytics/impl/sp;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, p2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/i0;->a()Lio/appmetrica/analytics/impl/v4;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/v4;->a()V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lio/appmetrica/analytics/impl/X3;->a()Lio/appmetrica/analytics/coreapi/internal/clientcomponents/ClientComponentsInitializer;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1}, Lio/appmetrica/analytics/coreapi/internal/clientcomponents/ClientComponentsInitializer;->onCreate()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public static final e()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Initializing of AppMetrica, "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "release"

    .line 9
    .line 10
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " type, Version 7.8.0, API Level "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->getLibraryApiLevel()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ", Dated 09.04.2025."

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget-object v1, Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    new-array v2, v2, [Ljava/lang/Object;

    .line 42
    .line 43
    const-string v3, "AppMetrica"

    .line 44
    .line 45
    invoke-virtual {v1, v3, v0, v2}, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/v4;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/i0;->c:Lio/appmetrica/analytics/impl/v4;

    return-object v0
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/fb;)V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    sget-boolean v0, Lio/appmetrica/analytics/impl/o0;->g:Z

    if-nez v0, :cond_7

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lio/appmetrica/analytics/impl/i0;->f:Lio/appmetrica/analytics/impl/wb;

    .line 6
    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/wb;->a()V

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/i0;->f:Lio/appmetrica/analytics/impl/wb;

    .line 8
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/wb;->c()V

    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/i0;->f:Lio/appmetrica/analytics/impl/wb;

    .line 10
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/wb;->b()V

    if-eqz p1, :cond_3

    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/i0;->f:Lio/appmetrica/analytics/impl/wb;

    .line 12
    iget-object v1, p0, Lio/appmetrica/analytics/impl/i0;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lio/appmetrica/analytics/impl/wb;->a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/fb;)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_6

    .line 13
    iget-object p2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    if-nez p2, :cond_4

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_4
    if-eqz p2, :cond_6

    .line 14
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    .line 15
    :cond_5
    iget-object p2, p0, Lio/appmetrica/analytics/impl/i0;->e:Lio/appmetrica/analytics/impl/U1;

    .line 16
    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/U1;->c()V

    goto :goto_3

    .line 17
    :cond_6
    :goto_2
    iget-object p2, p0, Lio/appmetrica/analytics/impl/i0;->e:Lio/appmetrica/analytics/impl/U1;

    .line 18
    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/U1;->b()V

    :goto_3
    if-eqz p1, :cond_7

    const/4 p1, 0x1

    .line 19
    sput-boolean p1, Lio/appmetrica/analytics/impl/o0;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/i0;->d:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lio/appmetrica/analytics/impl/U1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/i0;->e:Lio/appmetrica/analytics/impl/U1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lio/appmetrica/analytics/impl/wb;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/i0;->f:Lio/appmetrica/analytics/impl/wb;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/i0;->b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDefaultExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/i0;->b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 2
    .line 3
    return-object v0
.end method
