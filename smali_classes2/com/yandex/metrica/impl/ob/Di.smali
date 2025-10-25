.class public Lcom/yandex/metrica/impl/ob/Di;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/w9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/w9;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/w9;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Di;-><init>(Lcom/yandex/metrica/impl/ob/w9;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/w9;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Di;->a:Lcom/yandex/metrica/impl/ob/w9;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yandex/metrica/impl/ob/Ph;
    .locals 6

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$c;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "cache_control"

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string v1, "cells_around_ttl"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/Tl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    iget-wide v4, v0, Lcom/yandex/metrica/impl/ob/If$c;->a:J

    .line 24
    .line 25
    invoke-static {v1, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    iput-wide v4, v0, Lcom/yandex/metrica/impl/ob/If$c;->a:J

    .line 30
    .line 31
    const-string v1, "wifi_networks_ttl"

    .line 32
    .line 33
    invoke-static {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/Tl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-wide v4, v0, Lcom/yandex/metrica/impl/ob/If$c;->b:J

    .line 38
    .line 39
    invoke-static {v1, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    iput-wide v4, v0, Lcom/yandex/metrica/impl/ob/If$c;->b:J

    .line 44
    .line 45
    const-string v1, "last_known_location_ttl"

    .line 46
    .line 47
    invoke-static {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/Tl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-wide v4, v0, Lcom/yandex/metrica/impl/ob/If$c;->c:J

    .line 52
    .line 53
    invoke-static {v1, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    iput-wide v4, v0, Lcom/yandex/metrica/impl/ob/If$c;->c:J

    .line 58
    .line 59
    const-string v1, "net_interfaces_ttl"

    .line 60
    .line 61
    invoke-static {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/Tl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-wide v1, v0, Lcom/yandex/metrica/impl/ob/If$c;->d:J

    .line 66
    .line 67
    invoke-static {p1, v3, v1, v2}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;J)J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/If$c;->d:J

    .line 72
    .line 73
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Di;->a:Lcom/yandex/metrica/impl/ob/w9;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/w9;->a(Lcom/yandex/metrica/impl/ob/If$c;)Lcom/yandex/metrica/impl/ob/Ph;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1
.end method
