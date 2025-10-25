.class public final Lio/appmetrica/analytics/impl/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ma;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lio/appmetrica/analytics/impl/I;

.field public final g:Lio/appmetrica/analytics/impl/I;

.field public final h:Lio/appmetrica/analytics/impl/I;

.field public i:Ljava/util/concurrent/FutureTask;

.field public final j:Lio/appmetrica/analytics/impl/E;

.field public volatile k:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

.field public l:Lio/appmetrica/analytics/impl/B;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/impl/Ql;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/O;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/O;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    .line 7
    .line 8
    const-string p1, "advertising identifiers collecting is forbidden by client configuration"

    .line 9
    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/O;->c:Ljava/lang/String;

    .line 11
    .line 12
    const-string p1, "advertising identifiers collecting is forbidden by startup"

    .line 13
    .line 14
    iput-object p1, p0, Lio/appmetrica/analytics/impl/O;->d:Ljava/lang/String;

    .line 15
    .line 16
    const-string p1, "advertising identifiers collecting is forbidden by unknown reason"

    .line 17
    .line 18
    iput-object p1, p0, Lio/appmetrica/analytics/impl/O;->e:Ljava/lang/String;

    .line 19
    .line 20
    new-instance p1, Lio/appmetrica/analytics/impl/I;

    .line 21
    .line 22
    new-instance p2, Lio/appmetrica/analytics/impl/xg;

    .line 23
    .line 24
    const-string v0, "google"

    .line 25
    .line 26
    invoke-direct {p2, v0}, Lio/appmetrica/analytics/impl/xg;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/I;-><init>(Lio/appmetrica/analytics/impl/F;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lio/appmetrica/analytics/impl/O;->f:Lio/appmetrica/analytics/impl/I;

    .line 33
    .line 34
    new-instance p1, Lio/appmetrica/analytics/impl/I;

    .line 35
    .line 36
    new-instance p2, Lio/appmetrica/analytics/impl/xg;

    .line 37
    .line 38
    const-string v0, "huawei"

    .line 39
    .line 40
    invoke-direct {p2, v0}, Lio/appmetrica/analytics/impl/xg;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/I;-><init>(Lio/appmetrica/analytics/impl/F;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lio/appmetrica/analytics/impl/O;->g:Lio/appmetrica/analytics/impl/I;

    .line 47
    .line 48
    new-instance p1, Lio/appmetrica/analytics/impl/I;

    .line 49
    .line 50
    new-instance p2, Lio/appmetrica/analytics/impl/xg;

    .line 51
    .line 52
    const-string v0, "yandex"

    .line 53
    .line 54
    invoke-direct {p2, v0}, Lio/appmetrica/analytics/impl/xg;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/I;-><init>(Lio/appmetrica/analytics/impl/F;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lio/appmetrica/analytics/impl/O;->h:Lio/appmetrica/analytics/impl/I;

    .line 61
    .line 62
    new-instance p1, Lio/appmetrica/analytics/impl/E;

    .line 63
    .line 64
    invoke-direct {p1, p3}, Lio/appmetrica/analytics/impl/E;-><init>(Lio/appmetrica/analytics/impl/Ql;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lio/appmetrica/analytics/impl/O;->j:Lio/appmetrica/analytics/impl/E;

    .line 68
    .line 69
    new-instance p1, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    .line 70
    .line 71
    invoke-direct {p1}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lio/appmetrica/analytics/impl/O;->k:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    .line 75
    .line 76
    new-instance p1, Lio/appmetrica/analytics/impl/B;

    .line 77
    .line 78
    const/4 p2, 0x4

    .line 79
    invoke-direct {p1, p2, p2, p2}, Lio/appmetrica/analytics/impl/B;-><init>(III)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lio/appmetrica/analytics/impl/O;->l:Lio/appmetrica/analytics/impl/B;

    .line 83
    .line 84
    return-void
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/impl/O;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/O;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final a(ZLio/appmetrica/analytics/impl/B;Lio/appmetrica/analytics/impl/O;Lio/appmetrica/analytics/impl/Fi;)Ljava/lang/Void;
    .locals 7

    if-nez p0, :cond_0

    .line 12
    iget-object p0, p2, Lio/appmetrica/analytics/impl/O;->l:Lio/appmetrica/analytics/impl/B;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 13
    :cond_0
    iget-object p0, p2, Lio/appmetrica/analytics/impl/O;->k:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    .line 14
    new-instance v0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    .line 15
    iget v1, p1, Lio/appmetrica/analytics/impl/B;->a:I

    .line 16
    new-instance v2, Lio/appmetrica/analytics/impl/L;

    invoke-direct {v2, p2}, Lio/appmetrica/analytics/impl/L;-><init>(Lio/appmetrica/analytics/impl/O;)V

    invoke-virtual {p2, v1, v2}, Lio/appmetrica/analytics/impl/O;->a(ILid/a;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getGoogle()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v2

    .line 18
    iget-object v3, v1, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mStatus:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    sget-object v4, Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;->UNKNOWN:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    if-ne v3, v4, :cond_1

    .line 19
    new-instance v5, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 20
    iget-object v2, v2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    .line 21
    iget-object v1, v1, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mErrorExplanation:Ljava/lang/String;

    .line 22
    invoke-direct {v5, v2, v3, v1}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    move-object v1, v5

    .line 23
    :cond_1
    iget v2, p1, Lio/appmetrica/analytics/impl/B;->b:I

    .line 24
    new-instance v3, Lio/appmetrica/analytics/impl/M;

    invoke-direct {v3, p2}, Lio/appmetrica/analytics/impl/M;-><init>(Lio/appmetrica/analytics/impl/O;)V

    invoke-virtual {p2, v2, v3}, Lio/appmetrica/analytics/impl/O;->a(ILid/a;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v2

    .line 25
    invoke-virtual {p0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getHuawei()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v3

    .line 26
    iget-object v5, v2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mStatus:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    if-ne v5, v4, :cond_2

    .line 27
    new-instance v6, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 28
    iget-object v3, v3, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    .line 29
    iget-object v2, v2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mErrorExplanation:Ljava/lang/String;

    .line 30
    invoke-direct {v6, v3, v5, v2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    move-object v2, v6

    .line 31
    :cond_2
    iget p1, p1, Lio/appmetrica/analytics/impl/B;->c:I

    .line 32
    new-instance v3, Lio/appmetrica/analytics/impl/N;

    invoke-direct {v3, p2, p3}, Lio/appmetrica/analytics/impl/N;-><init>(Lio/appmetrica/analytics/impl/O;Lio/appmetrica/analytics/impl/Fi;)V

    invoke-virtual {p2, p1, v3}, Lio/appmetrica/analytics/impl/O;->a(ILid/a;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object p1

    .line 33
    invoke-virtual {p0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object p0

    .line 34
    iget-object p3, p1, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mStatus:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    if-ne p3, v4, :cond_3

    .line 35
    new-instance v3, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 36
    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    .line 37
    iget-object p1, p1, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mErrorExplanation:Ljava/lang/String;

    .line 38
    invoke-direct {v3, p0, p3, p1}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    move-object p1, v3

    .line 39
    :cond_3
    invoke-direct {v0, v1, v2, p1}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;)V

    iput-object v0, p2, Lio/appmetrica/analytics/impl/O;->k:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic b(Lio/appmetrica/analytics/impl/O;)Lio/appmetrica/analytics/impl/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/O;->f:Lio/appmetrica/analytics/impl/I;

    return-object p0
.end method

.method public static final synthetic c(Lio/appmetrica/analytics/impl/O;)Lio/appmetrica/analytics/impl/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/O;->g:Lio/appmetrica/analytics/impl/I;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lio/appmetrica/analytics/impl/O;)Lio/appmetrica/analytics/impl/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/O;->h:Lio/appmetrica/analytics/impl/I;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final e(Lio/appmetrica/analytics/impl/O;)Ljava/lang/Void;
    .locals 6

    .line 1
    new-instance v0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    .line 2
    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/O;->l:Lio/appmetrica/analytics/impl/B;

    .line 4
    .line 5
    iget v1, v1, Lio/appmetrica/analytics/impl/B;->a:I

    .line 6
    .line 7
    new-instance v2, Lio/appmetrica/analytics/impl/L;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lio/appmetrica/analytics/impl/L;-><init>(Lio/appmetrica/analytics/impl/O;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1, v2}, Lio/appmetrica/analytics/impl/O;->a(ILid/a;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lio/appmetrica/analytics/impl/O;->l:Lio/appmetrica/analytics/impl/B;

    .line 17
    .line 18
    iget v2, v2, Lio/appmetrica/analytics/impl/B;->b:I

    .line 19
    .line 20
    new-instance v3, Lio/appmetrica/analytics/impl/M;

    .line 21
    .line 22
    invoke-direct {v3, p0}, Lio/appmetrica/analytics/impl/M;-><init>(Lio/appmetrica/analytics/impl/O;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2, v3}, Lio/appmetrica/analytics/impl/O;->a(ILid/a;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lio/appmetrica/analytics/impl/O;->l:Lio/appmetrica/analytics/impl/B;

    .line 30
    .line 31
    iget v3, v3, Lio/appmetrica/analytics/impl/B;->c:I

    .line 32
    .line 33
    new-instance v4, Lio/appmetrica/analytics/impl/Wd;

    .line 34
    .line 35
    invoke-direct {v4}, Lio/appmetrica/analytics/impl/Wd;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v5, Lio/appmetrica/analytics/impl/N;

    .line 39
    .line 40
    invoke-direct {v5, p0, v4}, Lio/appmetrica/analytics/impl/N;-><init>(Lio/appmetrica/analytics/impl/O;Lio/appmetrica/analytics/impl/Fi;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v3, v5}, Lio/appmetrica/analytics/impl/O;->a(ILid/a;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lio/appmetrica/analytics/impl/O;->k:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method


# virtual methods
.method public final a(ILid/a;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 40
    new-instance p1, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 41
    sget-object p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;->UNKNOWN:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    .line 42
    iget-object v1, p0, Lio/appmetrica/analytics/impl/O;->e:Ljava/lang/String;

    .line 43
    invoke-direct {p1, v0, p2, v1}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Lxc/i;

    invoke-direct {p1}, Lxc/i;-><init>()V

    throw p1

    .line 45
    :cond_1
    new-instance p1, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 46
    sget-object p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;->FEATURE_DISABLED:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    .line 47
    iget-object v1, p0, Lio/appmetrica/analytics/impl/O;->d:Ljava/lang/String;

    .line 48
    invoke-direct {p1, v0, p2, v1}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_2
    new-instance p1, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 50
    sget-object p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;->FORBIDDEN_BY_CLIENT_CONFIG:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    .line 51
    iget-object v1, p0, Lio/appmetrica/analytics/impl/O;->c:Ljava/lang/String;

    .line 52
    invoke-direct {p1, v0, p2, v1}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_3
    invoke-interface {p2}, Lid/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    :goto_0
    return-object p1

    .line 54
    :cond_4
    throw v0
.end method

.method public final declared-synchronized a()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/impl/Wd;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Wd;-><init>()V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/O;->a(Lio/appmetrica/analytics/impl/Fi;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/Fi;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/O;->a(Lio/appmetrica/analytics/impl/Fi;Z)Ljava/util/concurrent/FutureTask;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :catch_0
    :try_start_2
    iget-object p1, p0, Lio/appmetrica/analytics/impl/O;->k:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Fi;Z)Ljava/util/concurrent/FutureTask;
    .locals 3

    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O;->j:Lio/appmetrica/analytics/impl/E;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/E;->a()Lio/appmetrica/analytics/impl/B;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lio/appmetrica/analytics/impl/ep;

    invoke-direct {v2, p2, v0, p0, p1}, Lio/appmetrica/analytics/impl/ep;-><init>(ZLio/appmetrica/analytics/impl/B;Lio/appmetrica/analytics/impl/O;Lio/appmetrica/analytics/impl/Fi;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/O;->i:Ljava/util/concurrent/FutureTask;

    .line 10
    iget-object p1, p0, Lio/appmetrica/analytics/impl/O;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    invoke-interface {p1, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 11
    iget-object p1, p0, Lio/appmetrica/analytics/impl/O;->i:Ljava/util/concurrent/FutureTask;

    if-nez p1, :cond_0

    const-string p1, "refresh"

    invoke-static {p1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/Ql;)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O;->j:Lio/appmetrica/analytics/impl/E;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/E;->a(Lio/appmetrica/analytics/impl/Ql;)V

    .line 3
    new-instance p1, Lio/appmetrica/analytics/impl/Wd;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Wd;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/O;->a(Lio/appmetrica/analytics/impl/Fi;Z)Ljava/util/concurrent/FutureTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O;->j:Lio/appmetrica/analytics/impl/E;

    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/E;->b:Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;

    .line 4
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;->update(Z)V

    .line 5
    new-instance p1, Lio/appmetrica/analytics/impl/Wd;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Wd;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/O;->a(Lio/appmetrica/analytics/impl/Fi;Z)Ljava/util/concurrent/FutureTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getIdentifiers()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O;->i:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_0

    const-string v0, "refresh"

    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :catch_0
    :try_start_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O;->k:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getIdentifiers(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/O;->getIdentifiers()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized init()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O;->i:Ljava/util/concurrent/FutureTask;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O;->j:Lio/appmetrica/analytics/impl/E;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/E;->a()Lio/appmetrica/analytics/impl/B;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lio/appmetrica/analytics/impl/O;->l:Lio/appmetrica/analytics/impl/B;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/FutureTask;

    .line 15
    .line 16
    new-instance v1, Lio/appmetrica/analytics/impl/dp;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/dp;-><init>(Lio/appmetrica/analytics/impl/O;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lio/appmetrica/analytics/impl/O;->i:Ljava/util/concurrent/FutureTask;

    .line 25
    .line 26
    iget-object v1, p0, Lio/appmetrica/analytics/impl/O;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    .line 27
    .line 28
    invoke-interface {v1, v0}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :cond_0
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    monitor-exit p0

    .line 35
    throw v0
.end method
