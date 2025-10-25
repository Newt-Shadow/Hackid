.class public final Lio/appmetrica/analytics/impl/Ec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/wi;

.field public final c:Lio/appmetrica/analytics/impl/Hd;

.field public final d:Lio/appmetrica/analytics/impl/Y9;

.field public final e:Lio/appmetrica/analytics/impl/Gh;

.field public final f:Lio/appmetrica/analytics/impl/g2;

.field public final g:Lio/appmetrica/analytics/impl/rc;

.field public final h:Lio/appmetrica/analytics/impl/p;

.field public final i:Lio/appmetrica/analytics/impl/He;

.field public final j:Lio/appmetrica/analytics/impl/xn;

.field public final k:Lio/appmetrica/analytics/impl/Cg;

.field public final l:Lio/appmetrica/analytics/impl/G6;

.field public final m:Lio/appmetrica/analytics/impl/W;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/yf;Lio/appmetrica/analytics/impl/wi;Lio/appmetrica/analytics/impl/zl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ec;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Ec;->b:Lio/appmetrica/analytics/impl/wi;

    .line 7
    .line 8
    new-instance p3, Lio/appmetrica/analytics/impl/Hd;

    .line 9
    .line 10
    invoke-direct {p3, p2}, Lio/appmetrica/analytics/impl/Hd;-><init>(Lio/appmetrica/analytics/impl/yf;)V

    .line 11
    .line 12
    .line 13
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Ec;->c:Lio/appmetrica/analytics/impl/Hd;

    .line 14
    .line 15
    new-instance p3, Lio/appmetrica/analytics/impl/Y9;

    .line 16
    .line 17
    invoke-direct {p3, p1}, Lio/appmetrica/analytics/impl/Y9;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Ec;->d:Lio/appmetrica/analytics/impl/Y9;

    .line 21
    .line 22
    new-instance p1, Lio/appmetrica/analytics/impl/Gh;

    .line 23
    .line 24
    new-instance p4, Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 25
    .line 26
    sget-object v0, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->MAIN:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    .line 27
    .line 28
    invoke-direct {p4, v0}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p2, p4}, Lio/appmetrica/analytics/impl/Gh;-><init>(Lio/appmetrica/analytics/impl/yf;Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ec;->e:Lio/appmetrica/analytics/impl/Gh;

    .line 35
    .line 36
    new-instance p1, Lio/appmetrica/analytics/impl/g2;

    .line 37
    .line 38
    invoke-direct {p1}, Lio/appmetrica/analytics/impl/g2;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ec;->f:Lio/appmetrica/analytics/impl/g2;

    .line 42
    .line 43
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/t4;->m()Lio/appmetrica/analytics/impl/rc;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ec;->g:Lio/appmetrica/analytics/impl/rc;

    .line 52
    .line 53
    new-instance p1, Lio/appmetrica/analytics/impl/p;

    .line 54
    .line 55
    invoke-direct {p1}, Lio/appmetrica/analytics/impl/p;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ec;->h:Lio/appmetrica/analytics/impl/p;

    .line 59
    .line 60
    new-instance p1, Lio/appmetrica/analytics/impl/He;

    .line 61
    .line 62
    invoke-direct {p1, p3}, Lio/appmetrica/analytics/impl/He;-><init>(Lio/appmetrica/analytics/impl/Y9;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ec;->i:Lio/appmetrica/analytics/impl/He;

    .line 66
    .line 67
    new-instance p1, Lio/appmetrica/analytics/impl/xn;

    .line 68
    .line 69
    invoke-direct {p1}, Lio/appmetrica/analytics/impl/xn;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ec;->j:Lio/appmetrica/analytics/impl/xn;

    .line 73
    .line 74
    new-instance p1, Lio/appmetrica/analytics/impl/Cg;

    .line 75
    .line 76
    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Cg;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ec;->k:Lio/appmetrica/analytics/impl/Cg;

    .line 80
    .line 81
    new-instance p1, Lio/appmetrica/analytics/impl/G6;

    .line 82
    .line 83
    invoke-direct {p1}, Lio/appmetrica/analytics/impl/G6;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ec;->l:Lio/appmetrica/analytics/impl/G6;

    .line 87
    .line 88
    new-instance p1, Lio/appmetrica/analytics/impl/W;

    .line 89
    .line 90
    invoke-direct {p1}, Lio/appmetrica/analytics/impl/W;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ec;->m:Lio/appmetrica/analytics/impl/W;

    .line 94
    .line 95
    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/W;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ec;->m:Lio/appmetrica/analytics/impl/W;

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ec;->e:Lio/appmetrica/analytics/impl/Gh;

    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Z3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 4
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->applyFromConfig(Lio/appmetrica/analytics/AppMetricaConfig;)V

    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ec;->e:Lio/appmetrica/analytics/impl/Gh;

    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->userProfileID:Ljava/lang/String;

    monitor-enter v0

    .line 6
    :try_start_0
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Gh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 7
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ec;->e:Lio/appmetrica/analytics/impl/Gh;

    new-instance v1, Lio/appmetrica/analytics/impl/sf;

    .line 8
    iget-object v2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->preloadInfo:Lio/appmetrica/analytics/PreloadInfo;

    .line 9
    iget-object v3, p1, Lio/appmetrica/analytics/AppMetricaConfig;->additionalConfig:Ljava/util/Map;

    const-string v4, "YMM_preloadInfoAutoTracking"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 10
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    .line 11
    :goto_0
    invoke-direct {v1, v2, p2, v3}, Lio/appmetrica/analytics/impl/sf;-><init>(Lio/appmetrica/analytics/PreloadInfo;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)V

    .line 12
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Gh;->d:Lio/appmetrica/analytics/impl/sf;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Actual session timeout is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    if-nez p1, :cond_1

    const/16 p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p2, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0

    throw p1
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ec;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lio/appmetrica/analytics/impl/G6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ec;->l:Lio/appmetrica/analytics/impl/G6;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lio/appmetrica/analytics/impl/Y9;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ec;->d:Lio/appmetrica/analytics/impl/Y9;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lio/appmetrica/analytics/impl/He;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ec;->i:Lio/appmetrica/analytics/impl/He;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Lio/appmetrica/analytics/impl/rc;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ec;->g:Lio/appmetrica/analytics/impl/rc;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lio/appmetrica/analytics/impl/Cg;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ec;->k:Lio/appmetrica/analytics/impl/Cg;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lio/appmetrica/analytics/impl/Gh;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ec;->e:Lio/appmetrica/analytics/impl/Gh;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Lio/appmetrica/analytics/impl/wi;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ec;->b:Lio/appmetrica/analytics/impl/wi;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lio/appmetrica/analytics/impl/xn;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ec;->j:Lio/appmetrica/analytics/impl/xn;

    .line 2
    .line 3
    return-object v0
.end method
