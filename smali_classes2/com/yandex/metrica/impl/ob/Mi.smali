.class public final Lcom/yandex/metrica/impl/ob/Mi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/jd;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "GlobalServiceLocator.getInstance()"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->j()Lcom/yandex/metrica/impl/ob/jd;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "GlobalServiceLocator.get\u2026tance().modulesController"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Mi;->a:Lcom/yandex/metrica/impl/ob/jd;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/metrica/impl/ob/Ui;Lcom/yandex/metrica/impl/ob/Tl$a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Mi;->a:Lcom/yandex/metrica/impl/ob/jd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/jd;->c()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/yandex/metrica/impl/ob/Mi$a;

    .line 8
    .line 9
    invoke-direct {v1, p2}, Lcom/yandex/metrica/impl/ob/Mi$a;-><init>(Lcom/yandex/metrica/impl/ob/Tl$a;)V

    .line 10
    .line 11
    .line 12
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/Mi$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Ui;->b(Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
