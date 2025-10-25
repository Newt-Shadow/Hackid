.class public Lcom/yandex/metrica/impl/ob/qn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/vn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/vn<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Lcom/yandex/metrica/impl/ob/wn<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TT;",
            "Lcom/yandex/metrica/impl/ob/wn<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->d(Ljava/util/Map;)Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/qn;->a:Ljava/util/Map;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/zn;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TT;TR;>;)",
            "Lcom/yandex/metrica/impl/ob/zn<",
            "Ljava/util/Map<",
            "TT;TR;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/zn$a;->values()[Lcom/yandex/metrica/impl/ob/zn$a;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/util/Map$Entry;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/qn;->a:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/yandex/metrica/impl/ob/wn;

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-interface {v3, v4}, Lcom/yandex/metrica/impl/ob/wn;->get(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/zn;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget-object v4, v3, Lcom/yandex/metrica/impl/ob/zn;->a:Lcom/yandex/metrica/impl/ob/zn$a;

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    aget v5, v0, v4

    .line 61
    .line 62
    add-int/lit8 v5, v5, 0x1

    .line 63
    .line 64
    aput v5, v0, v4

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/zn;->b:Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    sget-object p1, Lcom/yandex/metrica/impl/ob/zn$a;->a:Lcom/yandex/metrica/impl/ob/zn$a;

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    aget v2, v0, v2

    .line 80
    .line 81
    if-lez v2, :cond_2

    .line 82
    .line 83
    new-instance v0, Lcom/yandex/metrica/impl/ob/zn;

    .line 84
    .line 85
    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/zn;-><init>(Lcom/yandex/metrica/impl/ob/zn$a;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_2
    sget-object p1, Lcom/yandex/metrica/impl/ob/zn$a;->c:Lcom/yandex/metrica/impl/ob/zn$a;

    .line 90
    .line 91
    const/4 v2, 0x2

    .line 92
    aget v0, v0, v2

    .line 93
    .line 94
    if-lez v0, :cond_3

    .line 95
    .line 96
    new-instance v0, Lcom/yandex/metrica/impl/ob/zn;

    .line 97
    .line 98
    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/zn;-><init>(Lcom/yandex/metrica/impl/ob/zn$a;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_3
    new-instance p1, Lcom/yandex/metrica/impl/ob/zn;

    .line 103
    .line 104
    sget-object v0, Lcom/yandex/metrica/impl/ob/zn$a;->b:Lcom/yandex/metrica/impl/ob/zn$a;

    .line 105
    .line 106
    invoke-direct {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/zn;-><init>(Lcom/yandex/metrica/impl/ob/zn$a;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/zn;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/qn;->a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/zn;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
