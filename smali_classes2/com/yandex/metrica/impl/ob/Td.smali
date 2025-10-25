.class public final Lcom/yandex/metrica/impl/ob/Td;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/z2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/z2<",
        "Lcom/yandex/metrica/impl/ob/Ud$a;",
        "Lcom/yandex/metrica/impl/ob/ee;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Ud;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Ud;->b:Ljava/util/List;

    .line 5
    .line 6
    const-string v0, "stateFromDisk.candidates"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p1, Ljava/util/Collection;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/yandex/metrica/impl/ob/Ud$a;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Ud$a;->c:Lcom/yandex/metrica/impl/ob/u0;

    .line 40
    .line 41
    sget-object v2, Lcom/yandex/metrica/impl/ob/u0;->c:Lcom/yandex/metrica/impl/ob/u0;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    if-ne v0, v2, :cond_2

    .line 45
    .line 46
    move v0, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v0, v3

    .line 49
    :goto_0
    if-eqz v0, :cond_1

    .line 50
    .line 51
    move v1, v3

    .line 52
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ob/Td;->a:Z

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/yandex/metrica/impl/ob/ee;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/yandex/metrica/impl/ob/Ud$a;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/ee;",
            ")",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/Ud$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ud$a;

    .line 2
    .line 3
    iget-object v1, p2, Lcom/yandex/metrica/impl/ob/ee;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p2, Lcom/yandex/metrica/impl/ob/ee;->b:Lorg/json/JSONObject;

    .line 6
    .line 7
    iget-object v3, p2, Lcom/yandex/metrica/impl/ob/ee;->e:Lcom/yandex/metrica/impl/ob/u0;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Ud$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/yandex/metrica/impl/ob/u0;)V

    .line 10
    .line 11
    .line 12
    instance-of v1, p1, Ljava/util/Collection;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/yandex/metrica/impl/ob/Ud$a;

    .line 39
    .line 40
    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/Ud$a;->c:Lcom/yandex/metrica/impl/ob/u0;

    .line 41
    .line 42
    iget-object v4, p2, Lcom/yandex/metrica/impl/ob/ee;->e:Lcom/yandex/metrica/impl/ob/u0;

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    if-ne v3, v4, :cond_2

    .line 46
    .line 47
    move v3, v5

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move v3, v2

    .line 50
    :goto_0
    if-eqz v3, :cond_1

    .line 51
    .line 52
    move v2, v5

    .line 53
    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    .line 54
    .line 55
    iget-object p2, v0, Lcom/yandex/metrica/impl/ob/Ud$a;->c:Lcom/yandex/metrica/impl/ob/u0;

    .line 56
    .line 57
    sget-object v1, Lcom/yandex/metrica/impl/ob/u0;->c:Lcom/yandex/metrica/impl/ob/u0;

    .line 58
    .line 59
    if-ne p2, v1, :cond_4

    .line 60
    .line 61
    iget-boolean p2, p0, Lcom/yandex/metrica/impl/ob/Td;->a:Z

    .line 62
    .line 63
    if-eqz p2, :cond_4

    .line 64
    .line 65
    invoke-static {p1, v0}, Lyc/m;->d0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    const/4 p1, 0x0

    .line 71
    goto :goto_2

    .line 72
    :cond_5
    invoke-static {p1, v0}, Lyc/m;->d0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_2
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    check-cast p2, Lcom/yandex/metrica/impl/ob/ee;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Td;->a(Ljava/util/List;Lcom/yandex/metrica/impl/ob/ee;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
