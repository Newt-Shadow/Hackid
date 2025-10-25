.class public final Lio/appmetrica/analytics/impl/ki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/eb;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/yf;

.field public final c:Lio/appmetrica/analytics/impl/wi;

.field public final d:Landroid/os/Handler;

.field public final e:Lio/appmetrica/analytics/impl/zl;

.field public final f:Lio/appmetrica/analytics/impl/Ec;

.field public final g:Ljava/util/LinkedHashMap;

.field public final h:Lio/appmetrica/analytics/impl/kn;

.field public final i:Ljava/util/List;

.field public j:Lio/appmetrica/analytics/impl/tc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/yf;Lio/appmetrica/analytics/impl/wi;Landroid/os/Handler;Lio/appmetrica/analytics/impl/zl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/ki;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/ki;->b:Lio/appmetrica/analytics/impl/yf;

    .line 7
    .line 8
    iput-object p3, p0, Lio/appmetrica/analytics/impl/ki;->c:Lio/appmetrica/analytics/impl/wi;

    .line 9
    .line 10
    iput-object p4, p0, Lio/appmetrica/analytics/impl/ki;->d:Landroid/os/Handler;

    .line 11
    .line 12
    iput-object p5, p0, Lio/appmetrica/analytics/impl/ki;->e:Lio/appmetrica/analytics/impl/zl;

    .line 13
    .line 14
    new-instance p4, Lio/appmetrica/analytics/impl/Ec;

    .line 15
    .line 16
    invoke-direct {p4, p1, p2, p3, p5}, Lio/appmetrica/analytics/impl/Ec;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/yf;Lio/appmetrica/analytics/impl/wi;Lio/appmetrica/analytics/impl/zl;)V

    .line 17
    .line 18
    .line 19
    iput-object p4, p0, Lio/appmetrica/analytics/impl/ki;->f:Lio/appmetrica/analytics/impl/Ec;

    .line 20
    .line 21
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lio/appmetrica/analytics/impl/ki;->g:Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    new-instance p2, Lio/appmetrica/analytics/impl/kn;

    .line 29
    .line 30
    new-instance p3, Lio/appmetrica/analytics/impl/mi;

    .line 31
    .line 32
    invoke-direct {p3, p1}, Lio/appmetrica/analytics/impl/mi;-><init>(Ljava/util/Map;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p2, p3}, Lio/appmetrica/analytics/impl/kn;-><init>(Lio/appmetrica/analytics/impl/Yn;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lio/appmetrica/analytics/impl/ki;->h:Lio/appmetrica/analytics/impl/kn;

    .line 39
    .line 40
    const-string p1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 41
    .line 42
    const-string p2, "0e5e9c33-f8c3-4568-86c5-2e4f57523f72"

    .line 43
    .line 44
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lyc/m;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lio/appmetrica/analytics/impl/ki;->i:Ljava/util/List;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)Lio/appmetrica/analytics/impl/Ua;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/ki;->c(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)Lio/appmetrica/analytics/impl/tc;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lio/appmetrica/analytics/impl/eb;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 4

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ki;->g:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    iget-object p1, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/ApiKeyUtils;->createPartialApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Reporter with apiKey=%s already exists."

    invoke-virtual {v0, p1, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ki;->b(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/db;

    .line 7
    sget-object v0, Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Activate reporter with APIKey "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/ApiKeyUtils;->createPartialApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AppMetrica"

    .line 9
    invoke-virtual {v0, v2, p1, v1}, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final bridge synthetic b(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)Lio/appmetrica/analytics/impl/Ua;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/ki;->d(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)Lio/appmetrica/analytics/impl/tc;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized b(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/db;
    .locals 7

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ki;->g:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/db;

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ki;->i:Ljava/util/List;

    iget-object v1, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ki;->e:Lio/appmetrica/analytics/impl/zl;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/zl;->i()V

    .line 6
    :cond_0
    new-instance v6, Lio/appmetrica/analytics/impl/Kc;

    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/impl/ki;->a:Landroid/content/Context;

    .line 8
    iget-object v2, p0, Lio/appmetrica/analytics/impl/ki;->b:Lio/appmetrica/analytics/impl/yf;

    .line 9
    iget-object v4, p0, Lio/appmetrica/analytics/impl/ki;->c:Lio/appmetrica/analytics/impl/wi;

    .line 10
    new-instance v5, Lio/appmetrica/analytics/impl/Y9;

    invoke-direct {v5, v1}, Lio/appmetrica/analytics/impl/Y9;-><init>(Landroid/content/Context;)V

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/Kc;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/yf;Lio/appmetrica/analytics/ReporterConfig;Lio/appmetrica/analytics/impl/wi;Lio/appmetrica/analytics/impl/Y9;)V

    .line 11
    new-instance v0, Lio/appmetrica/analytics/impl/zb;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ki;->d:Landroid/os/Handler;

    invoke-direct {v0, v1, v6}, Lio/appmetrica/analytics/impl/zb;-><init>(Landroid/os/Handler;Lio/appmetrica/analytics/impl/R2;)V

    .line 12
    iput-object v0, v6, Lio/appmetrica/analytics/impl/R2;->i:Lio/appmetrica/analytics/impl/zb;

    .line 13
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ki;->e:Lio/appmetrica/analytics/impl/zl;

    .line 14
    iget-object v1, v6, Lio/appmetrica/analytics/impl/R2;->b:Lio/appmetrica/analytics/impl/Gh;

    if-eqz v0, :cond_1

    .line 15
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Z3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 16
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/zl;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    :goto_0
    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/R2;->k()V

    .line 19
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ki;->g:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-interface {v0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lio/appmetrica/analytics/AppMetricaConfig;)Lio/appmetrica/analytics/impl/gb;
    .locals 7

    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ki;->j:Lio/appmetrica/analytics/impl/tc;

    if-nez v0, :cond_1

    .line 21
    new-instance v0, Lio/appmetrica/analytics/impl/z6;

    .line 22
    iget-object v2, p0, Lio/appmetrica/analytics/impl/ki;->a:Landroid/content/Context;

    .line 23
    iget-object v3, p0, Lio/appmetrica/analytics/impl/ki;->b:Lio/appmetrica/analytics/impl/yf;

    .line 24
    iget-object v5, p0, Lio/appmetrica/analytics/impl/ki;->c:Lio/appmetrica/analytics/impl/wi;

    .line 25
    new-instance v6, Lio/appmetrica/analytics/impl/Y9;

    invoke-direct {v6, v2}, Lio/appmetrica/analytics/impl/Y9;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/z6;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/yf;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/wi;Lio/appmetrica/analytics/impl/Y9;)V

    .line 26
    new-instance v1, Lio/appmetrica/analytics/impl/zb;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/ki;->d:Landroid/os/Handler;

    invoke-direct {v1, v2, v0}, Lio/appmetrica/analytics/impl/zb;-><init>(Landroid/os/Handler;Lio/appmetrica/analytics/impl/R2;)V

    .line 27
    iput-object v1, v0, Lio/appmetrica/analytics/impl/R2;->i:Lio/appmetrica/analytics/impl/zb;

    .line 28
    iget-object v1, p0, Lio/appmetrica/analytics/impl/ki;->e:Lio/appmetrica/analytics/impl/zl;

    .line 29
    iget-object v2, v0, Lio/appmetrica/analytics/impl/R2;->b:Lio/appmetrica/analytics/impl/Gh;

    if-eqz v1, :cond_0

    .line 30
    iget-object v2, v2, Lio/appmetrica/analytics/impl/Z3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 31
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/zl;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    :goto_0
    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->errorEnvironment:Ljava/util/Map;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/R2;->b(Ljava/util/Map;)V

    .line 34
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/R2;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Lio/appmetrica/analytics/impl/ki;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final declared-synchronized c(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)Lio/appmetrica/analytics/impl/tc;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ki;->j:Lio/appmetrica/analytics/impl/tc;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ki;->h:Lio/appmetrica/analytics/impl/kn;

    .line 8
    .line 9
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/kn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ki;->f:Lio/appmetrica/analytics/impl/Ec;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Lio/appmetrica/analytics/impl/Ec;->a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lio/appmetrica/analytics/impl/tc;

    .line 20
    .line 21
    iget-object p2, p0, Lio/appmetrica/analytics/impl/ki;->f:Lio/appmetrica/analytics/impl/Ec;

    .line 22
    .line 23
    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/tc;-><init>(Lio/appmetrica/analytics/impl/Ec;)V

    .line 24
    .line 25
    .line 26
    new-instance p2, Lio/appmetrica/analytics/impl/zb;

    .line 27
    .line 28
    iget-object v1, p0, Lio/appmetrica/analytics/impl/ki;->d:Landroid/os/Handler;

    .line 29
    .line 30
    invoke-direct {p2, v1, v0}, Lio/appmetrica/analytics/impl/zb;-><init>(Landroid/os/Handler;Lio/appmetrica/analytics/impl/R2;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, v0, Lio/appmetrica/analytics/impl/R2;->i:Lio/appmetrica/analytics/impl/zb;

    .line 34
    .line 35
    iget-object p2, p0, Lio/appmetrica/analytics/impl/ki;->e:Lio/appmetrica/analytics/impl/zl;

    .line 36
    .line 37
    iget-object v1, v0, Lio/appmetrica/analytics/impl/R2;->b:Lio/appmetrica/analytics/impl/Gh;

    .line 38
    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Z3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 42
    .line 43
    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/zl;->g()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {v1, p2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {v0, p1, p3}, Lio/appmetrica/analytics/impl/tc;->a(Lio/appmetrica/analytics/AppMetricaConfig;Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/tc;->k()V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lio/appmetrica/analytics/impl/ki;->c:Lio/appmetrica/analytics/impl/wi;

    .line 61
    .line 62
    new-instance p3, Lio/appmetrica/analytics/impl/ji;

    .line 63
    .line 64
    invoke-direct {p3, v0}, Lio/appmetrica/analytics/impl/ji;-><init>(Lio/appmetrica/analytics/impl/tc;)V

    .line 65
    .line 66
    .line 67
    iget-object p2, p2, Lio/appmetrica/analytics/impl/wi;->f:Lio/appmetrica/analytics/impl/Uj;

    .line 68
    .line 69
    iput-object p3, p2, Lio/appmetrica/analytics/impl/Uj;->c:Lio/appmetrica/analytics/impl/Lk;

    .line 70
    .line 71
    iget-object p2, p0, Lio/appmetrica/analytics/impl/ki;->g:Ljava/util/LinkedHashMap;

    .line 72
    .line 73
    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    .line 74
    .line 75
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lio/appmetrica/analytics/impl/ki;->j:Lio/appmetrica/analytics/impl/tc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    :goto_1
    monitor-exit p0

    .line 81
    return-object v0

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    monitor-exit p0

    .line 84
    throw p1
.end method

.method public final declared-synchronized d(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)Lio/appmetrica/analytics/impl/tc;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ki;->j:Lio/appmetrica/analytics/impl/tc;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/impl/ki;->f:Lio/appmetrica/analytics/impl/Ec;

    .line 7
    .line 8
    invoke-virtual {v1, p1, p2}, Lio/appmetrica/analytics/impl/Ec;->a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p3}, Lio/appmetrica/analytics/impl/tc;->a(Lio/appmetrica/analytics/AppMetricaConfig;Z)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lio/appmetrica/analytics/impl/ki;->g:Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ki;->h:Lio/appmetrica/analytics/impl/kn;

    .line 30
    .line 31
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/kn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ki;->f:Lio/appmetrica/analytics/impl/Ec;

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Lio/appmetrica/analytics/impl/Ec;->a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lio/appmetrica/analytics/impl/tc;

    .line 42
    .line 43
    iget-object p2, p0, Lio/appmetrica/analytics/impl/ki;->f:Lio/appmetrica/analytics/impl/Ec;

    .line 44
    .line 45
    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/tc;-><init>(Lio/appmetrica/analytics/impl/Ec;)V

    .line 46
    .line 47
    .line 48
    new-instance p2, Lio/appmetrica/analytics/impl/zb;

    .line 49
    .line 50
    iget-object v1, p0, Lio/appmetrica/analytics/impl/ki;->d:Landroid/os/Handler;

    .line 51
    .line 52
    invoke-direct {p2, v1, v0}, Lio/appmetrica/analytics/impl/zb;-><init>(Landroid/os/Handler;Lio/appmetrica/analytics/impl/R2;)V

    .line 53
    .line 54
    .line 55
    iput-object p2, v0, Lio/appmetrica/analytics/impl/R2;->i:Lio/appmetrica/analytics/impl/zb;

    .line 56
    .line 57
    iget-object p2, p0, Lio/appmetrica/analytics/impl/ki;->e:Lio/appmetrica/analytics/impl/zl;

    .line 58
    .line 59
    iget-object v1, v0, Lio/appmetrica/analytics/impl/R2;->b:Lio/appmetrica/analytics/impl/Gh;

    .line 60
    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Z3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 64
    .line 65
    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/zl;->g()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {v1, p2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-virtual {v0, p1, p3}, Lio/appmetrica/analytics/impl/tc;->a(Lio/appmetrica/analytics/AppMetricaConfig;Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/tc;->k()V

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Lio/appmetrica/analytics/impl/ki;->c:Lio/appmetrica/analytics/impl/wi;

    .line 83
    .line 84
    new-instance p3, Lio/appmetrica/analytics/impl/ji;

    .line 85
    .line 86
    invoke-direct {p3, v0}, Lio/appmetrica/analytics/impl/ji;-><init>(Lio/appmetrica/analytics/impl/tc;)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p2, Lio/appmetrica/analytics/impl/wi;->f:Lio/appmetrica/analytics/impl/Uj;

    .line 90
    .line 91
    iput-object p3, p2, Lio/appmetrica/analytics/impl/Uj;->c:Lio/appmetrica/analytics/impl/Lk;

    .line 92
    .line 93
    iget-object p2, p0, Lio/appmetrica/analytics/impl/ki;->g:Ljava/util/LinkedHashMap;

    .line 94
    .line 95
    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    .line 96
    .line 97
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lio/appmetrica/analytics/impl/ki;->j:Lio/appmetrica/analytics/impl/tc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    :goto_1
    monitor-exit p0

    .line 110
    return-object v0

    .line 111
    :catchall_0
    move-exception p1

    .line 112
    monitor-exit p0

    .line 113
    throw p1
.end method
