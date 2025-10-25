.class public Lcom/yandex/metrica/impl/ob/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/l;


# instance fields
.field private a:Z

.field private final b:Lcom/yandex/metrica/impl/ob/n;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lzb/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/n;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/c;->c:Ljava/util/Map;

    .line 10
    .line 11
    check-cast p1, Lcom/yandex/metrica/impl/ob/c3;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c3;->a()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lzb/a;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/c;->c:Ljava/util/Map;

    .line 34
    .line 35
    iget-object v3, v1, Lzb/a;->b:Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c3;->b()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/c;->a:Z

    .line 46
    .line 47
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c;->b:Lcom/yandex/metrica/impl/ob/n;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lzb/a;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzb/a;

    return-object p1
.end method

.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lzb/a;",
            ">;)V"
        }
    .end annotation

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/c;->c:Ljava/util/Map;

    iget-object v2, v0, Lzb/a;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/c;->b:Lcom/yandex/metrica/impl/ob/n;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/c;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/c;->a:Z

    check-cast p1, Lcom/yandex/metrica/impl/ob/c3;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/c3;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/c;->a:Z

    return v0
.end method

.method public b()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/c;->a:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c;->b:Lcom/yandex/metrica/impl/ob/n;

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/c;->c:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/c;->a:Z

    .line 22
    .line 23
    check-cast v0, Lcom/yandex/metrica/impl/ob/c3;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/c3;->a(Ljava/util/List;Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
