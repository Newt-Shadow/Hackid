.class public Lcom/yandex/metrica/impl/ob/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/s$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/am;

.field private b:J

.field private c:Z

.field private final d:Lcom/yandex/metrica/impl/ob/bn;


# direct methods
.method constructor <init>(Ljava/lang/String;JLcom/yandex/metrica/impl/ob/bn;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p2, p0, Lcom/yandex/metrica/impl/ob/s;->b:J

    .line 4
    :try_start_0
    new-instance p2, Lcom/yandex/metrica/impl/ob/am;

    invoke-direct {p2, p1}, Lcom/yandex/metrica/impl/ob/am;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/s;->a:Lcom/yandex/metrica/impl/ob/am;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :catchall_0
    new-instance p1, Lcom/yandex/metrica/impl/ob/am;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/am;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/s;->a:Lcom/yandex/metrica/impl/ob/am;

    .line 6
    :goto_0
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/s;->d:Lcom/yandex/metrica/impl/ob/bn;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/yandex/metrica/impl/ob/cm;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/bn;

    const-string v1, "[App Environment]"

    invoke-direct {v0, p4, v1}, Lcom/yandex/metrica/impl/ob/bn;-><init>(Lcom/yandex/metrica/impl/ob/cm;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/metrica/impl/ob/s;-><init>(Ljava/lang/String;JLcom/yandex/metrica/impl/ob/bn;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/yandex/metrica/impl/ob/s$a;
    .locals 4

    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/s;->c:Z

    if-eqz v0, :cond_0

    .line 4
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/s;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/s;->b:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/s;->c:Z

    .line 6
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/s$a;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s;->a:Lcom/yandex/metrica/impl/ob/am;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Tl;->g(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/s;->b:J

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/s$a;-><init>(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s;->d:Lcom/yandex/metrica/impl/ob/bn;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s;->a:Lcom/yandex/metrica/impl/ob/am;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/yandex/metrica/impl/ob/bn;->b(Lcom/yandex/metrica/impl/ob/am;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/s;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/am;

    .line 3
    .line 4
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/am;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/s;->a:Lcom/yandex/metrica/impl/ob/am;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string v1, "Map size "

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s;->a:Lcom/yandex/metrica/impl/ob/am;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ". Is changed "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/s;->c:Z

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ". Current revision "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/s;->b:J

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    .line 43
    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    monitor-exit p0

    .line 46
    throw v0
.end method
