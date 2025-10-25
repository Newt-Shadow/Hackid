.class public final Lio/appmetrica/analytics/impl/Hl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:Ljava/util/HashMap;

.field public final c:Lio/appmetrica/analytics/impl/El;

.field public d:Ljava/util/List;

.field public e:Ljava/util/HashMap;

.field public f:J

.field public g:Z

.field public h:J

.field public final i:Lio/appmetrica/analytics/impl/Te;

.field public final j:Lio/appmetrica/analytics/impl/K;

.field public final k:Lio/appmetrica/analytics/impl/U3;

.field public final l:Lio/appmetrica/analytics/impl/I6;

.field public final m:Lio/appmetrica/analytics/impl/fa;

.field public final n:Lio/appmetrica/analytics/impl/ea;

.field public final o:Lio/appmetrica/analytics/impl/Vn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Te;)V
    .locals 9

    .line 1
    new-instance v2, Lio/appmetrica/analytics/impl/K;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/K;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/impl/U3;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/U3;-><init>()V

    .line 2
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/t4;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/Bd;

    move-result-object v4

    new-instance v5, Lio/appmetrica/analytics/impl/I6;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/I6;-><init>()V

    new-instance v6, Lio/appmetrica/analytics/impl/fa;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/fa;-><init>()V

    new-instance v7, Lio/appmetrica/analytics/impl/ea;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/ea;-><init>()V

    new-instance v8, Lio/appmetrica/analytics/impl/Vn;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/Vn;-><init>()V

    move-object v0, p0

    move-object v1, p2

    .line 3
    invoke-direct/range {v0 .. v8}, Lio/appmetrica/analytics/impl/Hl;-><init>(Lio/appmetrica/analytics/impl/Te;Lio/appmetrica/analytics/impl/K;Lio/appmetrica/analytics/impl/U3;Lio/appmetrica/analytics/impl/Bd;Lio/appmetrica/analytics/impl/I6;Lio/appmetrica/analytics/impl/fa;Lio/appmetrica/analytics/impl/ea;Lio/appmetrica/analytics/impl/Vn;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Te;Lio/appmetrica/analytics/impl/K;Lio/appmetrica/analytics/impl/U3;Lio/appmetrica/analytics/impl/Bd;Lio/appmetrica/analytics/impl/I6;Lio/appmetrica/analytics/impl/fa;Lio/appmetrica/analytics/impl/ea;Lio/appmetrica/analytics/impl/Vn;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Hl;->a:Ljava/util/HashSet;

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    .line 7
    new-instance v1, Lio/appmetrica/analytics/impl/El;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/El;-><init>()V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/Hl;->c:Lio/appmetrica/analytics/impl/El;

    const-string v1, "appmetrica_google_adv_id"

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "appmetrica_huawei_oaid"

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "appmetrica_yandex_adv_id"

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->i:Lio/appmetrica/analytics/impl/Te;

    .line 12
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Hl;->j:Lio/appmetrica/analytics/impl/K;

    .line 13
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Hl;->k:Lio/appmetrica/analytics/impl/U3;

    .line 14
    iput-object p5, p0, Lio/appmetrica/analytics/impl/Hl;->l:Lio/appmetrica/analytics/impl/I6;

    .line 15
    iput-object p6, p0, Lio/appmetrica/analytics/impl/Hl;->m:Lio/appmetrica/analytics/impl/fa;

    .line 16
    iput-object p7, p0, Lio/appmetrica/analytics/impl/Hl;->n:Lio/appmetrica/analytics/impl/ea;

    .line 17
    iput-object p8, p0, Lio/appmetrica/analytics/impl/Hl;->o:Lio/appmetrica/analytics/impl/Vn;

    .line 18
    invoke-virtual {p4}, Lio/appmetrica/analytics/impl/Bd;->a()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/Hl;->c(Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    .line 19
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Te;->j()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    const-string p3, "appmetrica_device_id"

    invoke-virtual {p0, p3, p2}, Lio/appmetrica/analytics/impl/Hl;->a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    .line 20
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Te;->i()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    const-string p3, "appmetrica_device_id_hash"

    invoke-virtual {p0, p3, p2}, Lio/appmetrica/analytics/impl/Hl;->a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    .line 21
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Te;->d()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    const-string p3, "appmetrica_get_ad_url"

    invoke-virtual {p0, p3, p2}, Lio/appmetrica/analytics/impl/Hl;->a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    .line 22
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Te;->e()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    const-string p3, "appmetrica_report_ad_url"

    invoke-virtual {p0, p3, p2}, Lio/appmetrica/analytics/impl/Hl;->a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    .line 23
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Te;->o()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/Hl;->b(Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    .line 24
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Te;->l()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lio/appmetrica/analytics/impl/Hl;->a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    .line 25
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Te;->m()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Lio/appmetrica/analytics/impl/Hl;->a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    .line 26
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Te;->r()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Lio/appmetrica/analytics/impl/Hl;->a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    .line 27
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Te;->h()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object p2

    invoke-virtual {p5, p2}, Lio/appmetrica/analytics/impl/I6;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)V

    .line 28
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Te;->k()Lio/appmetrica/analytics/impl/ha;

    move-result-object p2

    invoke-virtual {p6, p2}, Lio/appmetrica/analytics/impl/fa;->a(Lio/appmetrica/analytics/impl/ha;)V

    .line 29
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Te;->g()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Hl;->d:Ljava/util/List;

    const/4 p2, 0x0

    .line 30
    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/impl/Te;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p3}, Lio/appmetrica/analytics/impl/rm;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Hl;->e:Ljava/util/HashMap;

    const/4 p2, 0x1

    .line 32
    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/impl/Te;->a(Z)Z

    move-result p2

    iput-boolean p2, p0, Lio/appmetrica/analytics/impl/Hl;->g:Z

    const-wide/16 p2, 0x0

    .line 33
    invoke-virtual {p1, p2, p3}, Lio/appmetrica/analytics/impl/Te;->b(J)J

    move-result-wide p2

    iput-wide p2, p0, Lio/appmetrica/analytics/impl/Hl;->f:J

    .line 34
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Te;->n()J

    move-result-wide p1

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/Hl;->h:J

    .line 35
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Hl;->c()V

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 12
    iget-object p0, p0, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lio/appmetrica/analytics/internal/IdentifiersResult;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 13
    iget-object v0, p2, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final a()Z
    .locals 3

    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v1, "appmetrica_clids"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 9
    invoke-static {v0}, Lio/appmetrica/analytics/impl/Hl;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 10
    :cond_0
    iget-object v0, v0, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hl;->e:Ljava/util/HashMap;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Map;)Z

    move-result v0

    return v0

    :cond_1
    return v2
.end method

.method public final declared-synchronized a(Ljava/util/Collection;)Z
    .locals 6

    monitor-enter p0

    .line 15
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 16
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/internal/IdentifiersResult;

    if-nez v2, :cond_1

    .line 17
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Hl;->l:Lio/appmetrica/analytics/impl/I6;

    .line 18
    iget-object v2, v2, Lio/appmetrica/analytics/impl/I6;->c:Ljava/util/Map;

    .line 19
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/internal/IdentifiersResult;

    :cond_1
    if-nez v2, :cond_5

    .line 20
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Hl;->m:Lio/appmetrica/analytics/impl/fa;

    .line 21
    iget-object v2, v2, Lio/appmetrica/analytics/impl/fa;->b:Lio/appmetrica/analytics/impl/ha;

    const-string v3, "appmetrica_lib_ssl_enabled"

    .line 22
    invoke-static {v0, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 23
    iget-object v3, v2, Lio/appmetrica/analytics/impl/ha;->a:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    .line 24
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 25
    iget-object v4, v2, Lio/appmetrica/analytics/impl/ha;->b:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    .line 26
    iget-object v2, v2, Lio/appmetrica/analytics/impl/ha;->c:Ljava/lang/String;

    .line 27
    new-instance v5, Lio/appmetrica/analytics/internal/IdentifiersResult;

    if-ne v3, v1, :cond_2

    const-string v1, "true"

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    const-string v1, "false"

    .line 28
    :goto_0
    invoke-direct {v5, v1, v4, v2}, Lio/appmetrica/analytics/internal/IdentifiersResult;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    move-object v2, v5

    goto :goto_1

    .line 29
    :cond_3
    new-instance p1, Lxc/i;

    invoke-direct {p1}, Lxc/i;-><init>()V

    throw p1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    const-string v1, "appmetrica_clids"

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 31
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/Hl;->g:Z

    if-nez v0, :cond_6

    invoke-static {v2}, Lio/appmetrica/analytics/impl/Hl;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v2, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hl;->e:Ljava/util/HashMap;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Map;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :cond_6
    monitor-exit p0

    return v3

    :cond_7
    :try_start_1
    const-string v1, "appmetrica_lib_ssl_enabled"

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_8

    if-nez v2, :cond_0

    monitor-exit p0

    return v3

    :cond_8
    if-eqz v2, :cond_9

    .line 34
    :try_start_2
    iget-object v0, v2, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    :cond_9
    monitor-exit p0

    return v3

    :cond_a
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/util/List;)Z
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lio/appmetrica/analytics/impl/Nl;->a:Ljava/util/Set;

    invoke-static {p1, v0}, Lyc/m;->T(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Hl;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    iget-object v4, p0, Lio/appmetrica/analytics/impl/Hl;->a:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v3

    .line 5
    :goto_0
    iget-wide v4, p0, Lio/appmetrica/analytics/impl/Hl;->h:J

    .line 6
    sget-object v2, Lio/appmetrica/analytics/impl/Nl;->b:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {v2}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeSeconds()J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-lez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-nez v0, :cond_4

    if-nez p1, :cond_4

    if-nez v2, :cond_4

    .line 7
    iget-boolean p1, p0, Lio/appmetrica/analytics/impl/Hl;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :cond_4
    :goto_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Lio/appmetrica/analytics/internal/IdentifiersResult;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Hl;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v1, "appmetrica_clids"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final declared-synchronized b()Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "appmetrica_clids"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "appmetrica_device_id_hash"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "appmetrica_device_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "appmetrica_get_ad_url"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "appmetrica_report_ad_url"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "appmetrica_uuid"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Hl;->a(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 3

    .line 3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hl;->i:Lio/appmetrica/analytics/impl/Te;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v2, "appmetrica_uuid"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Te;->i(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/Te;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v2, "appmetrica_device_id"

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Te;->e(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/Te;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v2, "appmetrica_device_id_hash"

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Te;->d(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/Te;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v2, "appmetrica_get_ad_url"

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Te;->a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/Te;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v2, "appmetrica_report_ad_url"

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Te;->b(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/Te;

    move-result-object v0

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/Hl;->f:J

    .line 8
    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/Te;->e(J)Lio/appmetrica/analytics/impl/Te;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v2, "appmetrica_clids"

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Te;->h(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/Te;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Hl;->e:Ljava/util/HashMap;

    .line 10
    invoke-static {v1}, Lio/appmetrica/analytics/impl/rm;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Te;->j(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Te;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v2, "appmetrica_google_adv_id"

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Te;->f(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/Te;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v2, "appmetrica_huawei_oaid"

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Te;->g(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/Te;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v2, "appmetrica_yandex_adv_id"

    .line 13
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Te;->j(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/Te;

    move-result-object v0

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/Hl;->g:Z

    .line 14
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Te;->b(Z)Lio/appmetrica/analytics/impl/Te;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Hl;->l:Lio/appmetrica/analytics/impl/I6;

    .line 15
    iget-object v1, v1, Lio/appmetrica/analytics/impl/I6;->d:Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 16
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Te;->c(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/impl/Te;

    move-result-object v0

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/Hl;->h:J

    .line 17
    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/Te;->d(J)Lio/appmetrica/analytics/impl/Te;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Hl;->m:Lio/appmetrica/analytics/impl/fa;

    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v2, v1, Lio/appmetrica/analytics/impl/fa;->b:Lio/appmetrica/analytics/impl/ha;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 20
    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/Te;->a(Lio/appmetrica/analytics/impl/ha;)Lio/appmetrica/analytics/impl/Te;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ve;->b()V

    return-void

    :catchall_0
    move-exception v0

    .line 22
    monitor-exit v1

    throw v0
.end method

.method public final c(Lio/appmetrica/analytics/internal/IdentifiersResult;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hl;->o:Lio/appmetrica/analytics/impl/Vn;

    iget-object v1, p1, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/Vn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/util/HashMap;

    const-string v1, "appmetrica_uuid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
