.class public Lcom/yandex/metrica/impl/ob/s9;
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


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Oh;)Lcom/yandex/metrica/impl/ob/If$a;
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$a;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Oh;->a:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/If$a$b;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/If$a;->a:[Lcom/yandex/metrica/impl/ob/If$a$b;

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/Oh;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    new-instance v2, Lcom/yandex/metrica/impl/ob/If$a$b;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/If$a$b;-><init>()V

    .line 6
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/Oh;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 7
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/yandex/metrica/impl/ob/If$a$b;->a:Ljava/lang/String;

    .line 8
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 9
    new-instance v4, Lcom/yandex/metrica/impl/ob/If$a$a;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/If$a$a;-><init>()V

    iput-object v4, v2, Lcom/yandex/metrica/impl/ob/If$a$b;->b:Lcom/yandex/metrica/impl/ob/If$a$a;

    .line 10
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/yandex/metrica/impl/ob/Oh$a;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 11
    :cond_0
    new-instance v4, Lcom/yandex/metrica/impl/ob/If$a$a;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/If$a$a;-><init>()V

    .line 12
    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/Oh$a;->a:Ljava/lang/String;

    iput-object v3, v4, Lcom/yandex/metrica/impl/ob/If$a$a;->a:Ljava/lang/String;

    move-object v3, v4

    .line 13
    :goto_1
    iput-object v3, v2, Lcom/yandex/metrica/impl/ob/If$a$b;->b:Lcom/yandex/metrica/impl/ob/If$a$a;

    .line 14
    :cond_1
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/If$a;->a:[Lcom/yandex/metrica/impl/ob/If$a$b;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/If$a;)Lcom/yandex/metrica/impl/ob/Oh;
    .locals 7

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/If$a;->a:[Lcom/yandex/metrica/impl/ob/If$a$b;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 17
    new-instance v4, Landroid/util/Pair;

    iget-object v5, v3, Lcom/yandex/metrica/impl/ob/If$a$b;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/If$a$b;->b:Lcom/yandex/metrica/impl/ob/If$a$a;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 18
    :cond_0
    new-instance v6, Lcom/yandex/metrica/impl/ob/Oh$a;

    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/If$a$a;->a:Ljava/lang/String;

    invoke-direct {v6, v3}, Lcom/yandex/metrica/impl/ob/Oh$a;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 19
    :goto_1
    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_1
    new-instance p1, Lcom/yandex/metrica/impl/ob/Oh;

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/Oh;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Oh;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/s9;->a(Lcom/yandex/metrica/impl/ob/Oh;)Lcom/yandex/metrica/impl/ob/If$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/If$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/s9;->a(Lcom/yandex/metrica/impl/ob/If$a;)Lcom/yandex/metrica/impl/ob/Oh;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
