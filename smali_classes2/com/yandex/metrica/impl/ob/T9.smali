.class public Lcom/yandex/metrica/impl/ob/T9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# annotations
.annotation runtime Ljava/lang/Deprecated;
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
.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Z1;

    .line 2
    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ef;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ef;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Z1;->a:Ljava/util/Map;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    new-instance v2, Lcom/yandex/metrica/impl/ob/Ef$a;

    .line 15
    .line 16
    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Ef$a;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    new-array v3, v3, [Lcom/yandex/metrica/impl/ob/Ef$a$a;

    .line 24
    .line 25
    iput-object v3, v2, Lcom/yandex/metrica/impl/ob/Ef$a;->a:[Lcom/yandex/metrica/impl/ob/Ef$a$a;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/util/Map$Entry;

    .line 47
    .line 48
    new-instance v5, Lcom/yandex/metrica/impl/ob/Ef$a$a;

    .line 49
    .line 50
    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/Ef$a$a;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Ljava/lang/String;

    .line 58
    .line 59
    iput-object v6, v5, Lcom/yandex/metrica/impl/ob/Ef$a$a;->a:Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/lang/String;

    .line 66
    .line 67
    iput-object v4, v5, Lcom/yandex/metrica/impl/ob/Ef$a$a;->b:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v4, v2, Lcom/yandex/metrica/impl/ob/Ef$a;->a:[Lcom/yandex/metrica/impl/ob/Ef$a$a;

    .line 70
    .line 71
    aput-object v5, v4, v3

    .line 72
    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    move-object v1, v2

    .line 77
    :goto_1
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/Ef;->a:Lcom/yandex/metrica/impl/ob/Ef$a;

    .line 78
    .line 79
    iget-boolean p1, p1, Lcom/yandex/metrica/impl/ob/Z1;->b:Z

    .line 80
    .line 81
    iput-boolean p1, v0, Lcom/yandex/metrica/impl/ob/Ef;->b:Z

    .line 82
    .line 83
    return-object v0
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Ef;

    .line 2
    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/Z1;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Ef;->a:Lcom/yandex/metrica/impl/ob/Ef$a;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Ef$a;->a:[Lcom/yandex/metrica/impl/ob/Ef$a$a;

    .line 17
    .line 18
    array-length v3, v1

    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    if-ge v4, v3, :cond_1

    .line 21
    .line 22
    aget-object v5, v1, v4

    .line 23
    .line 24
    iget-object v6, v5, Lcom/yandex/metrica/impl/ob/Ef$a$a;->a:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v5, v5, Lcom/yandex/metrica/impl/ob/Ef$a$a;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v1, v2

    .line 35
    :goto_1
    iget-boolean p1, p1, Lcom/yandex/metrica/impl/ob/Ef;->b:Z

    .line 36
    .line 37
    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/Z1;-><init>(Ljava/util/Map;Z)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method
