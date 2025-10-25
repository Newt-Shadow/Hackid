.class public Lcom/yandex/metrica/impl/ob/Ha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/Converter;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ln;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/ln;

    const/16 v1, 0x64

    const/16 v2, 0x3e8

    const/16 v3, 0x5000

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/metrica/impl/ob/ln;-><init>(III)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Ha;-><init>(Lcom/yandex/metrica/impl/ob/ln;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ln;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ha;->a:Lcom/yandex/metrica/impl/ob/ln;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/Na;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/Na<",
            "Lcom/yandex/metrica/impl/ob/mf$i;",
            "Lcom/yandex/metrica/impl/ob/Vm;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ha;->a:Lcom/yandex/metrica/impl/ob/ln;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ln;->a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/gn;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$i;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$i;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/gn;->b:Lcom/yandex/metrica/impl/ob/Vm;

    .line 13
    .line 14
    check-cast v1, Lcom/yandex/metrica/impl/ob/Xm;

    .line 15
    .line 16
    iget v1, v1, Lcom/yandex/metrica/impl/ob/Xm;->b:I

    .line 17
    .line 18
    iput v1, v0, Lcom/yandex/metrica/impl/ob/mf$i;->b:I

    .line 19
    .line 20
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ljava/util/Map;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    new-array v2, v2, [Lcom/yandex/metrica/impl/ob/mf$i$a;

    .line 31
    .line 32
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/mf$i;->a:[Lcom/yandex/metrica/impl/ob/mf$i$a;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/util/Map$Entry;

    .line 54
    .line 55
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/mf$i;->a:[Lcom/yandex/metrica/impl/ob/mf$i$a;

    .line 56
    .line 57
    new-instance v5, Lcom/yandex/metrica/impl/ob/mf$i$a;

    .line 58
    .line 59
    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/mf$i$a;-><init>()V

    .line 60
    .line 61
    .line 62
    aput-object v5, v4, v2

    .line 63
    .line 64
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/mf$i;->a:[Lcom/yandex/metrica/impl/ob/mf$i$a;

    .line 65
    .line 66
    aget-object v4, v4, v2

    .line 67
    .line 68
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v5}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    iput-object v5, v4, Lcom/yandex/metrica/impl/ob/mf$i$a;->a:[B

    .line 79
    .line 80
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/mf$i;->a:[Lcom/yandex/metrica/impl/ob/mf$i$a;

    .line 81
    .line 82
    aget-object v4, v4, v2

    .line 83
    .line 84
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    iput-object v3, v4, Lcom/yandex/metrica/impl/ob/mf$i$a;->b:[B

    .line 95
    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    new-instance v1, Lcom/yandex/metrica/impl/ob/Na;

    .line 100
    .line 101
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/gn;->b:Lcom/yandex/metrica/impl/ob/Vm;

    .line 102
    .line 103
    invoke-direct {v1, v0, p1}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    .line 104
    .line 105
    .line 106
    return-object v1
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Ha;->a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/Na;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Na;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
