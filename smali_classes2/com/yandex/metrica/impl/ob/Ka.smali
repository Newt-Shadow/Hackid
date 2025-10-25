.class public Lcom/yandex/metrica/impl/ob/Ka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/Converter;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/jn;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/jn;

    const/16 v1, 0x14

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/jn;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Ka;-><init>(Lcom/yandex/metrica/impl/ob/jn;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/jn;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ka;->a:Lcom/yandex/metrica/impl/ob/jn;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/Na;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/Na<",
            "[",
            "Lcom/yandex/metrica/impl/ob/mf$l;",
            "Lcom/yandex/metrica/impl/ob/Vm;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ka;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/in;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/gn;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/util/List;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    new-array v2, v1, [Lcom/yandex/metrica/impl/ob/mf$l;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    new-array v2, v2, [Lcom/yandex/metrica/impl/ob/mf$l;

    .line 21
    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ge v1, v3, :cond_0

    .line 27
    .line 28
    new-instance v3, Lcom/yandex/metrica/impl/ob/mf$l;

    .line 29
    .line 30
    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/mf$l;-><init>()V

    .line 31
    .line 32
    .line 33
    aput-object v3, v2, v1

    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    iput-object v4, v3, Lcom/yandex/metrica/impl/ob/mf$l;->a:[B

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/Na;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/gn;->b:Lcom/yandex/metrica/impl/ob/Vm;

    .line 53
    .line 54
    invoke-direct {v0, v2, p1}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    .line 55
    .line 56
    .line 57
    return-object v0
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Ka;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/Na;

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
