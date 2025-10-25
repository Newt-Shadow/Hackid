.class Lq2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq2/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq2/k$a;
    }
.end annotation


# instance fields
.field private final a:Lq2/k$a;

.field private final b:Lq2/i;

.field private final c:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/content/Context;Lq2/i;)V
    .locals 1

    .line 1
    new-instance v0, Lq2/k$a;

    invoke-direct {v0, p1}, Lq2/k$a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lq2/k;-><init>(Lq2/k$a;Lq2/i;)V

    return-void
.end method

.method constructor <init>(Lq2/k$a;Lq2/i;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq2/k;->c:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lq2/k;->a:Lq2/k$a;

    .line 5
    iput-object p2, p0, Lq2/k;->b:Lq2/i;

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Lq2/m;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lq2/k;->c:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lq2/k;->c:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lq2/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object p1

    .line 20
    :cond_0
    :try_start_1
    iget-object v0, p0, Lq2/k;->a:Lq2/k$a;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lq2/k$a;->b(Ljava/lang/String;)Lq2/d;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    const/4 p1, 0x0

    .line 30
    return-object p1

    .line 31
    :cond_1
    :try_start_2
    iget-object v1, p0, Lq2/k;->b:Lq2/i;

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Lq2/i;->a(Ljava/lang/String;)Lq2/h;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v0, v1}, Lq2/d;->create(Lq2/h;)Lq2/m;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lq2/k;->c:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-object v0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    monitor-exit p0

    .line 50
    throw p1
.end method
