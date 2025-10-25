.class public final Lio/appmetrica/analytics/impl/Fc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/O8;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Og;

.field public final b:Lio/appmetrica/analytics/impl/Ue;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Og;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/Ue;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Fc;->a:Lio/appmetrica/analytics/impl/Og;

    .line 5
    .line 6
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Fc;->b:Lio/appmetrica/analytics/impl/Ue;

    .line 7
    .line 8
    const-string p1, "activation_unlock_event_sending"

    .line 9
    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Fc;->c:Ljava/lang/String;

    .line 11
    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p3, v0}, Lio/appmetrica/analytics/impl/Ue;->a(Z)Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    invoke-static {p2}, Lio/appmetrica/analytics/impl/Fc;->a(Lio/appmetrica/analytics/impl/F4;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    :cond_1
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Fc;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/F4;)Z
    .locals 1

    .line 24
    iget-object p0, p0, Lio/appmetrica/analytics/impl/F4;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "629a824d-c717-4ba5-bc0f-3f3968554d01"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 21
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fc;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fc;->b:Lio/appmetrica/analytics/impl/Ue;

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/Ue;->b(Z)V

    const-string v0, "timer"

    .line 23
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fc;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 9

    .line 1
    :try_start_0
    sget-object v0, Lio/appmetrica/analytics/impl/nj;->a:Lio/appmetrica/analytics/impl/Oj;

    .line 2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fc;->c:Ljava/lang/String;

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "source"

    .line 4
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "framework"

    .line 5
    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/services/FrameworkDetector;->framework()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "appmetrica_plugin_id"

    .line 6
    sget-object v3, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 7
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/za;->h()Lio/appmetrica/analytics/impl/Y9;

    move-result-object v3

    .line 8
    iget-object v4, v3, Lio/appmetrica/analytics/impl/Y9;->d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/Y9;->a:Landroid/content/Context;

    invoke-virtual {v4, v3}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getApplicationMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "io.appmetrica.analytics.plugin_id"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 9
    :goto_0
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "activation_offset"

    .line 10
    sget-object v3, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 11
    iget-object v3, v3, Lio/appmetrica/analytics/impl/za;->D:Lio/appmetrica/analytics/impl/fk;

    .line 12
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    iget-object v5, v3, Lio/appmetrica/analytics/impl/fk;->a:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    .line 14
    invoke-virtual {v5}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v3, Lio/appmetrica/analytics/impl/fk;->b:J

    sub-long/2addr v5, v7

    .line 15
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    invoke-virtual {v4, v5, v6, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 17
    invoke-virtual {p1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    new-instance v2, Lio/appmetrica/analytics/impl/Mj;

    invoke-direct {v2, v1, p1}, Lio/appmetrica/analytics/impl/Mj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fc;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fc;->a:Lio/appmetrica/analytics/impl/Og;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/D5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lio/appmetrica/analytics/impl/lh;

    .line 16
    .line 17
    iget-object v0, v0, Lio/appmetrica/analytics/impl/lh;->m:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v1, "629a824d-c717-4ba5-bc0f-3f3968554d01"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fc;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fc;->b:Lio/appmetrica/analytics/impl/Ue;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/Ue;->b(Z)V

    .line 42
    .line 43
    .line 44
    const-string v0, "activation"

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Fc;->a(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fc;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    return v0
.end method
