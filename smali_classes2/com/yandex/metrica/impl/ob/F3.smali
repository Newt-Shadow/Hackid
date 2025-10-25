.class public Lcom/yandex/metrica/impl/ob/F3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/P3;
.implements Lcom/yandex/metrica/impl/ob/ki;
.implements Lcom/yandex/metrica/impl/ob/R3;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/metrica/impl/ob/I3;

.field private final c:Lcom/yandex/metrica/impl/ob/ei;

.field private final d:Lcom/yandex/metrica/impl/ob/ri;

.field private final e:Lcom/yandex/metrica/impl/ob/c4;

.field private final f:Lcom/yandex/metrica/impl/ob/xb;

.field private final g:Lcom/yandex/metrica/impl/ob/N4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/N4<",
            "Lcom/yandex/metrica/impl/ob/M4;",
            "Lcom/yandex/metrica/impl/ob/F3;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/yandex/metrica/impl/ob/w2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/w2<",
            "Lcom/yandex/metrica/impl/ob/F3;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/V0;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/yandex/metrica/impl/ob/J3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/J3;"
        }
    .end annotation
.end field

.field private k:Lcom/yandex/metrica/impl/ob/Jf;

.field private final l:Lcom/yandex/metrica/impl/ob/M;

.field private final m:Lcom/yandex/metrica/impl/ob/ug;

.field private final n:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ei;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/D3;Lcom/yandex/metrica/impl/ob/c4;Lcom/yandex/metrica/impl/ob/sg;Lcom/yandex/metrica/impl/ob/J3;Lcom/yandex/metrica/impl/ob/H3;Lcom/yandex/metrica/impl/ob/N;Lcom/yandex/metrica/impl/ob/xb;Lcom/yandex/metrica/impl/ob/ug;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/impl/ob/ei;",
            "Lcom/yandex/metrica/impl/ob/I3;",
            "Lcom/yandex/metrica/impl/ob/D3;",
            "Lcom/yandex/metrica/impl/ob/c4;",
            "Lcom/yandex/metrica/impl/ob/sg;",
            "Lcom/yandex/metrica/impl/ob/J3;",
            "Lcom/yandex/metrica/impl/ob/H3;",
            "Lcom/yandex/metrica/impl/ob/N;",
            "Lcom/yandex/metrica/impl/ob/xb;",
            "Lcom/yandex/metrica/impl/ob/ug;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p6, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/F3;->i:Ljava/util/List;

    .line 10
    .line 11
    new-instance p6, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/F3;->n:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/F3;->a:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/F3;->b:Lcom/yandex/metrica/impl/ob/I3;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/F3;->c:Lcom/yandex/metrica/impl/ob/ei;

    .line 27
    .line 28
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/F3;->e:Lcom/yandex/metrica/impl/ob/c4;

    .line 29
    .line 30
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/F3;->j:Lcom/yandex/metrica/impl/ob/J3;

    .line 31
    .line 32
    invoke-virtual {p8, p0}, Lcom/yandex/metrica/impl/ob/H3;->a(Lcom/yandex/metrica/impl/ob/F3;)Lcom/yandex/metrica/impl/ob/N4;

    .line 33
    .line 34
    .line 35
    move-result-object p5

    .line 36
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/F3;->g:Lcom/yandex/metrica/impl/ob/N4;

    .line 37
    .line 38
    iget-object p4, p4, Lcom/yandex/metrica/impl/ob/D3;->a:Lcom/yandex/metrica/impl/ob/Mg$b;

    .line 39
    .line 40
    invoke-virtual {p2, p1, p3, p4}, Lcom/yandex/metrica/impl/ob/ei;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/Mg$b;)Lcom/yandex/metrica/impl/ob/ri;

    .line 41
    .line 42
    .line 43
    move-result-object p4

    .line 44
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/F3;->d:Lcom/yandex/metrica/impl/ob/ri;

    .line 45
    .line 46
    iput-object p10, p0, Lcom/yandex/metrica/impl/ob/F3;->f:Lcom/yandex/metrica/impl/ob/xb;

    .line 47
    .line 48
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/ob/ri;->d()Lcom/yandex/metrica/impl/ob/pi;

    .line 49
    .line 50
    .line 51
    move-result-object p5

    .line 52
    invoke-virtual {p10, p1, p5}, Lcom/yandex/metrica/impl/ob/xb;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p9, p4, p10, p1}, Lcom/yandex/metrica/impl/ob/N;->a(Lcom/yandex/metrica/impl/ob/ri;Lcom/yandex/metrica/impl/ob/xb;Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/M;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/F3;->l:Lcom/yandex/metrica/impl/ob/M;

    .line 60
    .line 61
    invoke-virtual {p8, p0, p4}, Lcom/yandex/metrica/impl/ob/H3;->a(Lcom/yandex/metrica/impl/ob/F3;Lcom/yandex/metrica/impl/ob/ri;)Lcom/yandex/metrica/impl/ob/w2;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/F3;->h:Lcom/yandex/metrica/impl/ob/w2;

    .line 66
    .line 67
    iput-object p11, p0, Lcom/yandex/metrica/impl/ob/F3;->m:Lcom/yandex/metrica/impl/ob/ug;

    .line 68
    .line 69
    invoke-virtual {p2, p3, p0}, Lcom/yandex/metrica/impl/ob/ei;->a(Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/ki;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private a(Landroid/os/ResultReceiver;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ResultReceiver;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F3;->l:Lcom/yandex/metrica/impl/ob/M;

    .line 61
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/M;->a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/L;

    move-result-object p2

    .line 62
    sget v0, Lcom/yandex/metrica/impl/ob/f0;->b:I

    if-eqz p1, :cond_0

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/L;->c(Landroid/os/Bundle;)V

    const/4 p2, 0x1

    .line 65
    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/D3$a;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F3;->e:Lcom/yandex/metrica/impl/ob/c4;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/c4;->a()Lcom/yandex/metrica/impl/ob/D3$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/ResultReceiver;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F3;->m:Lcom/yandex/metrica/impl/ob/ug;

    new-instance v1, Lcom/yandex/metrica/impl/ob/F3$a;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/F3$a;-><init>(Lcom/yandex/metrica/impl/ob/F3;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ug;->a(Lcom/yandex/metrica/impl/ob/cg;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/D3$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F3;->e:Lcom/yandex/metrica/impl/ob/c4;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/c4;->a(Lcom/yandex/metrica/impl/ob/D3$a;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/D3;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F3;->d:Lcom/yandex/metrica/impl/ob/ri;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/D3;->a:Lcom/yandex/metrica/impl/ob/Mg$b;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ri;->a(Lcom/yandex/metrica/impl/ob/Mg$b;)V

    .line 58
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/D3;->b:Lcom/yandex/metrica/impl/ob/D3$a;

    .line 59
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F3;->e:Lcom/yandex/metrica/impl/ob/c4;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/c4;->a(Lcom/yandex/metrica/impl/ob/D3$a;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/V0;)V
    .locals 4

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/V0;->b()Ljava/util/List;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/V0;->c()Landroid/os/ResultReceiver;

    move-result-object v1

    .line 46
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/V0;->a()Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v2, v0

    move-object v0, v1

    .line 47
    :goto_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/F3;->d:Lcom/yandex/metrica/impl/ob/ri;

    invoke-virtual {v3, v0, v2}, Lcom/yandex/metrica/impl/ob/ri;->a(Ljava/util/List;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    invoke-direct {p0, v1, v2}, Lcom/yandex/metrica/impl/ob/F3;->a(Landroid/os/ResultReceiver;Ljava/util/Map;)V

    .line 49
    :cond_1
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/F3;->d:Lcom/yandex/metrica/impl/ob/ri;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/ri;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 50
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/F3;->n:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F3;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/F3;->h:Lcom/yandex/metrica/impl/ob/w2;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/w2;->d()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 54
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    if-eqz v0, :cond_4

    .line 55
    invoke-direct {p0, v1, v2}, Lcom/yandex/metrica/impl/ob/F3;->a(Landroid/os/ResultReceiver;Ljava/util/Map;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/n4;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F3;->g:Lcom/yandex/metrica/impl/ob/N4;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/N4;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/n4;)Z

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/gi;Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 4

    .line 32
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/F3;->n:Ljava/lang/Object;

    monitor-enter p2

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F3;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/V0;

    .line 34
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/V0;->c()Landroid/os/ResultReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/F3;->l:Lcom/yandex/metrica/impl/ob/M;

    .line 35
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/V0;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/yandex/metrica/impl/ob/M;->a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/L;

    move-result-object v1

    .line 36
    sget v3, Lcom/yandex/metrica/impl/ob/f0;->b:I

    if-eqz v2, :cond_0

    .line 37
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 38
    invoke-virtual {p1, v3}, Lcom/yandex/metrica/impl/ob/gi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 39
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/ob/L;->c(Landroid/os/Bundle;)V

    const/4 v1, 0x2

    .line 40
    invoke-virtual {v2, v1, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/F3;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 42
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/n4;)V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F3;->j:Lcom/yandex/metrica/impl/ob/J3;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/J3;->a(Lcom/yandex/metrica/impl/ob/k4;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F3;->d:Lcom/yandex/metrica/impl/ob/ri;

    .line 4
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ri;->d()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/pi;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F3;->l:Lcom/yandex/metrica/impl/ob/M;

    .line 6
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/M;->a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/L;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/n4;->a(Lcom/yandex/metrica/impl/ob/L;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 5

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F3;->f:Lcom/yandex/metrica/impl/ob/xb;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/xb;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F3;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F3;->j:Lcom/yandex/metrica/impl/ob/J3;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/J3;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/K;

    .line 13
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->v()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 14
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/F3;->l:Lcom/yandex/metrica/impl/ob/M;

    .line 15
    invoke-virtual {v4, v3}, Lcom/yandex/metrica/impl/ob/M;->a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/L;

    move-result-object v3

    .line 16
    invoke-interface {v2, v3}, Lcom/yandex/metrica/impl/ob/K;->a(Lcom/yandex/metrica/impl/ob/L;)V

    goto :goto_0

    .line 17
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/F3;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/metrica/impl/ob/V0;

    .line 19
    invoke-virtual {v3, p1}, Lcom/yandex/metrica/impl/ob/V0;->a(Lcom/yandex/metrica/impl/ob/pi;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 20
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/V0;->c()Landroid/os/ResultReceiver;

    move-result-object v4

    .line 21
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/V0;->a()Ljava/util/Map;

    move-result-object v3

    .line 22
    invoke-direct {p0, v4, v3}, Lcom/yandex/metrica/impl/ob/F3;->a(Landroid/os/ResultReceiver;Ljava/util/Map;)V

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 24
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/F3;->i:Ljava/util/List;

    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 26
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F3;->h:Lcom/yandex/metrica/impl/ob/w2;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/w2;->d()V

    .line 27
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F3;->k:Lcom/yandex/metrica/impl/ob/Jf;

    if-nez v0, :cond_4

    .line 29
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->l()Lcom/yandex/metrica/impl/ob/Jf;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/F3;->k:Lcom/yandex/metrica/impl/ob/Jf;

    .line 30
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F3;->k:Lcom/yandex/metrica/impl/ob/Jf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Jf;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    return-void

    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F3;->a:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized b(Lcom/yandex/metrica/impl/ob/n4;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F3;->j:Lcom/yandex/metrica/impl/ob/J3;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/J3;->b(Lcom/yandex/metrica/impl/ob/k4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
