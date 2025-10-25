.class public Lcom/yandex/metrica/impl/ob/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/B0;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Xl;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/B0;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/B0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/z1;-><init>(Lcom/yandex/metrica/impl/ob/Xl;Lcom/yandex/metrica/impl/ob/B0;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Xl;Lcom/yandex/metrica/impl/ob/B0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/z1;->b:Z

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/z1;->a:Lcom/yandex/metrica/impl/ob/B0;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/z1;->b:Z

    .line 4
    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    :try_start_1
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/z1;->a:Lcom/yandex/metrica/impl/ob/B0;

    .line 11
    .line 12
    const-string v3, "metrica_service_settings.dat"

    .line 13
    .line 14
    invoke-virtual {v2, p1, v3}, Lcom/yandex/metrica/impl/ob/B0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/L0;->a(Ljava/io/File;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    new-instance v2, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p1, "delay"

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    :cond_0
    move-wide v2, v0

    .line 41
    :goto_0
    monitor-exit p0

    .line 42
    cmp-long p1, v2, v0

    .line 43
    .line 44
    if-lez p1, :cond_1

    .line 45
    .line 46
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    .line 48
    .line 49
    :catchall_1
    :cond_1
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/z1;->b:Z

    .line 51
    .line 52
    :cond_2
    return-void

    .line 53
    :catchall_2
    move-exception p1

    .line 54
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 55
    throw p1
.end method
