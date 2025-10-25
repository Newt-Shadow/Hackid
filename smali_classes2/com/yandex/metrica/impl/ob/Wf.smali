.class public Lcom/yandex/metrica/impl/ob/Wf;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method private a(Ljava/lang/Integer;Ljava/lang/String;)I
    .locals 3

    .line 34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-ge v0, v1, :cond_0

    .line 36
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/Ul;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cm;

    move-result-object p2

    .line 37
    filled-new-array {v2, p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Value passed as maxReportsInDatabaseCount is invalid. Should be greater than or equal to %d, but was: %d. Default value (%d) will be used"

    .line 38
    invoke-virtual {p2, v0, p1}, Lcom/yandex/metrica/coreutils/logger/a;->fw(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 39
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_1

    .line 40
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/Ul;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cm;

    move-result-object p2

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Value passed as maxReportsInDatabaseCount is invalid. Should be less than or equal to %d, but was: %d. Default value (%d) will be used"

    .line 43
    invoke-virtual {p2, v0, p1}, Lcom/yandex/metrica/coreutils/logger/a;->fw(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 44
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/f;)Lcom/yandex/metrica/f;
    .locals 2

    .line 29
    iget-object v0, p1, Lcom/yandex/metrica/ReporterConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {p1}, Lcom/yandex/metrica/f;->a(Lcom/yandex/metrica/f;)Lcom/yandex/metrica/f$a;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/ReporterConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    .line 31
    invoke-direct {p0, v1, p1}, Lcom/yandex/metrica/impl/ob/Wf;->a(Ljava/lang/Integer;Ljava/lang/String;)I

    move-result p1

    .line 32
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/f$a;->a(I)Lcom/yandex/metrica/f$a;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/yandex/metrica/f$a;->b()Lcom/yandex/metrica/f;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public a(Lcom/yandex/metrica/j;)Lcom/yandex/metrica/j;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    invoke-static {p1}, Lcom/yandex/metrica/j;->a(Lcom/yandex/metrica/YandexMetricaConfig;)Lcom/yandex/metrica/j$b;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->h(Ljava/util/List;)Lcom/yandex/metrica/j$b;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/yandex/metrica/j;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p1, Lcom/yandex/metrica/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->n(Ljava/lang/String;)Lcom/yandex/metrica/j$b;

    .line 5
    :cond_0
    iget-object v1, p1, Lcom/yandex/metrica/j;->b:Ljava/util/Map;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/yandex/metrica/j;->i:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p1, Lcom/yandex/metrica/j;->b:Ljava/util/Map;

    iget-object v2, p1, Lcom/yandex/metrica/j;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/j$b;->i(Ljava/util/Map;Ljava/lang/Boolean;)Lcom/yandex/metrica/j$b;

    .line 7
    :cond_1
    iget-object v1, p1, Lcom/yandex/metrica/j;->e:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p1, Lcom/yandex/metrica/j;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->b(I)Lcom/yandex/metrica/j$b;

    .line 9
    :cond_2
    iget-object v1, p1, Lcom/yandex/metrica/j;->f:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, p1, Lcom/yandex/metrica/j;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->m(I)Lcom/yandex/metrica/j$b;

    .line 11
    :cond_3
    iget-object v1, p1, Lcom/yandex/metrica/j;->g:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    iget-object v1, p1, Lcom/yandex/metrica/j;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->r(I)Lcom/yandex/metrica/j$b;

    .line 13
    :cond_4
    iget-object v1, p1, Lcom/yandex/metrica/j;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    iget-object v1, p1, Lcom/yandex/metrica/j;->c:Ljava/lang/String;

    .line 15
    iput-object v1, v0, Lcom/yandex/metrica/j$b;->f:Ljava/lang/String;

    .line 16
    :cond_5
    iget-object v1, p1, Lcom/yandex/metrica/j;->h:Ljava/util/Map;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17
    iget-object v1, p1, Lcom/yandex/metrica/j;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/yandex/metrica/j$b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/j$b;

    goto :goto_0

    .line 19
    :cond_6
    iget-object v1, p1, Lcom/yandex/metrica/j;->j:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    iget-object v1, p1, Lcom/yandex/metrica/j;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->D(Z)Lcom/yandex/metrica/j$b;

    .line 21
    :cond_7
    iget-object v1, p1, Lcom/yandex/metrica/j;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 22
    iget-object v1, p1, Lcom/yandex/metrica/j;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->h(Ljava/util/List;)Lcom/yandex/metrica/j$b;

    .line 23
    :cond_8
    iget-object v1, p1, Lcom/yandex/metrica/j;->k:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 24
    iget-object v1, p1, Lcom/yandex/metrica/j;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->p(Z)Lcom/yandex/metrica/j$b;

    .line 25
    :cond_9
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->apiKey:Ljava/lang/String;

    .line 26
    invoke-direct {p0, v1, p1}, Lcom/yandex/metrica/impl/ob/Wf;->a(Ljava/lang/Integer;Ljava/lang/String;)I

    move-result p1

    .line 27
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/j$b;->v(I)Lcom/yandex/metrica/j$b;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/yandex/metrica/j$b;->k()Lcom/yandex/metrica/j;

    move-result-object p1

    :cond_a
    return-object p1
.end method
