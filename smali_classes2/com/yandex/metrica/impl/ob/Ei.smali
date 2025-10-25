.class public Lcom/yandex/metrica/impl/ob/Ei;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/z9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/z9;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/z9;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Ei;-><init>(Lcom/yandex/metrica/impl/ob/z9;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/z9;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ei;->a:Lcom/yandex/metrica/impl/ob/z9;

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ob/Ui;Lcom/yandex/metrica/impl/ob/Tl$a;)V
    .locals 10

    .line 1
    const-string v0, "diagnostics"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_4

    .line 8
    .line 9
    const-string v0, "functionalities"

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_4

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    move-object v2, v0

    .line 20
    move v3, v1

    .line 21
    move-object v1, v2

    .line 22
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-ge v3, v4, :cond_3

    .line 27
    .line 28
    :try_start_0
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const-string v5, "tag"

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/Ei;->a:Lcom/yandex/metrica/impl/ob/z9;

    .line 39
    .line 40
    new-instance v7, Lcom/yandex/metrica/impl/ob/If$e;

    .line 41
    .line 42
    invoke-direct {v7}, Lcom/yandex/metrica/impl/ob/If$e;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v8, "expiration_timestamp"

    .line 46
    .line 47
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v8

    .line 51
    iput-wide v8, v7, Lcom/yandex/metrica/impl/ob/If$e;->a:J

    .line 52
    .line 53
    iget v8, v7, Lcom/yandex/metrica/impl/ob/If$e;->b:I

    .line 54
    .line 55
    const-string v9, "interval"

    .line 56
    .line 57
    invoke-virtual {v4, v9, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    iput v4, v7, Lcom/yandex/metrica/impl/ob/If$e;->b:I

    .line 62
    .line 63
    invoke-virtual {v6, v7}, Lcom/yandex/metrica/impl/ob/z9;->a(Lcom/yandex/metrica/impl/ob/If$e;)Lcom/yandex/metrica/impl/ob/qa;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const-string v6, "activation"

    .line 68
    .line 69
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_0

    .line 74
    .line 75
    move-object v0, v4

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    const-string v6, "clids_info"

    .line 78
    .line 79
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_1

    .line 84
    .line 85
    move-object v1, v4

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    const-string v6, "preload_info"

    .line 88
    .line 89
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    if-eqz v5, :cond_2

    .line 94
    .line 95
    move-object v2, v4

    .line 96
    :catchall_0
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    new-instance p2, Lcom/yandex/metrica/impl/ob/ra;

    .line 100
    .line 101
    invoke-direct {p2, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ra;-><init>(Lcom/yandex/metrica/impl/ob/qa;Lcom/yandex/metrica/impl/ob/qa;Lcom/yandex/metrica/impl/ob/qa;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Ui;->a(Lcom/yandex/metrica/impl/ob/ra;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    return-void
.end method
