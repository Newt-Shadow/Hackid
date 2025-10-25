.class public Lcom/yandex/metrica/impl/ob/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/l2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/w$a;,
        Lcom/yandex/metrica/impl/ob/w$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Lcom/yandex/metrica/impl/ob/w$a;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/yandex/metrica/impl/ob/w$b;",
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
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/w;->a:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/w;->b:Ljava/util/Set;

    .line 17
    .line 18
    sget-object v0, Lcom/yandex/metrica/impl/ob/w$a;->a:Lcom/yandex/metrica/impl/ob/w$a;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/w;->c:Lcom/yandex/metrica/impl/ob/w$a;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/w;->d:Ljava/util/Set;

    .line 28
    .line 29
    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/w$a;->a:Lcom/yandex/metrica/impl/ob/w$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/w;->a:Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/yandex/metrica/impl/ob/w$a;->c:Lcom/yandex/metrica/impl/ob/w$a;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/w;->b:Ljava/util/Set;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    sget-object v0, Lcom/yandex/metrica/impl/ob/w$a;->b:Lcom/yandex/metrica/impl/ob/w$a;

    .line 23
    .line 24
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/w;->c:Lcom/yandex/metrica/impl/ob/w$a;

    .line 25
    .line 26
    if-eq v1, v0, :cond_2

    .line 27
    .line 28
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/w;->c:Lcom/yandex/metrica/impl/ob/w$a;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/w;->d:Ljava/util/Set;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/yandex/metrica/impl/ob/w$b;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/w;->c:Lcom/yandex/metrica/impl/ob/w$a;

    .line 49
    .line 50
    invoke-interface {v1, v2}, Lcom/yandex/metrica/impl/ob/w$b;->a(Lcom/yandex/metrica/impl/ob/w$a;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/w$b;)Lcom/yandex/metrica/impl/ob/w$a;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/w;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/w;->c:Lcom/yandex/metrica/impl/ob/w$a;

    return-object p1
.end method

.method public a()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/w;->d()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/w;->a:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/w;->d()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/w;->c:Lcom/yandex/metrica/impl/ob/w$a;

    sget-object v1, Lcom/yandex/metrica/impl/ob/w$a;->c:Lcom/yandex/metrica/impl/ob/w$a;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/yandex/metrica/impl/ob/w$a;->b:Lcom/yandex/metrica/impl/ob/w$a;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/w;->c:Lcom/yandex/metrica/impl/ob/w$a;

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/w;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/w;->a:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/w;->d()V

    return-void
.end method

.method public c()Lcom/yandex/metrica/impl/ob/w$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/w;->c:Lcom/yandex/metrica/impl/ob/w$a;

    return-object v0
.end method

.method public c(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/w;->a:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/w;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/w;->d()V

    return-void
.end method
