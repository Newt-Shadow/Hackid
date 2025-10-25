.class public Lcom/yandex/metrica/impl/ob/Yc;
.super Ljava/lang/Object;
.source "SourceFile"


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
.method public a(Lcom/yandex/metrica/impl/ob/lc;)Lcom/yandex/metrica/impl/ob/pf$a;
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/pf$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/pf$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->f()Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-wide v1, v0, Lcom/yandex/metrica/impl/ob/pf$a;->a:J

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->f()Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    :goto_0
    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/pf$a;->a:J

    .line 24
    .line 25
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->d()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    iput-wide v2, v0, Lcom/yandex/metrica/impl/ob/pf$a;->b:J

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->c()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/pf$a;->e:J

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->b()Lcom/yandex/metrica/impl/ob/E$b$a;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->b()Lcom/yandex/metrica/impl/ob/E$b$a;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/J1;->a(Lcom/yandex/metrica/impl/ob/E$b$a;)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    :goto_1
    iput v1, v0, Lcom/yandex/metrica/impl/ob/pf$a;->f:I

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->e()Lcom/yandex/metrica/impl/ob/oc$a;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    const/4 v1, 0x3

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->e()Lcom/yandex/metrica/impl/ob/oc$a;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/J1;->a(Lcom/yandex/metrica/impl/ob/oc$a;)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    :goto_2
    iput v1, v0, Lcom/yandex/metrica/impl/ob/pf$a;->g:I

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->a()Lorg/json/JSONArray;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/J1;->b(Lorg/json/JSONArray;)[Lcom/yandex/metrica/impl/ob/of;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/pf$a;->c:[Lcom/yandex/metrica/impl/ob/of;

    .line 94
    .line 95
    :cond_3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->g()Lorg/json/JSONArray;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/J1;->a(Lorg/json/JSONArray;)[Lcom/yandex/metrica/impl/ob/rf;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/pf$a;->d:[Lcom/yandex/metrica/impl/ob/rf;

    .line 106
    .line 107
    :cond_4
    return-object v0
.end method
