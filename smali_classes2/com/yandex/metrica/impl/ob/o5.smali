.class public Lcom/yandex/metrica/impl/ob/o5;
.super Lcom/yandex/metrica/impl/ob/X4;
.source "SourceFile"


# instance fields
.field private final b:Lcom/yandex/metrica/impl/ob/I1;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/L3;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->k()Lcom/yandex/metrica/impl/ob/I1;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/o5;-><init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/I1;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/I1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/X4;-><init>(Lcom/yandex/metrica/impl/ob/L3;)V

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/o5;->b:Lcom/yandex/metrica/impl/ob/I1;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/c0;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->q()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "preloadInfo"

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-object p1, v0

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/o5;->b:Lcom/yandex/metrica/impl/ob/I1;

    .line 20
    .line 21
    new-instance v8, Lcom/yandex/metrica/impl/ob/ee;

    .line 22
    .line 23
    const-string v2, "trackingId"

    .line 24
    .line 25
    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/ob/Tl;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    new-instance v2, Lorg/json/JSONObject;

    .line 30
    .line 31
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 32
    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    const-string v4, "additionalParams"

    .line 37
    .line 38
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    :try_start_1
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    goto :goto_1

    .line 49
    :catchall_1
    :cond_0
    move-object v4, v0

    .line 50
    :goto_1
    if-nez v4, :cond_1

    .line 51
    .line 52
    move-object v4, v2

    .line 53
    :cond_1
    const-string v2, "wasSet"

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    invoke-static {p1, v2, v9}, Lcom/yandex/metrica/impl/ob/Tl;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    const-string v2, "autoTracking"

    .line 61
    .line 62
    invoke-static {p1, v2, v9}, Lcom/yandex/metrica/impl/ob/Tl;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    const-string v2, "source"

    .line 67
    .line 68
    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/ob/Tl;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {}, Lcom/yandex/metrica/impl/ob/u0;->values()[Lcom/yandex/metrica/impl/ob/u0;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    move v7, v9

    .line 77
    :goto_2
    const/4 v10, 0x4

    .line 78
    if-ge v7, v10, :cond_3

    .line 79
    .line 80
    aget-object v10, v2, v7

    .line 81
    .line 82
    invoke-virtual {v10}, Lcom/yandex/metrica/impl/ob/u0;->a()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    invoke-static {v11, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    if-eqz v11, :cond_2

    .line 91
    .line 92
    move-object v0, v10

    .line 93
    goto :goto_3

    .line 94
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 98
    .line 99
    move-object v7, v0

    .line 100
    goto :goto_4

    .line 101
    :cond_4
    sget-object p1, Lcom/yandex/metrica/impl/ob/u0;->b:Lcom/yandex/metrica/impl/ob/u0;

    .line 102
    .line 103
    move-object v7, p1

    .line 104
    :goto_4
    move-object v2, v8

    .line 105
    invoke-direct/range {v2 .. v7}, Lcom/yandex/metrica/impl/ob/ee;-><init>(Ljava/lang/String;Lorg/json/JSONObject;ZZLcom/yandex/metrica/impl/ob/u0;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v8}, Lcom/yandex/metrica/impl/ob/r0;->b(Lcom/yandex/metrica/impl/ob/v0;)Z

    .line 109
    .line 110
    .line 111
    return v9
.end method
