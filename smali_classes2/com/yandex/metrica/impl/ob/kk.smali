.class public Lcom/yandex/metrica/impl/ob/kk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/b9;

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/Gk;

.field private e:I


# direct methods
.method constructor <init>(ILcom/yandex/metrica/impl/ob/b9;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/fk;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/fk;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/kk;-><init>(ILcom/yandex/metrica/impl/ob/b9;Lcom/yandex/metrica/impl/ob/Gk;)V

    return-void
.end method

.method constructor <init>(ILcom/yandex/metrica/impl/ob/b9;Lcom/yandex/metrica/impl/ob/Gk;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kk;->a:Ljava/util/LinkedList;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kk;->c:Ljava/util/LinkedList;

    .line 5
    iput p1, p0, Lcom/yandex/metrica/impl/ob/kk;->e:I

    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/kk;->b:Lcom/yandex/metrica/impl/ob/b9;

    .line 7
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/kk;->d:Lcom/yandex/metrica/impl/ob/Gk;

    .line 8
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/ob/kk;->a(Lcom/yandex/metrica/impl/ob/b9;)V

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/b9;)V
    .locals 4

    .line 9
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->h()Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/yandex/metrica/impl/ob/kk;->e:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/kk;->a:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 15
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/kk;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kk;->d:Lcom/yandex/metrica/impl/ob/Gk;

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/kk;->a:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/Gk;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method a(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kk;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/yandex/metrica/impl/ob/kk;->e:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kk;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kk;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kk;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/kk;->c:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/kk;->c:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/kk;->b:Lcom/yandex/metrica/impl/ob/b9;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kk;->c:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/b9;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/b9;

    :cond_1
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kk;->a:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object v0
.end method
