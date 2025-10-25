.class public Lcom/yandex/metrica/impl/ob/A1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/B1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/A1$d;,
        Lcom/yandex/metrica/impl/ob/A1$e;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/rm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/rm<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/ob/A1$e;",
            "Lcom/yandex/metrica/impl/ob/A1$d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/ob/A1$e;",
            "Lcom/yandex/metrica/impl/ob/A1$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/rm;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/rm;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/A1;->a:Lcom/yandex/metrica/impl/ob/rm;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/A1;->b:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/A1;->c:Ljava/util/Map;

    .line 24
    .line 25
    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/ob/A1$e;",
            "Lcom/yandex/metrica/impl/ob/A1$d;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/A1$d;

    invoke-interface {v1, p1, p0}, Lcom/yandex/metrica/impl/ob/A1$d;->a(Landroid/content/Intent;Lcom/yandex/metrica/impl/ob/A1;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/A1$e;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/A1$e;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static a(Lcom/yandex/metrica/impl/ob/A1;)Z
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/A1;->c()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static a(Lcom/yandex/metrica/impl/ob/A1;Landroid/content/Intent;)Z
    .locals 1

    .line 9
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/A1;->e(Landroid/content/Intent;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/A1;->c()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    move v0, p1

    :cond_1
    return v0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/A1;Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/A1;->e(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method private c()I
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A1;->a:Lcom/yandex/metrica/impl/ob/rm;

    const-string v1, "com.yandex.metrica.IMetricaService"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/rm;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    return v2
.end method

.method private d(Landroid/content/Intent;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "/client"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    :try_start_0
    const-string v0, "pid"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    :cond_0
    const/4 p1, -0x1

    .line 31
    :goto_0
    return p1
.end method

.method private e(Landroid/content/Intent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "com.yandex.metrica.IMetricaService"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/A1;->d(Landroid/content/Intent;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    .line 25
    move v1, v2

    .line 26
    :cond_0
    xor-int/lit8 p1, v1, 0x1

    .line 27
    .line 28
    return p1

    .line 29
    :cond_1
    return v1
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/A1;->a:Lcom/yandex/metrica/impl/ob/rm;

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/A1;->d(Landroid/content/Intent;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/rm;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Collection;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A1;->b:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/A1;->a(Landroid/content/Intent;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/A1$e;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A1;->c:Ljava/util/Map;

    new-instance v1, Lcom/yandex/metrica/impl/ob/A1$c;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/A1$c;-><init>(Lcom/yandex/metrica/impl/ob/A1;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/A1;->a:Lcom/yandex/metrica/impl/ob/rm;

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/A1;->d(Landroid/content/Intent;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/rm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Collection;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A1;->c:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/A1;->a(Landroid/content/Intent;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public b(Lcom/yandex/metrica/impl/ob/A1$e;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A1;->b:Ljava/util/Map;

    new-instance v1, Lcom/yandex/metrica/impl/ob/A1$a;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/A1$a;-><init>(Lcom/yandex/metrica/impl/ob/A1;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/A1;->a:Lcom/yandex/metrica/impl/ob/rm;

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/A1;->d(Landroid/content/Intent;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/rm;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Collection;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A1;->b:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/A1;->a(Landroid/content/Intent;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/yandex/metrica/impl/ob/A1$e;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A1;->b:Ljava/util/Map;

    new-instance v1, Lcom/yandex/metrica/impl/ob/A1$b;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/A1$b;-><init>(Lcom/yandex/metrica/impl/ob/A1;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
