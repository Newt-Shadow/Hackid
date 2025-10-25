.class public Lcom/yandex/metrica/impl/ob/Z6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/yandex/metrica/impl/ob/J$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/Integer;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/yandex/metrica/CounterConfiguration$b;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/z3;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/c0;",
            "Lcom/yandex/metrica/impl/ob/z3;",
            "Ljava/util/HashMap<",
            "Lcom/yandex/metrica/impl/ob/J$a;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->r()[B

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Z6;->a:[B

    .line 25
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Z6;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->d()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/Z6;->c:I

    if-eqz p3, :cond_0

    .line 27
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Z6;->d:Ljava/util/HashMap;

    goto :goto_0

    .line 28
    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Z6;->d:Ljava/util/HashMap;

    .line 29
    :goto_0
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/z3;->a()Lcom/yandex/metrica/impl/ob/A3;

    move-result-object p3

    .line 30
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/A3;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Z6;->e:Ljava/lang/String;

    .line 31
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/A3;->g()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Z6;->f:Ljava/lang/Integer;

    .line 32
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/A3;->h()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Z6;->g:Ljava/lang/String;

    .line 33
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/z3;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p2

    .line 34
    invoke-virtual {p2}, Lcom/yandex/metrica/CounterConfiguration;->b()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Z6;->h:Ljava/lang/String;

    .line 35
    invoke-virtual {p2}, Lcom/yandex/metrica/CounterConfiguration;->M()Lcom/yandex/metrica/CounterConfiguration$b;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Z6;->i:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 36
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Z6;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "event"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "jvm_crash"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/Z6;->a:[B

    const-string v1, "name"

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/Z6;->b:Ljava/lang/String;

    const-string v1, "bytes_truncated"

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yandex/metrica/impl/ob/Z6;->c:I

    const-string v1, "environment"

    .line 7
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/Tl;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/Z6;->j:Ljava/lang/String;

    const-string v1, "trimmed_fields"

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/Z6;->d:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 10
    :try_start_0
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Tl;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Z6;->d:Ljava/util/HashMap;

    .line 13
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/J$a;->valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/J$a;

    move-result-object v3

    .line 14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 15
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const-string p1, "process_configuration"

    .line 16
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "package_name"

    .line 17
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/Z6;->e:Ljava/lang/String;

    const-string v1, "pid"

    .line 18
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/Z6;->f:Ljava/lang/Integer;

    const-string v1, "psid"

    .line 19
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Z6;->g:Ljava/lang/String;

    const-string p1, "reporter_configuration"

    .line 20
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "api_key"

    .line 21
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Z6;->h:Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Z6;->a(Lorg/json/JSONObject;)Lcom/yandex/metrica/CounterConfiguration$b;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Z6;->i:Lcom/yandex/metrica/CounterConfiguration$b;

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lcom/yandex/metrica/CounterConfiguration$b;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "reporter_type"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/CounterConfiguration$b;->a(Ljava/lang/String;)Lcom/yandex/metrica/CounterConfiguration$b;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "is_commutation"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/yandex/metrica/CounterConfiguration$b;->e:Lcom/yandex/metrica/CounterConfiguration$b;

    return-object p1

    .line 6
    :cond_1
    sget-object p1, Lcom/yandex/metrica/CounterConfiguration$b;->b:Lcom/yandex/metrica/CounterConfiguration$b;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Z6;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/Z6;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public c()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Z6;->a:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Z6;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Z6;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Z6;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Z6;->f:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Z6;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lcom/yandex/metrica/CounterConfiguration$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Z6;->i:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/yandex/metrica/impl/ob/J$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Z6;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Z6;->d:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lcom/yandex/metrica/impl/ob/J$a;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v2, Lorg/json/JSONObject;

    .line 52
    .line 53
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Z6;->f:Ljava/lang/Integer;

    .line 57
    .line 58
    const-string v4, "pid"

    .line 59
    .line 60
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Z6;->g:Ljava/lang/String;

    .line 65
    .line 66
    const-string v4, "psid"

    .line 67
    .line 68
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Z6;->e:Ljava/lang/String;

    .line 73
    .line 74
    const-string v4, "package_name"

    .line 75
    .line 76
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v3, "process_configuration"

    .line 81
    .line 82
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    new-instance v2, Lorg/json/JSONObject;

    .line 87
    .line 88
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .line 90
    .line 91
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Z6;->h:Ljava/lang/String;

    .line 92
    .line 93
    const-string v4, "api_key"

    .line 94
    .line 95
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Z6;->i:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/yandex/metrica/CounterConfiguration$b;->b()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    const-string v4, "reporter_type"

    .line 106
    .line 107
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    const-string v3, "reporter_configuration"

    .line 112
    .line 113
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    new-instance v2, Lorg/json/JSONObject;

    .line 118
    .line 119
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 120
    .line 121
    .line 122
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Z6;->a:[B

    .line 123
    .line 124
    const/4 v4, 0x0

    .line 125
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    const-string v4, "jvm_crash"

    .line 130
    .line 131
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Z6;->b:Ljava/lang/String;

    .line 136
    .line 137
    const-string v4, "name"

    .line 138
    .line 139
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    iget v3, p0, Lcom/yandex/metrica/impl/ob/Z6;->c:I

    .line 144
    .line 145
    const-string v4, "bytes_truncated"

    .line 146
    .line 147
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Tl;->g(Ljava/util/Map;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const-string v3, "trimmed_fields"

    .line 156
    .line 157
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Z6;->j:Ljava/lang/String;

    .line 162
    .line 163
    const-string v3, "environment"

    .line 164
    .line 165
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const-string v2, "event"

    .line 170
    .line 171
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    return-object v0
.end method
