.class public Lcom/yandex/metrica/impl/ob/pm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "all"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-lez p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/yandex/metrica/impl/ob/pm;->c:I

    .line 7
    .line 8
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    const/high16 v0, 0x3f400000    # 0.75f

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {p1, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/pm;->a:Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v0, "maxSize <= 0"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method private a(I)V
    .locals 3

    .line 9
    :goto_0
    iget v0, p0, Lcom/yandex/metrica/impl/ob/pm;->b:I

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/pm;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/pm;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 12
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 13
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/pm;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget v2, p0, Lcom/yandex/metrica/impl/ob/pm;->b:I

    invoke-direct {p0, v1, v0}, Lcom/yandex/metrica/impl/ob/pm;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/yandex/metrica/impl/ob/pm;->b:I

    .line 15
    iget v0, p0, Lcom/yandex/metrica/impl/ob/pm;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/pm;->e:I

    goto :goto_0

    .line 16
    :cond_1
    :goto_1
    iget p1, p0, Lcom/yandex/metrica/impl/ob/pm;->b:I

    if-ltz p1, :cond_3

    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/pm;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/yandex/metrica/impl/ob/pm;->b:I

    if-nez p1, :cond_3

    :cond_2
    return-void

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/yandex/metrica/impl/ob/wk;

    .line 3
    .line 4
    move-object v1, p2

    .line 5
    check-cast v1, Landroid/util/Pair;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/wk;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    array-length v0, v0

    .line 14
    add-int/lit8 v0, v0, 0x4

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x4

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    if-ltz v0, :cond_0

    .line 21
    .line 22
    return v0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "Negative size: "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, "="

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/pm;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Lcom/yandex/metrica/impl/ob/pm;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/pm;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget p1, p0, Lcom/yandex/metrica/impl/ob/pm;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/yandex/metrica/impl/ob/pm;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    iget v0, p0, Lcom/yandex/metrica/impl/ob/pm;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/pm;->d:I

    .line 5
    iget v0, p0, Lcom/yandex/metrica/impl/ob/pm;->b:I

    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/pm;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/pm;->b:I

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/pm;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7
    iget v0, p0, Lcom/yandex/metrica/impl/ob/pm;->b:I

    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/pm;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/pm;->b:I

    .line 8
    :cond_0
    iget p1, p0, Lcom/yandex/metrica/impl/ob/pm;->c:I

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/pm;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    .line 18
    :try_start_0
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/pm;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/yandex/metrica/impl/ob/pm;->f:I

    .line 3
    .line 4
    iget v1, p0, Lcom/yandex/metrica/impl/ob/pm;->g:I

    .line 5
    .line 6
    add-int/2addr v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    mul-int/lit8 v0, v0, 0x64

    .line 11
    .line 12
    div-int/2addr v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    :goto_0
    const/4 v1, 0x4

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    iget v3, p0, Lcom/yandex/metrica/impl/ob/pm;->c:I

    .line 19
    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    aput-object v3, v1, v2

    .line 25
    .line 26
    iget v2, p0, Lcom/yandex/metrica/impl/ob/pm;->f:I

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x1

    .line 33
    aput-object v2, v1, v3

    .line 34
    .line 35
    iget v2, p0, Lcom/yandex/metrica/impl/ob/pm;->g:I

    .line 36
    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x2

    .line 42
    aput-object v2, v1, v3

    .line 43
    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v2, 0x3

    .line 49
    aput-object v0, v1, v2

    .line 50
    .line 51
    const-string v0, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    .line 52
    .line 53
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    .line 58
    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    monitor-exit p0

    .line 61
    throw v0
.end method
