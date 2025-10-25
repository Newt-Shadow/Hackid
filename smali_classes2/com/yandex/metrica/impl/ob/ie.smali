.class public Lcom/yandex/metrica/impl/ob/ie;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/ee;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/PreloadInfo;Lcom/yandex/metrica/impl/ob/cm;Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/yandex/metrica/PreloadInfo;->getTrackingId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const-string p1, "Required field \"PreloadInfo.trackingId\" is empty!\nThis preload info will be skipped."

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Lcom/yandex/metrica/coreutils/logger/a;->e(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p2, Lcom/yandex/metrica/impl/ob/ee;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/yandex/metrica/PreloadInfo;->getTrackingId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Lorg/json/JSONObject;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/yandex/metrica/PreloadInfo;->getAdditionalParams()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    sget-object v5, Lcom/yandex/metrica/impl/ob/u0;->c:Lcom/yandex/metrica/impl/ob/u0;

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    move-object v0, p2

    .line 47
    move v4, p3

    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/ee;-><init>(Ljava/lang/String;Lorg/json/JSONObject;ZZLcom/yandex/metrica/impl/ob/u0;)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ie;->a:Lcom/yandex/metrica/impl/ob/ee;

    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ie;->a:Lcom/yandex/metrica/impl/ob/ee;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "preloadInfo"

    .line 6
    .line 7
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    .line 12
    const-string v3, "trackingId"

    .line 13
    .line 14
    :try_start_1
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/ee;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    const-string v3, "additionalParams"

    .line 20
    .line 21
    :try_start_2
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/ee;->b:Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    .line 25
    .line 26
    const-string v3, "wasSet"

    .line 27
    .line 28
    :try_start_3
    iget-boolean v4, v0, Lcom/yandex/metrica/impl/ob/ee;->c:Z

    .line 29
    .line 30
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    .line 32
    .line 33
    const-string v3, "autoTracking"

    .line 34
    .line 35
    :try_start_4
    iget-boolean v4, v0, Lcom/yandex/metrica/impl/ob/ee;->d:Z

    .line 36
    .line 37
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 38
    .line 39
    .line 40
    const-string v3, "source"

    .line 41
    .line 42
    :try_start_5
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ee;->e:Lcom/yandex/metrica/impl/ob/u0;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/u0;->a()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 49
    .line 50
    .line 51
    :catchall_0
    :try_start_6
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 52
    .line 53
    .line 54
    :catchall_1
    :cond_0
    return-object p1
.end method
