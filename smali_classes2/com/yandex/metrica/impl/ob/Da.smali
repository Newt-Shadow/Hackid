.class public Lcom/yandex/metrica/impl/ob/Da;
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

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Da;-><init>(Lcom/yandex/metrica/impl/ob/jn;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/jn;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Da;->a:Lcom/yandex/metrica/impl/ob/jn;

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
            "Lcom/yandex/metrica/impl/ob/mf$d;",
            "Lcom/yandex/metrica/impl/ob/Vm;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Da;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/in;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/gn;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$d;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$d;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/util/List;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    new-array v3, v2, [[B

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    new-array v3, v3, [[B

    .line 26
    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ge v2, v4, :cond_0

    .line 32
    .line 33
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    aput-object v4, v3, v2

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iput-object v3, v0, Lcom/yandex/metrica/impl/ob/mf$d;->a:[[B

    .line 49
    .line 50
    new-instance v1, Lcom/yandex/metrica/impl/ob/Na;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/gn;->b:Lcom/yandex/metrica/impl/ob/Vm;

    .line 53
    .line 54
    invoke-direct {v1, v0, p1}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    .line 55
    .line 56
    .line 57
    return-object v1
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Da;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/Na;

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
