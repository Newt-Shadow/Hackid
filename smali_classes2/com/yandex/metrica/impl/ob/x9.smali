.class public final Lcom/yandex/metrica/impl/ob/x9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


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

.method private final a(Lcom/yandex/metrica/impl/ob/yf$a;)Lcom/yandex/metrica/impl/ob/v3$a;
    .locals 2

    .line 12
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/yf$a;->a:Lcom/yandex/metrica/impl/ob/yf$b;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/x9;->a(Lcom/yandex/metrica/impl/ob/yf$b;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget p1, p1, Lcom/yandex/metrica/impl/ob/yf$a;->b:I

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 14
    sget-object p1, Lcom/yandex/metrica/impl/ob/u0;->b:Lcom/yandex/metrica/impl/ob/u0;

    goto :goto_1

    .line 15
    :cond_1
    sget-object p1, Lcom/yandex/metrica/impl/ob/u0;->e:Lcom/yandex/metrica/impl/ob/u0;

    goto :goto_1

    .line 16
    :cond_2
    sget-object p1, Lcom/yandex/metrica/impl/ob/u0;->d:Lcom/yandex/metrica/impl/ob/u0;

    goto :goto_1

    .line 17
    :cond_3
    sget-object p1, Lcom/yandex/metrica/impl/ob/u0;->c:Lcom/yandex/metrica/impl/ob/u0;

    goto :goto_1

    .line 18
    :cond_4
    sget-object p1, Lcom/yandex/metrica/impl/ob/u0;->b:Lcom/yandex/metrica/impl/ob/u0;

    .line 19
    :goto_1
    new-instance v1, Lcom/yandex/metrica/impl/ob/v3$a;

    invoke-direct {v1, v0, p1}, Lcom/yandex/metrica/impl/ob/v3$a;-><init>(Ljava/util/Map;Lcom/yandex/metrica/impl/ob/u0;)V

    return-object v1
.end method

.method private final a(Lcom/yandex/metrica/impl/ob/v3$a;)Lcom/yandex/metrica/impl/ob/yf$a;
    .locals 9

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/yf$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/yf$a;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/v3$a;->b()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 3
    new-instance v4, Lcom/yandex/metrica/impl/ob/yf$b;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/yf$b;-><init>()V

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    new-array v6, v5, [Lcom/yandex/metrica/impl/ob/yf$b$a;

    move v7, v2

    :goto_0
    if-ge v7, v5, :cond_0

    new-instance v8, Lcom/yandex/metrica/impl/ob/yf$b$a;

    invoke-direct {v8}, Lcom/yandex/metrica/impl/ob/yf$b$a;-><init>()V

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iput-object v6, v4, Lcom/yandex/metrica/impl/ob/yf$b;->a:[Lcom/yandex/metrica/impl/ob/yf$b$a;

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6
    iget-object v8, v4, Lcom/yandex/metrica/impl/ob/yf$b;->a:[Lcom/yandex/metrica/impl/ob/yf$b$a;

    aget-object v8, v8, v5

    iput-object v7, v8, Lcom/yandex/metrica/impl/ob/yf$b$a;->a:Ljava/lang/String;

    .line 7
    iput-object v6, v8, Lcom/yandex/metrica/impl/ob/yf$b$a;->b:Ljava/lang/String;

    add-int/2addr v5, v3

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 8
    :cond_2
    iput-object v4, v0, Lcom/yandex/metrica/impl/ob/yf$a;->a:Lcom/yandex/metrica/impl/ob/yf$b;

    .line 9
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/v3$a;->a()Lcom/yandex/metrica/impl/ob/u0;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eq p1, v3, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v3

    .line 11
    :goto_2
    iput v2, v0, Lcom/yandex/metrica/impl/ob/yf$a;->b:I

    return-object v0
.end method

.method private final a(Lcom/yandex/metrica/impl/ob/yf$b;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/yf$b;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/yf$b;->a:[Lcom/yandex/metrica/impl/ob/yf$b$a;

    const-string v0, "proto.pairs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    array-length v0, p1

    invoke-static {v0}, Lyc/e0;->b(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lod/g;->b(II)I

    move-result v0

    .line 22
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 23
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 24
    iget-object v4, v3, Lcom/yandex/metrica/impl/ob/yf$b$a;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/yf$b$a;->b:Ljava/lang/String;

    invoke-static {v4, v3}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object v3

    invoke-virtual {v3}, Lxc/k;->c()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lxc/k;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/v3;

    .line 2
    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/yf;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/yf;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/v3;->c()Lcom/yandex/metrica/impl/ob/v3$a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/x9;->a(Lcom/yandex/metrica/impl/ob/v3$a;)Lcom/yandex/metrica/impl/ob/yf$a;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/yf;->a:Lcom/yandex/metrica/impl/ob/yf$a;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/v3;->a()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    new-array v2, v1, [Lcom/yandex/metrica/impl/ob/yf$a;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    if-ge v3, v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/v3;->a()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/yandex/metrica/impl/ob/v3$a;

    .line 40
    .line 41
    invoke-direct {p0, v4}, Lcom/yandex/metrica/impl/ob/x9;->a(Lcom/yandex/metrica/impl/ob/v3$a;)Lcom/yandex/metrica/impl/ob/yf$a;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    aput-object v4, v2, v3

    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/yf;->b:[Lcom/yandex/metrica/impl/ob/yf$a;

    .line 51
    .line 52
    return-object v0
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/yf;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/yf;->a:Lcom/yandex/metrica/impl/ob/yf$a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/yf$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/yf$a;-><init>()V

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/x9;->a(Lcom/yandex/metrica/impl/ob/yf$a;)Lcom/yandex/metrica/impl/ob/v3$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/yf;->b:[Lcom/yandex/metrica/impl/ob/yf$a;

    .line 18
    .line 19
    const-string v1, "nano.candidates"

    .line 20
    .line 21
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    array-length v2, p1

    .line 27
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    array-length v2, p1

    .line 31
    const/4 v3, 0x0

    .line 32
    :goto_1
    if-ge v3, v2, :cond_1

    .line 33
    .line 34
    aget-object v4, p1, v3

    .line 35
    .line 36
    const-string v5, "it"

    .line 37
    .line 38
    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v4}, Lcom/yandex/metrica/impl/ob/x9;->a(Lcom/yandex/metrica/impl/ob/yf$a;)Lcom/yandex/metrica/impl/ob/v3$a;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p1, Lcom/yandex/metrica/impl/ob/v3;

    .line 52
    .line 53
    invoke-direct {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/v3;-><init>(Lcom/yandex/metrica/impl/ob/v3$a;Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    return-object p1
.end method
