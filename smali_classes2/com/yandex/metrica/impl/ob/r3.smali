.class public final Lcom/yandex/metrica/impl/ob/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/z2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/z2<",
        "Lcom/yandex/metrica/impl/ob/v3$a;",
        "Lcom/yandex/metrica/impl/ob/v3$a;",
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
.method public a(Ljava/util/List;Lcom/yandex/metrica/impl/ob/v3$a;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/v3$a;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/v3$a;",
            ")",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/v3$a;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/yandex/metrica/impl/ob/v3$a;

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/v3$a;->a()Lcom/yandex/metrica/impl/ob/u0;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/v3$a;->a()Lcom/yandex/metrica/impl/ob/u0;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    if-ne v3, v4, :cond_2

    .line 39
    .line 40
    move v3, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v3, v2

    .line 43
    :goto_0
    if-eqz v3, :cond_1

    .line 44
    .line 45
    move v0, v1

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    :goto_1
    move v0, v2

    .line 48
    :goto_2
    if-eqz v0, :cond_8

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/v3$a;->a()Lcom/yandex/metrica/impl/ob/u0;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v3, Lcom/yandex/metrica/impl/ob/u0;->c:Lcom/yandex/metrica/impl/ob/u0;

    .line 55
    .line 56
    if-ne v0, v3, :cond_7

    .line 57
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_6

    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    move-object v4, v3

    .line 78
    check-cast v4, Lcom/yandex/metrica/impl/ob/v3$a;

    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/v3$a;->a()Lcom/yandex/metrica/impl/ob/u0;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    sget-object v5, Lcom/yandex/metrica/impl/ob/u0;->c:Lcom/yandex/metrica/impl/ob/u0;

    .line 85
    .line 86
    if-ne v4, v5, :cond_5

    .line 87
    .line 88
    move v4, v1

    .line 89
    goto :goto_4

    .line 90
    :cond_5
    move v4, v2

    .line 91
    :goto_4
    if-nez v4, :cond_4

    .line 92
    .line 93
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_6
    invoke-static {v0, p2}, Lyc/m;->d0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    goto :goto_5

    .line 102
    :cond_7
    const/4 p1, 0x0

    .line 103
    goto :goto_5

    .line 104
    :cond_8
    invoke-static {p1, p2}, Lyc/m;->d0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    :goto_5
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    check-cast p2, Lcom/yandex/metrica/impl/ob/v3$a;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/r3;->a(Ljava/util/List;Lcom/yandex/metrica/impl/ob/v3$a;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
