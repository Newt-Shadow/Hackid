.class public final Lcom/yandex/metrica/impl/ob/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/l;


# instance fields
.field private a:Z

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lzb/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/metrica/impl/ob/n;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/n;)V
    .locals 3

    .line 1
    const-string v0, "storage"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/f;->c:Lcom/yandex/metrica/impl/ob/n;

    .line 10
    .line 11
    check-cast p1, Lcom/yandex/metrica/impl/ob/c3;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c3;->b()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/f;->a:Z

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c3;->a()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "storage.billingInfo"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    move-object v2, v1

    .line 48
    check-cast v2, Lzb/a;

    .line 49
    .line 50
    iget-object v2, v2, Lzb/a;->b:Ljava/lang/String;

    .line 51
    .line 52
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/f;->b:Ljava/util/Map;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lzb/a;
    .locals 1

    const-string v0, "sku"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/f;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzb/a;

    return-object p1
.end method

.method public a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lzb/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "history"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzb/a;

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/f;->b:Ljava/util/Map;

    iget-object v2, v0, Lzb/a;->b:Ljava/lang/String;

    const-string v3, "billingInfo.sku"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/f;->c:Lcom/yandex/metrica/impl/ob/n;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/f;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lyc/m;->k0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/f;->a:Z

    check-cast p1, Lcom/yandex/metrica/impl/ob/c3;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/c3;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/f;->a:Z

    return v0
.end method

.method public b()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/f;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/f;->a:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/f;->c:Lcom/yandex/metrica/impl/ob/n;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/f;->b:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lyc/m;->k0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/f;->a:Z

    .line 21
    .line 22
    check-cast v0, Lcom/yandex/metrica/impl/ob/c3;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/c3;->a(Ljava/util/List;Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
