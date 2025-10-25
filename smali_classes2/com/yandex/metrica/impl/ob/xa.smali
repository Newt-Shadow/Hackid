.class public Lcom/yandex/metrica/impl/ob/xa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/sa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/sa<",
        "Lcom/yandex/metrica/impl/ob/Ud;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 9

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Ud;

    .line 2
    .line 3
    new-instance v0, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    .line 11
    .line 12
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/Ud;->b:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    const-string v4, "source"

    .line 26
    .line 27
    const-string v5, "additional_parameters"

    .line 28
    .line 29
    const-string v6, "tracking_id"

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/yandex/metrica/impl/ob/Ud$a;

    .line 38
    .line 39
    if-nez v3, :cond_0

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    new-instance v7, Lorg/json/JSONObject;

    .line 44
    .line 45
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v8, v3, Lcom/yandex/metrica/impl/ob/Ud$a;->a:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    iget-object v7, v3, Lcom/yandex/metrica/impl/ob/Ud$a;->b:Lorg/json/JSONObject;

    .line 55
    .line 56
    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/Ud$a;->c:Lcom/yandex/metrica/impl/ob/u0;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/u0;->a()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :goto_1
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const-string v2, "candidates"

    .line 75
    .line 76
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    const-string v2, "chosen"

    .line 81
    .line 82
    :try_start_2
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Ud;->a:Lcom/yandex/metrica/impl/ob/ee;

    .line 83
    .line 84
    new-instance v3, Lorg/json/JSONObject;

    .line 85
    .line 86
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 87
    .line 88
    .line 89
    iget-object v7, p1, Lcom/yandex/metrica/impl/ob/ee;->a:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iget-object v6, p1, Lcom/yandex/metrica/impl/ob/ee;->b:Lorg/json/JSONObject;

    .line 96
    .line 97
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    iget-object v5, p1, Lcom/yandex/metrica/impl/ob/ee;->e:Lcom/yandex/metrica/impl/ob/u0;

    .line 102
    .line 103
    invoke-virtual {v5}, Lcom/yandex/metrica/impl/ob/u0;->a()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iget-boolean p1, p1, Lcom/yandex/metrica/impl/ob/ee;->d:Z

    .line 112
    .line 113
    const-string v4, "auto_tracking_enabled"

    .line 114
    .line 115
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    .line 121
    .line 122
    :catchall_0
    :cond_2
    return-object v0
.end method
