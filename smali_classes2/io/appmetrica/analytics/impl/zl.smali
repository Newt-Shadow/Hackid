.class public final Lio/appmetrica/analytics/impl/zl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Al;


# static fields
.field public static final k:Ljava/util/Map;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lio/appmetrica/analytics/impl/wi;

.field public final c:Lio/appmetrica/analytics/impl/Hl;

.field public final d:Landroid/os/Handler;

.field public e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

.field public final f:Lio/appmetrica/analytics/impl/xl;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/WeakHashMap;

.field public i:Ljava/util/HashMap;

.field public j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/wl;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/wl;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lio/appmetrica/analytics/impl/zl;->k:Ljava/util/Map;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/wi;Lio/appmetrica/analytics/impl/Te;Landroid/os/Handler;)V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Hl;

    invoke-direct {v0, p1, p3}, Lio/appmetrica/analytics/impl/Hl;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Te;)V

    invoke-direct {p0, p2, v0, p4}, Lio/appmetrica/analytics/impl/zl;-><init>(Lio/appmetrica/analytics/impl/wi;Lio/appmetrica/analytics/impl/Hl;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/wi;Lio/appmetrica/analytics/impl/Hl;Landroid/os/Handler;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "appmetrica_uuid"

    const-string v1, "appmetrica_device_id"

    const-string v2, "appmetrica_device_id_hash"

    const-string v3, "appmetrica_get_ad_url"

    const-string v4, "appmetrica_report_ad_url"

    const-string v5, "appmetrica_clids"

    .line 3
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zl;->a:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zl;->g:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zl;->h:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/zl;->j:Z

    .line 7
    iput-object p1, p0, Lio/appmetrica/analytics/impl/zl;->b:Lio/appmetrica/analytics/impl/wi;

    .line 8
    iput-object p2, p0, Lio/appmetrica/analytics/impl/zl;->c:Lio/appmetrica/analytics/impl/Hl;

    .line 9
    iput-object p3, p0, Lio/appmetrica/analytics/impl/zl;->d:Landroid/os/Handler;

    .line 10
    new-instance p1, Lio/appmetrica/analytics/impl/xl;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/xl;-><init>(Lio/appmetrica/analytics/impl/zl;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/zl;->f:Lio/appmetrica/analytics/impl/xl;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/AdvIdentifiersResult;
    .locals 5

    .line 86
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->c:Lio/appmetrica/analytics/impl/Hl;

    .line 87
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Hl;->j:Lio/appmetrica/analytics/impl/K;

    .line 88
    iget-object v2, v0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v3, "appmetrica_google_adv_id"

    .line 89
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/internal/IdentifiersResult;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v4, "appmetrica_huawei_oaid"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/internal/IdentifiersResult;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v4, "appmetrica_yandex_adv_id"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 90
    new-instance v4, Lio/appmetrica/analytics/AdvIdentifiersResult;

    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    invoke-static {v2}, Lio/appmetrica/analytics/impl/K;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;

    move-result-object v1

    .line 93
    invoke-static {v3}, Lio/appmetrica/analytics/impl/K;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;

    move-result-object v2

    .line 94
    invoke-static {v0}, Lio/appmetrica/analytics/impl/K;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;

    move-result-object v0

    invoke-direct {v4, v1, v2, v0}, Lio/appmetrica/analytics/AdvIdentifiersResult;-><init>(Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;)V

    return-object v4
.end method

.method public final a(Ljava/util/List;)Lio/appmetrica/analytics/StartupParamsCallback$Result;
    .locals 6

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    iget-object v1, p0, Lio/appmetrica/analytics/impl/zl;->c:Lio/appmetrica/analytics/impl/Hl;

    monitor-enter v1

    .line 71
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 72
    iget-object v4, v1, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/internal/IdentifiersResult;

    if-eqz v4, :cond_0

    .line 73
    iget-object v5, v1, Lio/appmetrica/analytics/impl/Hl;->c:Lio/appmetrica/analytics/impl/El;

    invoke-virtual {v5, v4}, Lio/appmetrica/analytics/impl/El;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/StartupParamsItem;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_1
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Hl;->l:Lio/appmetrica/analytics/impl/I6;

    invoke-virtual {v2, p1, v0}, Lio/appmetrica/analytics/impl/I6;->a(Ljava/util/List;Ljava/util/HashMap;)V

    .line 75
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Hl;->m:Lio/appmetrica/analytics/impl/fa;

    invoke-virtual {v2, p1, v0}, Lio/appmetrica/analytics/impl/fa;->a(Ljava/util/List;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 76
    new-instance p1, Lio/appmetrica/analytics/StartupParamsCallback$Result;

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/StartupParamsCallback$Result;-><init>(Ljava/util/Map;)V

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/zl;->b(Landroid/os/Bundle;Lio/appmetrica/analytics/StartupParamsCallback;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;Lio/appmetrica/analytics/StartupParamsCallback;)V
    .locals 4

    .line 44
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 45
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 46
    iget-object v1, p0, Lio/appmetrica/analytics/impl/zl;->c:Lio/appmetrica/analytics/impl/Hl;

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/Hl;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/zl;->a(Ljava/util/List;)Lio/appmetrica/analytics/StartupParamsCallback$Result;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/appmetrica/analytics/StartupParamsCallback;->onReceive(Lio/appmetrica/analytics/StartupParamsCallback$Result;)V

    goto :goto_2

    :cond_0
    const-string v1, "startup_error_key_code"

    .line 48
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-string v1, "startup_error_key_code"

    .line 49
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 50
    sget-object v1, Lio/appmetrica/analytics/impl/ul;->b:Lio/appmetrica/analytics/impl/ul;

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    sget-object v1, Lio/appmetrica/analytics/impl/ul;->d:Lio/appmetrica/analytics/impl/ul;

    goto :goto_0

    .line 52
    :cond_2
    sget-object v1, Lio/appmetrica/analytics/impl/ul;->c:Lio/appmetrica/analytics/impl/ul;

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_6

    .line 53
    iget-object p1, p0, Lio/appmetrica/analytics/impl/zl;->c:Lio/appmetrica/analytics/impl/Hl;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Hl;->a()Z

    move-result p1

    if-nez p1, :cond_5

    .line 54
    iget-object p1, p0, Lio/appmetrica/analytics/impl/zl;->e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    if-eqz p1, :cond_4

    .line 55
    iget-object v2, p0, Lio/appmetrica/analytics/impl/zl;->i:Ljava/util/HashMap;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Clids error. Passed clids: %s, and clids from server are empty."

    invoke-virtual {p1, v3, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :cond_4
    new-instance v2, Lio/appmetrica/analytics/StartupParamsCallback$Reason;

    const-string p1, "INCONSISTENT_CLIDS"

    invoke-direct {v2, p1}, Lio/appmetrica/analytics/StartupParamsCallback$Reason;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :cond_5
    sget-object v1, Lio/appmetrica/analytics/impl/ul;->b:Lio/appmetrica/analytics/impl/ul;

    :cond_6
    :goto_1
    if-nez v2, :cond_7

    .line 58
    sget-object p1, Lio/appmetrica/analytics/impl/zl;->k:Ljava/util/Map;

    sget-object v2, Lio/appmetrica/analytics/StartupParamsCallback$Reason;->UNKNOWN:Lio/appmetrica/analytics/StartupParamsCallback$Reason;

    invoke-static {p1, v1, v2}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/appmetrica/analytics/StartupParamsCallback$Reason;

    .line 59
    :cond_7
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/zl;->a(Ljava/util/List;)Lio/appmetrica/analytics/StartupParamsCallback$Result;

    move-result-object p1

    invoke-interface {p2, v2, p1}, Lio/appmetrica/analytics/StartupParamsCallback;->onRequestError(Lio/appmetrica/analytics/StartupParamsCallback$Reason;Lio/appmetrica/analytics/StartupParamsCallback$Result;)V

    .line 60
    :goto_2
    iget-object p1, p0, Lio/appmetrica/analytics/impl/zl;->h:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object p1, p0, Lio/appmetrica/analytics/impl/zl;->h:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 62
    iget-object p1, p0, Lio/appmetrica/analytics/impl/zl;->b:Lio/appmetrica/analytics/impl/wi;

    .line 63
    iget-object p1, p1, Lio/appmetrica/analytics/impl/wi;->d:Lio/appmetrica/analytics/impl/h0;

    .line 64
    iget-object p2, p1, Lio/appmetrica/analytics/impl/h0;->f:Ljava/lang/Object;

    .line 65
    monitor-enter p2

    const/4 v0, 0x0

    .line 66
    :try_start_0
    iput-boolean v0, p1, Lio/appmetrica/analytics/impl/h0;->c:Z

    .line 67
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/h0;->c()V

    .line 68
    monitor-exit p2

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_8
    :goto_3
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V
    .locals 3

    .line 77
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->b:Lio/appmetrica/analytics/impl/wi;

    .line 79
    iget-object v0, v0, Lio/appmetrica/analytics/impl/wi;->d:Lio/appmetrica/analytics/impl/h0;

    .line 80
    iget-object v1, v0, Lio/appmetrica/analytics/impl/h0;->f:Ljava/lang/Object;

    .line 81
    monitor-enter v1

    const/4 v2, 0x1

    .line 82
    :try_start_0
    iput-boolean v2, v0, Lio/appmetrica/analytics/impl/h0;->c:Z

    .line 83
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/h0;->b()V

    .line 84
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 85
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/StartupParamsCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/zl;->c:Lio/appmetrica/analytics/impl/Hl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {p3}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Hl;->e:Ljava/util/HashMap;

    invoke-static {p3, v2}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, v1, Lio/appmetrica/analytics/impl/Hl;->e:Ljava/util/HashMap;

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, v1, Lio/appmetrica/analytics/impl/Hl;->g:Z

    .line 6
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Hl;->c()V

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/zl;->a(Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V

    .line 8
    iget-object v1, p0, Lio/appmetrica/analytics/impl/zl;->c:Lio/appmetrica/analytics/impl/Hl;

    invoke-virtual {v1, p2}, Lio/appmetrica/analytics/impl/Hl;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    new-instance v1, Lio/appmetrica/analytics/impl/yl;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/yl;-><init>(Lio/appmetrica/analytics/impl/zl;Lio/appmetrica/analytics/StartupParamsCallback;)V

    .line 10
    invoke-virtual {p0, p2, v1, p3}, Lio/appmetrica/analytics/impl/zl;->a(Ljava/util/List;Lio/appmetrica/analytics/impl/L6;Ljava/util/Map;)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/impl/zl;->a(Landroid/os/Bundle;Lio/appmetrica/analytics/StartupParamsCallback;)V

    .line 12
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lio/appmetrica/analytics/impl/zl;->e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/zl;->b:Lio/appmetrica/analytics/impl/wi;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/wi;->a(Ljava/lang/String;)V

    .line 42
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/List;Lio/appmetrica/analytics/impl/L6;Ljava/util/Map;)V
    .locals 8

    .line 16
    new-instance v0, Lio/appmetrica/analytics/impl/M6;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zl;->d:Landroid/os/Handler;

    invoke-direct {v0, v1, p2}, Lio/appmetrica/analytics/impl/M6;-><init>(Landroid/os/Handler;Lio/appmetrica/analytics/impl/L6;)V

    .line 17
    iget-object p2, p0, Lio/appmetrica/analytics/impl/zl;->b:Lio/appmetrica/analytics/impl/wi;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 19
    new-instance v2, Lio/appmetrica/analytics/impl/jb;

    invoke-direct {v2, v0, p1, p3}, Lio/appmetrica/analytics/impl/jb;-><init>(Lio/appmetrica/analytics/impl/M6;Ljava/util/List;Ljava/util/Map;)V

    const-string p1, "io.appmetrica.analytics.impl.IdentifiersData"

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 20
    sget-object p1, Lio/appmetrica/analytics/impl/nb;->c:Lio/appmetrica/analytics/impl/nb;

    .line 21
    invoke-static {}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v7

    .line 22
    sget-object p1, Lio/appmetrica/analytics/impl/H9;->a:Ljava/util/Set;

    .line 23
    new-instance p1, Lio/appmetrica/analytics/impl/e4;

    const-string v4, ""

    const/16 v5, 0x600

    const-string v3, ""

    const/4 v6, 0x0

    move-object v2, p1

    .line 24
    invoke-direct/range {v2 .. v7}, Lio/appmetrica/analytics/impl/e4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 25
    iput-object v1, p1, Lio/appmetrica/analytics/impl/e6;->m:Landroid/os/Bundle;

    .line 26
    iget-object p3, p2, Lio/appmetrica/analytics/impl/wi;->a:Lio/appmetrica/analytics/impl/W4;

    .line 27
    invoke-static {p1, p3}, Lio/appmetrica/analytics/impl/wi;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Gh;)Lio/appmetrica/analytics/impl/e6;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 28
    invoke-virtual {p2, p1, p3, v1, v0}, Lio/appmetrica/analytics/impl/wi;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Gh;ILjava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    invoke-static {p1}, Lio/appmetrica/analytics/impl/rm;->b(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    .line 32
    iput-object p1, p0, Lio/appmetrica/analytics/impl/zl;->i:Ljava/util/HashMap;

    .line 33
    iget-object v1, p0, Lio/appmetrica/analytics/impl/zl;->b:Lio/appmetrica/analytics/impl/wi;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/wi;->a(Ljava/util/HashMap;)V

    .line 34
    iget-object v1, p0, Lio/appmetrica/analytics/impl/zl;->c:Lio/appmetrica/analytics/impl/Hl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Hl;->e:Ljava/util/HashMap;

    invoke-static {p1, v2}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, v1, Lio/appmetrica/analytics/impl/Hl;->e:Ljava/util/HashMap;

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, v1, Lio/appmetrica/analytics/impl/Hl;->g:Z

    .line 38
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Hl;->c()V

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->c:Lio/appmetrica/analytics/impl/Hl;

    const-string v1, "appmetrica_clids"

    .line 77
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/internal/IdentifiersResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, v0, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    .line 79
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-static {v0}, Lio/appmetrica/analytics/impl/sb;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_1

    .line 81
    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->i:Ljava/util/HashMap;

    :goto_1
    return-object v0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "Uuid"

    .line 1
    invoke-static {v0, v1}, Lio/appmetrica/analytics/impl/k4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v1

    const-string v2, "DeviceId"

    .line 2
    invoke-static {v0, v2}, Lio/appmetrica/analytics/impl/k4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v2

    const-string v3, "DeviceIdHash"

    .line 3
    invoke-static {v0, v3}, Lio/appmetrica/analytics/impl/k4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v3

    const-string v4, "AdUrlReport"

    .line 4
    invoke-static {v0, v4}, Lio/appmetrica/analytics/impl/k4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v4

    const-string v5, "AdUrlGet"

    .line 5
    invoke-static {v0, v5}, Lio/appmetrica/analytics/impl/k4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v5

    const-string v6, "Clids"

    .line 6
    invoke-static {v0, v6}, Lio/appmetrica/analytics/impl/k4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v6

    const-string v7, "RequestClids"

    .line 7
    invoke-static {v0, v7}, Lio/appmetrica/analytics/impl/k4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v7

    const-string v8, "GAID"

    .line 8
    invoke-static {v0, v8}, Lio/appmetrica/analytics/impl/k4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v8

    const-string v9, "HOAID"

    .line 9
    invoke-static {v0, v9}, Lio/appmetrica/analytics/impl/k4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v9

    const-string v10, "YANDEX_ADV_ID"

    .line 10
    invoke-static {v0, v10}, Lio/appmetrica/analytics/impl/k4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v10

    const-string v11, "CUSTOM_SDK_HOSTS"

    .line 11
    invoke-static {v0, v11}, Lio/appmetrica/analytics/impl/k4;->a(Landroid/os/Bundle;Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v11

    const-string v12, "ServerTimeOffset"

    .line 12
    invoke-virtual {v0, v12}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v14, "NextStartupTime"

    .line 13
    invoke-virtual {v0, v14}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    move-wide/from16 v16, v14

    .line 14
    invoke-static/range {p1 .. p1}, Lio/appmetrica/analytics/impl/k4;->a(Landroid/os/Bundle;)Lio/appmetrica/analytics/impl/ha;

    move-result-object v14

    const-string v15, "module_configs"

    .line 15
    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object/from16 v15, p0

    move-object/from16 v18, v6

    .line 16
    iget-object v6, v15, Lio/appmetrica/analytics/impl/zl;->c:Lio/appmetrica/analytics/impl/Hl;

    monitor-enter v6

    .line 17
    :try_start_0
    iget-object v15, v6, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    move-object/from16 p1, v0

    const-string v0, "appmetrica_uuid"

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/internal/IdentifiersResult;

    if-eqz v0, :cond_0

    .line 18
    iget-object v15, v6, Lio/appmetrica/analytics/impl/Hl;->o:Lio/appmetrica/analytics/impl/Vn;

    iget-object v0, v0, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Vn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v6, v1}, Lio/appmetrica/analytics/impl/Hl;->c(Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    :goto_0
    const-string v0, "appmetrica_device_id"

    .line 20
    invoke-virtual {v6, v0, v2}, Lio/appmetrica/analytics/impl/Hl;->a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    const-string v0, "appmetrica_device_id_hash"

    .line 21
    invoke-virtual {v6, v0, v3}, Lio/appmetrica/analytics/impl/Hl;->a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    .line 22
    iget-object v0, v6, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v15, "appmetrica_google_adv_id"

    invoke-virtual {v0, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, v6, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v8, "appmetrica_huawei_oaid"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, v6, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v8, "appmetrica_yandex_adv_id"

    invoke-virtual {v0, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, v6, Lio/appmetrica/analytics/impl/Hl;->l:Lio/appmetrica/analytics/impl/I6;

    invoke-virtual {v0, v11}, Lio/appmetrica/analytics/impl/I6;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    .line 26
    iget-object v0, v6, Lio/appmetrica/analytics/impl/Hl;->m:Lio/appmetrica/analytics/impl/fa;

    invoke-virtual {v0, v14}, Lio/appmetrica/analytics/impl/fa;->a(Lio/appmetrica/analytics/impl/ha;)V

    .line 27
    invoke-static {v5}, Lio/appmetrica/analytics/impl/Hl;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    iget-object v0, v6, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v8, "appmetrica_get_ad_url"

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_1
    invoke-static {v4}, Lio/appmetrica/analytics/impl/Hl;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 30
    iget-object v0, v6, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v5, "appmetrica_report_ad_url"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_2
    iput-wide v12, v6, Lio/appmetrica/analytics/impl/Hl;->f:J

    .line 32
    iget-object v0, v6, Lio/appmetrica/analytics/impl/Hl;->k:Lio/appmetrica/analytics/impl/U3;

    iget-object v4, v6, Lio/appmetrica/analytics/impl/Hl;->e:Ljava/util/HashMap;

    .line 33
    iget-object v5, v7, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    invoke-static {v5}, Lio/appmetrica/analytics/impl/sb;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-static {v4}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    invoke-static {v5}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Map;)Z

    move-result v0

    goto :goto_1

    .line 37
    :cond_3
    invoke-interface {v4, v5}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    .line 38
    iget-object v0, v6, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v4, "appmetrica_clids"

    move-object/from16 v5, v18

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, v6, Lio/appmetrica/analytics/impl/Hl;->g:Z

    :cond_4
    move-wide/from16 v4, v16

    .line 40
    iput-wide v4, v6, Lio/appmetrica/analytics/impl/Hl;->h:J

    .line 41
    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/Hl;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 42
    new-instance v0, Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;

    .line 43
    iget-object v1, v1, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    .line 44
    iget-object v2, v2, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    .line 45
    iget-object v3, v3, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/t4;->l()Lio/appmetrica/analytics/impl/q4;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Lio/appmetrica/analytics/impl/q4;->a(Landroid/os/Bundle;Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;)V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lio/appmetrica/analytics/impl/zl;->h()V

    return-void

    :catchall_0
    move-exception v0

    .line 48
    monitor-exit v6

    throw v0
.end method

.method public final b(Landroid/os/Bundle;Lio/appmetrica/analytics/StartupParamsCallback;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/zl;->b(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/zl;->h()V

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/zl;->a(Landroid/os/Bundle;Lio/appmetrica/analytics/StartupParamsCallback;)V

    .line 53
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/zl;->b:Lio/appmetrica/analytics/impl/wi;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/wi;->b(Ljava/lang/String;)V

    .line 74
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/zl;->c:Lio/appmetrica/analytics/impl/Hl;

    .line 57
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Hl;->d:Ljava/util/List;

    .line 58
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-static {v1}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 60
    iget-object p1, p0, Lio/appmetrica/analytics/impl/zl;->c:Lio/appmetrica/analytics/impl/Hl;

    const/4 v1, 0x0

    .line 61
    iput-object v1, p1, Lio/appmetrica/analytics/impl/Hl;->d:Ljava/util/List;

    .line 62
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Hl;->i:Lio/appmetrica/analytics/impl/Te;

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/impl/Te;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/Te;

    .line 63
    iget-object p1, p0, Lio/appmetrica/analytics/impl/zl;->b:Lio/appmetrica/analytics/impl/wi;

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/impl/wi;->a(Ljava/util/List;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {p1, v1}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    iget-object v1, p0, Lio/appmetrica/analytics/impl/zl;->c:Lio/appmetrica/analytics/impl/Hl;

    .line 66
    iput-object p1, v1, Lio/appmetrica/analytics/impl/Hl;->d:Ljava/util/List;

    .line 67
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Hl;->i:Lio/appmetrica/analytics/impl/Te;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/Te;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/Te;

    .line 68
    iget-object v1, p0, Lio/appmetrica/analytics/impl/zl;->b:Lio/appmetrica/analytics/impl/wi;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/wi;->a(Ljava/util/List;)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/zl;->b:Lio/appmetrica/analytics/impl/wi;

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/impl/wi;->a(Ljava/util/List;)V

    .line 70
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()Lio/appmetrica/analytics/impl/L6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->f:Lio/appmetrica/analytics/impl/xl;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->c:Lio/appmetrica/analytics/impl/Hl;

    .line 2
    .line 3
    const-string v1, "appmetrica_device_id"

    .line 4
    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, v0, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    .line 18
    .line 19
    :goto_0
    return-object v0
.end method

.method public final e()Lio/appmetrica/analytics/impl/ja;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->c:Lio/appmetrica/analytics/impl/Hl;

    .line 2
    .line 3
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Hl;->n:Lio/appmetrica/analytics/impl/ea;

    .line 4
    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hl;->m:Lio/appmetrica/analytics/impl/fa;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v2, v0, Lio/appmetrica/analytics/impl/fa;->b:Lio/appmetrica/analytics/impl/ha;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v0, Lio/appmetrica/analytics/impl/ja;

    .line 15
    .line 16
    iget-object v1, v2, Lio/appmetrica/analytics/impl/ha;->a:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ja;-><init>()V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0

    .line 24
    throw v1
.end method

.method public final f()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->c:Lio/appmetrica/analytics/impl/Hl;

    .line 2
    .line 3
    iget-wide v0, v0, Lio/appmetrica/analytics/impl/Hl;->f:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->c:Lio/appmetrica/analytics/impl/Hl;

    .line 2
    .line 3
    const-string v1, "appmetrica_uuid"

    .line 4
    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, v0, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    .line 18
    .line 19
    :goto_0
    return-object v0
.end method

.method public final h()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/impl/zl;->h:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/util/List;

    .line 33
    .line 34
    iget-object v4, p0, Lio/appmetrica/analytics/impl/zl;->c:Lio/appmetrica/analytics/impl/Hl;

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Lio/appmetrica/analytics/impl/Hl;->a(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lio/appmetrica/analytics/StartupParamsCallback;

    .line 47
    .line 48
    invoke-virtual {v0, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Ljava/util/Map$Entry;

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lio/appmetrica/analytics/StartupParamsCallback;

    .line 77
    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    new-instance v3, Landroid/os/Bundle;

    .line 81
    .line 82
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v3, v2}, Lio/appmetrica/analytics/impl/zl;->a(Landroid/os/Bundle;Lio/appmetrica/analytics/StartupParamsCallback;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zl;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/zl;->j:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lio/appmetrica/analytics/impl/zl;->c:Lio/appmetrica/analytics/impl/Hl;

    .line 9
    .line 10
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Hl;->b()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lio/appmetrica/analytics/impl/zl;->j:Z

    .line 18
    .line 19
    iget-object v1, p0, Lio/appmetrica/analytics/impl/zl;->i:Ljava/util/HashMap;

    .line 20
    .line 21
    iget-object v2, p0, Lio/appmetrica/analytics/impl/zl;->a:Ljava/util/List;

    .line 22
    .line 23
    iget-object v3, p0, Lio/appmetrica/analytics/impl/zl;->f:Lio/appmetrica/analytics/impl/xl;

    .line 24
    .line 25
    invoke-virtual {p0, v2, v3, v1}, Lio/appmetrica/analytics/impl/zl;->a(Ljava/util/List;Lio/appmetrica/analytics/impl/L6;Ljava/util/Map;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw v1
.end method
