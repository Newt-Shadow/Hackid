.class public Lcom/yandex/metrica/impl/ob/ue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/xe;


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
.method public a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/qf$b;
    .locals 7

    .line 1
    const-string v0, "original_provider"

    .line 2
    .line 3
    const-string v1, "provider"

    .line 4
    .line 5
    const-string v2, "lat"

    .line 6
    .line 7
    const-string v3, "lon"

    .line 8
    .line 9
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-nez v4, :cond_4

    .line 14
    .line 15
    new-instance v4, Lcom/yandex/metrica/impl/ob/Tl$a;

    .line 16
    .line 17
    invoke-direct {v4, p1}, Lcom/yandex/metrica/impl/ob/Tl$a;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, v3}, Lcom/yandex/metrica/impl/ob/Tl$a;->d(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_4

    .line 25
    .line 26
    invoke-virtual {v4, v2}, Lcom/yandex/metrica/impl/ob/Tl$a;->d(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_4

    .line 31
    .line 32
    new-instance p1, Lcom/yandex/metrica/impl/ob/qf$b;

    .line 33
    .line 34
    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/qf$b;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 35
    .line 36
    .line 37
    :try_start_1
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    iput-wide v5, p1, Lcom/yandex/metrica/impl/ob/qf$b;->b:D

    .line 42
    .line 43
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    iput-wide v2, p1, Lcom/yandex/metrica/impl/ob/qf$b;->a:D

    .line 48
    .line 49
    const-string v2, "altitude"

    .line 50
    .line 51
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    iput v2, p1, Lcom/yandex/metrica/impl/ob/qf$b;->g:I

    .line 56
    .line 57
    const-string v2, "direction"

    .line 58
    .line 59
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iput v2, p1, Lcom/yandex/metrica/impl/ob/qf$b;->e:I

    .line 64
    .line 65
    const-string v2, "precision"

    .line 66
    .line 67
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iput v2, p1, Lcom/yandex/metrica/impl/ob/qf$b;->d:I

    .line 72
    .line 73
    const-string v2, "speed"

    .line 74
    .line 75
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    iput v2, p1, Lcom/yandex/metrica/impl/ob/qf$b;->f:I

    .line 80
    .line 81
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 82
    .line 83
    const-string v3, "timestamp"

    .line 84
    .line 85
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v5

    .line 89
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 90
    .line 91
    .line 92
    move-result-wide v2

    .line 93
    iput-wide v2, p1, Lcom/yandex/metrica/impl/ob/qf$b;->c:J

    .line 94
    .line 95
    invoke-virtual {v4, v1}, Lcom/yandex/metrica/impl/ob/Tl$a;->d(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 99
    const-string v3, ""

    .line 100
    .line 101
    if-eqz v2, :cond_2

    .line 102
    .line 103
    :try_start_2
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 107
    if-eqz v2, :cond_0

    .line 108
    .line 109
    :try_start_3
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    goto :goto_0

    .line 114
    :catchall_0
    :cond_0
    move-object v1, v3

    .line 115
    :goto_0
    :try_start_4
    const-string v2, "gps"

    .line 116
    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_1

    .line 122
    .line 123
    const/4 v1, 0x1

    .line 124
    iput v1, p1, Lcom/yandex/metrica/impl/ob/qf$b;->h:I

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_1
    const-string v2, "network"

    .line 128
    .line 129
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_2

    .line 134
    .line 135
    const/4 v1, 0x2

    .line 136
    iput v1, p1, Lcom/yandex/metrica/impl/ob/qf$b;->h:I

    .line 137
    .line 138
    :cond_2
    :goto_1
    invoke-virtual {v4, v0}, Lcom/yandex/metrica/impl/ob/Tl$a;->d(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_5

    .line 143
    .line 144
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 148
    if-eqz v1, :cond_3

    .line 149
    .line 150
    :try_start_5
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 154
    :catchall_1
    :cond_3
    :try_start_6
    iput-object v3, p1, Lcom/yandex/metrica/impl/ob/qf$b;->i:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :catchall_2
    :cond_4
    const/4 p1, 0x0

    .line 158
    :catchall_3
    :cond_5
    :goto_2
    return-object p1
.end method
