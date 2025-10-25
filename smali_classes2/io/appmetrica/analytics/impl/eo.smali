.class public final Lio/appmetrica/analytics/impl/eo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ho;

.field public final b:Lio/appmetrica/analytics/impl/ho;

.field public final c:Lio/appmetrica/analytics/impl/fo;

.field public d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/ho;Lio/appmetrica/analytics/impl/ho;Lio/appmetrica/analytics/impl/fo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/eo;->a:Lio/appmetrica/analytics/impl/ho;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/eo;->b:Lio/appmetrica/analytics/impl/ho;

    .line 7
    .line 8
    iput-object p3, p0, Lio/appmetrica/analytics/impl/eo;->c:Lio/appmetrica/analytics/impl/fo;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/ho;)Lorg/json/JSONObject;
    .locals 1

    .line 8
    :try_start_0
    invoke-interface {p0}, Lio/appmetrica/analytics/impl/ho;->a()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :catchall_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Lorg/json/JSONObject;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/eo;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/eo;->a:Lio/appmetrica/analytics/impl/ho;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/eo;->a(Lio/appmetrica/analytics/impl/ho;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/eo;->b:Lio/appmetrica/analytics/impl/ho;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/eo;->a(Lio/appmetrica/analytics/impl/ho;)Lorg/json/JSONObject;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lio/appmetrica/analytics/impl/eo;->c:Lio/appmetrica/analytics/impl/fo;

    invoke-interface {v2, v0, v1}, Lio/appmetrica/analytics/impl/fo;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/appmetrica/analytics/impl/eo;->d:Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/eo;->a(Lorg/json/JSONObject;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/eo;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    const-string v0, "fileContents"

    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lorg/json/JSONObject;)V
    .locals 1

    monitor-enter p0

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lio/appmetrica/analytics/impl/eo;->a:Lio/appmetrica/analytics/impl/ho;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    :try_start_1
    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/ho;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :catchall_0
    :try_start_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/eo;->b:Lio/appmetrica/analytics/impl/ho;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 15
    :try_start_3
    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/ho;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
