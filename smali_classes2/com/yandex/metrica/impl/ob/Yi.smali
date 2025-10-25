.class public Lcom/yandex/metrica/impl/ob/Yi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/da;

.field private final b:Lcom/yandex/metrica/impl/ob/Zi;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/da;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/da;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/Zi;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Zi;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/Yi;-><init>(Lcom/yandex/metrica/impl/ob/da;Lcom/yandex/metrica/impl/ob/Zi;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/da;Lcom/yandex/metrica/impl/ob/Zi;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Yi;->a:Lcom/yandex/metrica/impl/ob/da;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Yi;->b:Lcom/yandex/metrica/impl/ob/Zi;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Ui;Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Yi;->a:Lcom/yandex/metrica/impl/ob/da;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/If$w;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/If$w;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "ui_parsing"

    .line 9
    .line 10
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->a:I

    .line 17
    .line 18
    const-string v3, "too_long_text_bound"

    .line 19
    .line 20
    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iput v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->a:I

    .line 25
    .line 26
    iget v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->b:I

    .line 27
    .line 28
    const-string v3, "truncated_text_bound"

    .line 29
    .line 30
    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iput v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->b:I

    .line 35
    .line 36
    iget v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->c:I

    .line 37
    .line 38
    const-string v3, "max_visited_children_in_level"

    .line 39
    .line 40
    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iput v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->c:I

    .line 45
    .line 46
    const-string v2, "after_create_timeout"

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-static {p2, v2, v3}, Lcom/yandex/metrica/impl/ob/Tl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    .line 55
    iget-wide v4, v1, Lcom/yandex/metrica/impl/ob/If$w;->d:J

    .line 56
    .line 57
    invoke-static {v2, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;J)J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    iput-wide v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->d:J

    .line 62
    .line 63
    iget-boolean v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->e:Z

    .line 64
    .line 65
    const-string v3, "relative_text_size_calculation"

    .line 66
    .line 67
    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iput-boolean v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->e:Z

    .line 72
    .line 73
    iget-boolean v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->f:Z

    .line 74
    .line 75
    const-string v3, "error_reporting"

    .line 76
    .line 77
    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    iput-boolean v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->f:Z

    .line 82
    .line 83
    iget-boolean v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->g:Z

    .line 84
    .line 85
    const-string v3, "parsing_allowed_by_default"

    .line 86
    .line 87
    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    iput-boolean v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->g:Z

    .line 92
    .line 93
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Yi;->b:Lcom/yandex/metrica/impl/ob/Zi;

    .line 94
    .line 95
    const-string v3, "filters"

    .line 96
    .line 97
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {v2, p2}, Lcom/yandex/metrica/impl/ob/Zi;->a(Lorg/json/JSONArray;)[Lcom/yandex/metrica/impl/ob/If$y;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    iput-object p2, v1, Lcom/yandex/metrica/impl/ob/If$w;->h:[Lcom/yandex/metrica/impl/ob/If$y;

    .line 106
    .line 107
    :cond_0
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/da;->a(Lcom/yandex/metrica/impl/ob/If$w;)Lcom/yandex/metrica/impl/ob/wl;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Ui;->a(Lcom/yandex/metrica/impl/ob/wl;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method
