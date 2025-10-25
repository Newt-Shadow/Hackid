.class public final Lio/appmetrica/analytics/impl/wi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/W4;

.field public final b:Lio/appmetrica/analytics/impl/yn;

.field public final c:Lio/appmetrica/analytics/impl/xi;

.field public final d:Lio/appmetrica/analytics/impl/h0;

.field public e:Lio/appmetrica/analytics/impl/Al;

.field public final f:Lio/appmetrica/analytics/impl/Uj;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/h0;Lio/appmetrica/analytics/impl/yn;Lio/appmetrica/analytics/impl/W4;Lio/appmetrica/analytics/impl/Uj;)V
    .locals 6

    .line 1
    new-instance v5, Lio/appmetrica/analytics/impl/xi;

    invoke-direct {v5, p1, p4}, Lio/appmetrica/analytics/impl/xi;-><init>(Lio/appmetrica/analytics/impl/h0;Lio/appmetrica/analytics/impl/Uj;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/wi;-><init>(Lio/appmetrica/analytics/impl/h0;Lio/appmetrica/analytics/impl/yn;Lio/appmetrica/analytics/impl/W4;Lio/appmetrica/analytics/impl/Uj;Lio/appmetrica/analytics/impl/xi;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/h0;Lio/appmetrica/analytics/impl/yn;Lio/appmetrica/analytics/impl/W4;Lio/appmetrica/analytics/impl/Uj;Lio/appmetrica/analytics/impl/xi;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/wi;->d:Lio/appmetrica/analytics/impl/h0;

    .line 4
    iput-object p3, p0, Lio/appmetrica/analytics/impl/wi;->a:Lio/appmetrica/analytics/impl/W4;

    .line 5
    iput-object p2, p0, Lio/appmetrica/analytics/impl/wi;->b:Lio/appmetrica/analytics/impl/yn;

    .line 6
    iput-object p4, p0, Lio/appmetrica/analytics/impl/wi;->f:Lio/appmetrica/analytics/impl/Uj;

    .line 7
    iput-object p5, p0, Lio/appmetrica/analytics/impl/wi;->c:Lio/appmetrica/analytics/impl/xi;

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Gh;)Lio/appmetrica/analytics/impl/e6;
    .locals 2

    .line 46
    iget v0, p0, Lio/appmetrica/analytics/impl/e6;->d:I

    .line 47
    sget-object v1, Lio/appmetrica/analytics/impl/H9;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Gh;->d()Ljava/lang/String;

    move-result-object p1

    .line 49
    iput-object p1, p0, Lio/appmetrica/analytics/impl/e6;->c:Ljava/lang/String;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Gh;ILjava/util/Map;)V
    .locals 6

    .line 27
    sget-object v0, Lio/appmetrica/analytics/impl/nb;->c:Lio/appmetrica/analytics/impl/nb;

    .line 28
    iget-object v0, p0, Lio/appmetrica/analytics/impl/wi;->d:Lio/appmetrica/analytics/impl/h0;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/h0;->b()V

    .line 29
    invoke-static {p4}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-static {p4}, Lio/appmetrica/analytics/impl/sb;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lio/appmetrica/analytics/impl/e6;->setValue(Ljava/lang/String;)V

    .line 31
    invoke-static {p1, p2}, Lio/appmetrica/analytics/impl/wi;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Gh;)Lio/appmetrica/analytics/impl/e6;

    :cond_0
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 32
    new-instance p4, Lio/appmetrica/analytics/impl/wh;

    .line 33
    new-instance v5, Lio/appmetrica/analytics/impl/Gh;

    .line 34
    new-instance v0, Lio/appmetrica/analytics/impl/yf;

    .line 35
    iget-object v1, p2, Lio/appmetrica/analytics/impl/Z3;->a:Lio/appmetrica/analytics/impl/yf;

    .line 36
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/yf;-><init>(Lio/appmetrica/analytics/impl/yf;)V

    .line 37
    new-instance v1, Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 38
    iget-object v3, p2, Lio/appmetrica/analytics/impl/Z3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 39
    invoke-direct {v1, v3}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    .line 40
    monitor-enter p2

    .line 41
    :try_start_0
    iget-object v3, p2, Lio/appmetrica/analytics/impl/Gh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    .line 42
    invoke-direct {v5, v0, v1, v3}, Lio/appmetrica/analytics/impl/Gh;-><init>(Lio/appmetrica/analytics/impl/yf;Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/lang/String;)V

    move-object v0, p4

    move-object v1, p1

    move v3, p3

    .line 43
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/wh;-><init>(Lio/appmetrica/analytics/impl/e6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/Gh;)V

    .line 44
    invoke-virtual {p0, p4}, Lio/appmetrica/analytics/impl/wi;->a(Lio/appmetrica/analytics/impl/wh;)V

    return-void

    :catchall_0
    move-exception p1

    .line 45
    monitor-exit p2

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/wh;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lio/appmetrica/analytics/impl/wh;->e:Lio/appmetrica/analytics/impl/Gh;

    .line 2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/wi;->e:Lio/appmetrica/analytics/impl/Al;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Z3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 4
    check-cast v1, Lio/appmetrica/analytics/impl/zl;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/zl;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/wi;->c:Lio/appmetrica/analytics/impl/xi;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/xi;->a(Lio/appmetrica/analytics/impl/wh;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/zl;)V
    .locals 1

    .line 7
    iput-object p1, p0, Lio/appmetrica/analytics/impl/wi;->e:Lio/appmetrica/analytics/impl/Al;

    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/wi;->a:Lio/appmetrica/analytics/impl/W4;

    .line 9
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Z3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 10
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/zl;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    .line 11
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lio/appmetrica/analytics/impl/wi;->a:Lio/appmetrica/analytics/impl/W4;

    .line 13
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Z3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setLocationTracking(Z)V

    .line 15
    :cond_0
    invoke-static {p2}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lio/appmetrica/analytics/impl/wi;->a:Lio/appmetrica/analytics/impl/W4;

    .line 17
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Z3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 18
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setDataSendingEnabled(Z)V

    .line 19
    :cond_1
    invoke-static {p3}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20
    iget-object p1, p0, Lio/appmetrica/analytics/impl/wi;->a:Lio/appmetrica/analytics/impl/W4;

    .line 21
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Z3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 22
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 23
    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setAdvIdentifiersTracking(Z)V

    .line 24
    :cond_2
    invoke-static {}, Lio/appmetrica/analytics/impl/e6;->a()Lio/appmetrica/analytics/impl/e6;

    move-result-object p1

    iget-object p2, p0, Lio/appmetrica/analytics/impl/wi;->a:Lio/appmetrica/analytics/impl/W4;

    .line 25
    invoke-static {p1, p2}, Lio/appmetrica/analytics/impl/wi;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Gh;)Lio/appmetrica/analytics/impl/e6;

    move-result-object p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, p1, p2, v0, p3}, Lio/appmetrica/analytics/impl/wi;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Gh;ILjava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lio/appmetrica/analytics/impl/wi;->a:Lio/appmetrica/analytics/impl/W4;

    .line 64
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Z3;->a:Lio/appmetrica/analytics/impl/yf;

    .line 65
    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/yf;->a:Landroid/content/ContentValues;

    const-string v2, "PROCESS_CFG_DISTRIBUTION_REFERRER"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 67
    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lio/appmetrica/analytics/impl/wi;->a:Lio/appmetrica/analytics/impl/W4;

    .line 59
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Z3;->a:Lio/appmetrica/analytics/impl/yf;

    .line 60
    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/yf;->a:Landroid/content/ContentValues;

    const-string v2, "PROCESS_CFG_CLIDS"

    invoke-static {p1}, Lio/appmetrica/analytics/impl/sb;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 62
    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 4

    .line 50
    iget-object v0, p0, Lio/appmetrica/analytics/impl/wi;->a:Lio/appmetrica/analytics/impl/W4;

    .line 51
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Z3;->a:Lio/appmetrica/analytics/impl/yf;

    .line 52
    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/yf;->a:Landroid/content/ContentValues;

    const-string v2, "PROCESS_CFG_CUSTOM_HOSTS"

    .line 54
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    :goto_0
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 57
    monitor-exit v0

    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/wi;->a:Lio/appmetrica/analytics/impl/W4;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Z3;->a:Lio/appmetrica/analytics/impl/yf;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/yf;->a:Landroid/content/ContentValues;

    .line 7
    .line 8
    const-string v2, "PROCESS_CFG_INSTALL_REFERRER_SOURCE"

    .line 9
    .line 10
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0

    .line 17
    throw p1
.end method
