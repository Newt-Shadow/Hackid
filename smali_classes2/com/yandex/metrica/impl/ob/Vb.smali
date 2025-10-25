.class public Lcom/yandex/metrica/impl/ob/Vb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Vb;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;)Lcom/yandex/metrica/impl/ob/lc;
    .locals 4

    const/4 v0, 0x0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Vb;->a:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/yandex/metrica/impl/ob/Tl;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p3, v0

    :goto_0
    if-nez p3, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 27
    :try_start_1
    new-instance v1, Lcom/yandex/metrica/impl/ob/lc;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/lc;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/lc;->a(Ljava/lang/Long;)V

    .line 29
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "timestamp"

    const-wide/16 v2, 0x0

    .line 30
    invoke-virtual {p1, p2, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p2

    .line 31
    invoke-virtual {v1, p2, p3}, Lcom/yandex/metrica/impl/ob/lc;->b(J)V

    const-string p2, "elapsed_realtime_seconds"

    .line 32
    invoke-virtual {p1, p2, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p2

    .line 33
    invoke-virtual {v1, p2, p3}, Lcom/yandex/metrica/impl/ob/lc;->a(J)V

    const-string p2, "cell_info"

    .line 34
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/yandex/metrica/impl/ob/lc;->a(Lorg/json/JSONArray;)V

    const-string p2, "wifi_info"

    .line 35
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/yandex/metrica/impl/ob/lc;->b(Lorg/json/JSONArray;)V

    const-string p2, "charge_type"

    const/high16 p3, -0x80000000

    .line 36
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 37
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/E$b$a;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/E$b$a;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/yandex/metrica/impl/ob/lc;->a(Lcom/yandex/metrica/impl/ob/E$b$a;)V

    const-string p2, "collection_mode"

    .line 38
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/oc$a;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/oc$a;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/lc;->a(Lcom/yandex/metrica/impl/ob/oc$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-object v0, v1

    :catchall_1
    :cond_1
    :goto_1
    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/Hc;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "collection_mode"

    .line 2
    :try_start_1
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/Hc;->a:Lcom/yandex/metrica/impl/ob/oc$a;

    .line 3
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/oc$a;->a()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "lat"

    .line 5
    :try_start_2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->c()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "lon"

    .line 6
    :try_start_3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->c()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v2, "timestamp"

    .line 7
    :try_start_4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->c()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v2, "receive_timestamp"

    .line 8
    :try_start_5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 9
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v2, "receive_elapsed_realtime_seconds"

    .line 10
    :try_start_6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->d()J

    move-result-wide v3

    .line 11
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v2, "precision"

    .line 12
    :try_start_7
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->c()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->c()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 13
    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v2, "direction"

    .line 14
    :try_start_8
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->c()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->c()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getBearing()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v0

    .line 15
    :goto_1
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v2, "speed"

    .line 16
    :try_start_9
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->c()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->c()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getSpeed()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v0

    .line 17
    :goto_2
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v2, "altitude"

    .line 18
    :try_start_a
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->c()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->c()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v0

    .line 19
    :goto_3
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-string v2, "provider"

    .line 20
    :try_start_b
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->c()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/yandex/metrica/impl/ob/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-string v2, "charge_type"

    .line 22
    :try_start_c
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->a()Lcom/yandex/metrica/impl/ob/E$b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/E$b$a;->a()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_4

    :catchall_0
    move-object p1, v0

    :goto_4
    if-eqz p1, :cond_4

    .line 24
    :try_start_d
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Vb;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/yandex/metrica/impl/ob/Tl;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_d} :catch_0

    :catch_0
    :cond_4
    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/lc;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 40
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "timestamp"

    .line 41
    :try_start_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->d()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "elapsed_realtime_seconds"

    .line 42
    :try_start_2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->c()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "wifi_info"

    .line 43
    :try_start_3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->g()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v2, "cell_info"

    .line 44
    :try_start_4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->a()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->b()Lcom/yandex/metrica/impl/ob/E$b$a;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_0

    const-string v2, "charge_type"

    .line 46
    :try_start_5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->b()Lcom/yandex/metrica/impl/ob/E$b$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/E$b$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->e()Lcom/yandex/metrica/impl/ob/oc$a;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_1

    const-string v2, "collection_mode"

    .line 48
    :try_start_6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->e()Lcom/yandex/metrica/impl/ob/oc$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/oc$a;->a()Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 51
    :cond_2
    :try_start_7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Vb;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/yandex/metrica/impl/ob/Tl;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    :goto_1
    return-object v0
.end method

.method public b(JLjava/lang/String;)Lcom/yandex/metrica/impl/ob/Hc;
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, p0

    .line 3
    :try_start_0
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/Vb;->a:Landroid/content/Context;

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/ob/Tl;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-object v2, v0

    .line 13
    :goto_0
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v2, "receive_timestamp"

    .line 29
    .line 30
    const-wide/16 v4, 0x0

    .line 31
    .line 32
    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v8

    .line 36
    const-string v2, "receive_elapsed_realtime_seconds"

    .line 37
    .line 38
    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v10

    .line 42
    const-string v2, "collection_mode"

    .line 43
    .line 44
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/oc$a;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/oc$a;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    new-instance v12, Landroid/location/Location;

    .line 53
    .line 54
    const-string v2, "provider"

    .line 55
    .line 56
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-direct {v12, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v2, "lon"

    .line 64
    .line 65
    const-wide/16 v13, 0x0

    .line 66
    .line 67
    invoke-virtual {v3, v2, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    invoke-virtual {v12, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 72
    .line 73
    .line 74
    const-string v0, "lat"

    .line 75
    .line 76
    invoke-virtual {v3, v0, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    invoke-virtual {v12, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 81
    .line 82
    .line 83
    const-string v0, "timestamp"

    .line 84
    .line 85
    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    invoke-virtual {v12, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 90
    .line 91
    .line 92
    const-string v0, "precision"

    .line 93
    .line 94
    invoke-virtual {v3, v0, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    double-to-float v0, v0

    .line 99
    invoke-virtual {v12, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 100
    .line 101
    .line 102
    const-string v0, "direction"

    .line 103
    .line 104
    invoke-virtual {v3, v0, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    double-to-float v0, v0

    .line 109
    invoke-virtual {v12, v0}, Landroid/location/Location;->setBearing(F)V

    .line 110
    .line 111
    .line 112
    const-string v0, "speed"

    .line 113
    .line 114
    invoke-virtual {v3, v0, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 115
    .line 116
    .line 117
    move-result-wide v0

    .line 118
    double-to-float v0, v0

    .line 119
    invoke-virtual {v12, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 120
    .line 121
    .line 122
    const-string v0, "altitude"

    .line 123
    .line 124
    invoke-virtual {v3, v0, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    invoke-virtual {v12, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    .line 129
    .line 130
    .line 131
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hc;

    .line 132
    .line 133
    const-string v1, "charge_type"

    .line 134
    .line 135
    const/high16 v2, -0x80000000

    .line 136
    .line 137
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/E$b$a;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/E$b$a;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 150
    .line 151
    .line 152
    move-result-object v14

    .line 153
    move-object v6, v0

    .line 154
    invoke-direct/range {v6 .. v14}, Lcom/yandex/metrica/impl/ob/Hc;-><init>(Lcom/yandex/metrica/impl/ob/oc$a;JJLandroid/location/Location;Lcom/yandex/metrica/impl/ob/E$b$a;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :catchall_0
    :cond_1
    const/4 v0, 0x0

    .line 159
    :goto_1
    return-object v0
.end method
