.class public Lcom/yandex/metrica/impl/ob/Y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/a3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/a3;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/a3;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Y2;-><init>(Lcom/yandex/metrica/impl/ob/a3;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/a3;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Y2;->a:Lcom/yandex/metrica/impl/ob/a3;

    return-void
.end method


# virtual methods
.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/X2;

    .line 2
    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/xf;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/xf;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/X2;->a:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/xf$a;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/xf;->a:[Lcom/yandex/metrica/impl/ob/xf$a;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/X2;->a:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lzb/a;

    .line 36
    .line 37
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/xf;->a:[Lcom/yandex/metrica/impl/ob/xf$a;

    .line 38
    .line 39
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/Y2;->a:Lcom/yandex/metrica/impl/ob/a3;

    .line 40
    .line 41
    invoke-virtual {v5, v3}, Lcom/yandex/metrica/impl/ob/a3;->a(Lzb/a;)Lcom/yandex/metrica/impl/ob/xf$a;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    aput-object v3, v4, v2

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-boolean p1, p1, Lcom/yandex/metrica/impl/ob/X2;->b:Z

    .line 51
    .line 52
    iput-boolean p1, v0, Lcom/yandex/metrica/impl/ob/xf;->b:Z

    .line 53
    .line 54
    return-object v0
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/xf;

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/xf;->a:[Lcom/yandex/metrica/impl/ob/xf$a;

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/xf;->a:[Lcom/yandex/metrica/impl/ob/xf$a;

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v2, :cond_0

    .line 16
    .line 17
    aget-object v4, v1, v3

    .line 18
    .line 19
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/Y2;->a:Lcom/yandex/metrica/impl/ob/a3;

    .line 20
    .line 21
    invoke-virtual {v5, v4}, Lcom/yandex/metrica/impl/ob/a3;->a(Lcom/yandex/metrica/impl/ob/xf$a;)Lzb/a;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v1, Lcom/yandex/metrica/impl/ob/X2;

    .line 32
    .line 33
    iget-boolean p1, p1, Lcom/yandex/metrica/impl/ob/xf;->b:Z

    .line 34
    .line 35
    invoke-direct {v1, v0, p1}, Lcom/yandex/metrica/impl/ob/X2;-><init>(Ljava/util/List;Z)V

    .line 36
    .line 37
    .line 38
    return-object v1
.end method
