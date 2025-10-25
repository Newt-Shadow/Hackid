.class public final Lcom/yandex/metrica/impl/ob/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/o;


# instance fields
.field private final a:Lzb/g;


# direct methods
.method public constructor <init>(Lzb/g;)V
    .locals 1

    const-string v0, "systemTimeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/h;->a:Lzb/g;

    return-void
.end method

.method public synthetic constructor <init>(Lzb/g;I)V
    .locals 0

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lzb/g;

    invoke-direct {p1}, Lzb/g;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/h;-><init>(Lzb/g;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/i;Ljava/util/Map;Lcom/yandex/metrica/impl/ob/l;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/i;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lzb/a;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/l;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lzb/a;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "history"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "storage"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_5

    .line 34
    .line 35
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/util/Map$Entry;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lzb/a;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/h;->a:Lzb/g;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    iget-object v5, v2, Lzb/a;->a:Lzb/e;

    .line 57
    .line 58
    sget-object v6, Lzb/e;->a:Lzb/e;

    .line 59
    .line 60
    const/4 v7, 0x1

    .line 61
    if-ne v5, v6, :cond_1

    .line 62
    .line 63
    invoke-interface {p3}, Lcom/yandex/metrica/impl/ob/l;->a()Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-nez v5, :cond_1

    .line 68
    .line 69
    iget-wide v5, v2, Lzb/a;->d:J

    .line 70
    .line 71
    sub-long/2addr v3, v5

    .line 72
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 73
    .line 74
    iget v5, p1, Lcom/yandex/metrica/impl/ob/i;->b:I

    .line 75
    .line 76
    int-to-long v5, v5

    .line 77
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 78
    .line 79
    .line 80
    move-result-wide v5

    .line 81
    cmp-long v2, v3, v5

    .line 82
    .line 83
    if-gtz v2, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    iget-object v5, v2, Lzb/a;->b:Ljava/lang/String;

    .line 87
    .line 88
    invoke-interface {p3, v5}, Lcom/yandex/metrica/impl/ob/l;->a(Ljava/lang/String;)Lzb/a;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    if-eqz v5, :cond_4

    .line 93
    .line 94
    const-string v6, "storage[historyEntry.sku] ?: return true"

    .line 95
    .line 96
    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v6, v5, Lzb/a;->c:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v8, v2, Lzb/a;->c:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v6, v8}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    xor-int/2addr v6, v7

    .line 108
    if-eqz v6, :cond_2

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    iget-object v2, v2, Lzb/a;->a:Lzb/e;

    .line 112
    .line 113
    sget-object v6, Lzb/e;->b:Lzb/e;

    .line 114
    .line 115
    if-ne v2, v6, :cond_3

    .line 116
    .line 117
    iget-wide v5, v5, Lzb/a;->e:J

    .line 118
    .line 119
    sub-long/2addr v3, v5

    .line 120
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 121
    .line 122
    iget v5, p1, Lcom/yandex/metrica/impl/ob/i;->a:I

    .line 123
    .line 124
    int-to-long v5, v5

    .line 125
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 126
    .line 127
    .line 128
    move-result-wide v5

    .line 129
    cmp-long v2, v3, v5

    .line 130
    .line 131
    if-ltz v2, :cond_3

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    const/4 v7, 0x0

    .line 135
    :cond_4
    :goto_1
    if-eqz v7, :cond_0

    .line 136
    .line 137
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_5
    return-object v0
.end method
