.class public final Lio/appmetrica/analytics/impl/yn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/xb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/xb;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/xb;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/yn;-><init>(Lio/appmetrica/analytics/impl/xb;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/xb;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/yn;->a:Lio/appmetrica/analytics/impl/xb;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/wn;Lio/appmetrica/analytics/impl/Gh;)Lio/appmetrica/analytics/impl/wh;
    .locals 9

    .line 1
    iget-object v0, p1, Lio/appmetrica/analytics/impl/wn;->a:Lio/appmetrica/analytics/impl/mn;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lio/appmetrica/analytics/impl/mn;->a:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    :goto_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/yn;->a:Lio/appmetrica/analytics/impl/xb;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/xb;->a(Lio/appmetrica/analytics/impl/wn;)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v1, p2, Lio/appmetrica/analytics/impl/Z3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 25
    .line 26
    invoke-virtual {v1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Lio/appmetrica/analytics/impl/H9;->a:Ljava/util/Set;

    .line 35
    .line 36
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->c:Lio/appmetrica/analytics/impl/nb;

    .line 37
    .line 38
    new-instance v4, Lio/appmetrica/analytics/impl/e4;

    .line 39
    .line 40
    const/16 v2, 0x1703

    .line 41
    .line 42
    invoke-direct {v4, p1, v0, v2, v1}, Lio/appmetrica/analytics/impl/e4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/Gh;->d()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, v4, Lio/appmetrica/analytics/impl/e6;->c:Ljava/lang/String;

    .line 50
    .line 51
    const/4 v6, 0x1

    .line 52
    iget-object v7, v4, Lio/appmetrica/analytics/impl/e4;->q:Ljava/util/HashMap;

    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    new-instance p1, Lio/appmetrica/analytics/impl/wh;

    .line 56
    .line 57
    new-instance v8, Lio/appmetrica/analytics/impl/Gh;

    .line 58
    .line 59
    new-instance v0, Lio/appmetrica/analytics/impl/yf;

    .line 60
    .line 61
    iget-object v1, p2, Lio/appmetrica/analytics/impl/Z3;->a:Lio/appmetrica/analytics/impl/yf;

    .line 62
    .line 63
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/yf;-><init>(Lio/appmetrica/analytics/impl/yf;)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 67
    .line 68
    iget-object v2, p2, Lio/appmetrica/analytics/impl/Z3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 69
    .line 70
    invoke-direct {v1, v2}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    .line 71
    .line 72
    .line 73
    monitor-enter p2

    .line 74
    :try_start_0
    iget-object v2, p2, Lio/appmetrica/analytics/impl/Gh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    monitor-exit p2

    .line 77
    invoke-direct {v8, v0, v1, v2}, Lio/appmetrica/analytics/impl/Gh;-><init>(Lio/appmetrica/analytics/impl/yf;Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    move-object v3, p1

    .line 81
    invoke-direct/range {v3 .. v8}, Lio/appmetrica/analytics/impl/wh;-><init>(Lio/appmetrica/analytics/impl/e6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/Gh;)V

    .line 82
    .line 83
    .line 84
    return-object p1

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    monitor-exit p2

    .line 87
    throw p1
.end method
