.class Lcom/yandex/metrica/impl/ob/Zi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method a(Lorg/json/JSONArray;)[Lcom/yandex/metrica/impl/ob/If$y;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    move v2, v0

    .line 10
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v2, v3, :cond_6

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const-string v4, "type"

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    :try_start_1
    invoke-static {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/Tl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_4

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    if-eq v4, v6, :cond_3

    .line 38
    .line 39
    const/4 v6, 0x2

    .line 40
    if-eq v4, v6, :cond_2

    .line 41
    .line 42
    const/4 v6, 0x3

    .line 43
    if-eq v4, v6, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    :goto_1
    move-object v5, v4

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    goto :goto_1

    .line 67
    :goto_2
    const-string v4, "value"

    .line 68
    .line 69
    invoke-static {v3, v4}, Lcom/yandex/metrica/impl/ob/Tl;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-eqz v5, :cond_5

    .line 74
    .line 75
    if-eqz v3, :cond_5

    .line 76
    .line 77
    new-instance v4, Lcom/yandex/metrica/impl/ob/If$y;

    .line 78
    .line 79
    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/If$y;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    iput v5, v4, Lcom/yandex/metrica/impl/ob/If$y;->a:I

    .line 87
    .line 88
    iput-object v3, v4, Lcom/yandex/metrica/impl/ob/If$y;->b:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    :catchall_0
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_6
    new-array p1, v0, [Lcom/yandex/metrica/impl/ob/If$y;

    .line 97
    .line 98
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, [Lcom/yandex/metrica/impl/ob/If$y;

    .line 103
    .line 104
    return-object p1

    .line 105
    :cond_7
    new-array p1, v0, [Lcom/yandex/metrica/impl/ob/If$y;

    .line 106
    .line 107
    return-object p1
.end method
