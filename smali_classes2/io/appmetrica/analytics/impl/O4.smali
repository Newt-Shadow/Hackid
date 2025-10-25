.class public final Lio/appmetrica/analytics/impl/O4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Qa;
.implements Lio/appmetrica/analytics/impl/Bl;
.implements Lio/appmetrica/analytics/impl/Sa;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/h5;

.field public final c:Lio/appmetrica/analytics/impl/mm;

.field public final d:Lio/appmetrica/analytics/impl/Ah;

.field public final e:Lio/appmetrica/analytics/impl/V4;

.field public final f:Lio/appmetrica/analytics/impl/Sm;

.field public g:Ljava/util/ArrayList;

.field public final h:Lio/appmetrica/analytics/impl/i5;

.field public final i:Lio/appmetrica/analytics/impl/jg;

.field public final j:Lio/appmetrica/analytics/impl/l4;

.field public final k:Lio/appmetrica/analytics/impl/og;

.field public final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/sl;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/G4;Lio/appmetrica/analytics/impl/Ah;Lio/appmetrica/analytics/impl/jg;Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Q4;Lio/appmetrica/analytics/impl/og;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/O4;->g:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/O4;->l:Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/O4;->a:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lio/appmetrica/analytics/impl/O4;->b:Lio/appmetrica/analytics/impl/h5;

    .line 7
    iput-object p5, p0, Lio/appmetrica/analytics/impl/O4;->d:Lio/appmetrica/analytics/impl/Ah;

    .line 8
    iput-object p7, p0, Lio/appmetrica/analytics/impl/O4;->h:Lio/appmetrica/analytics/impl/i5;

    .line 9
    invoke-static {p0}, Lio/appmetrica/analytics/impl/Q4;->a(Lio/appmetrica/analytics/impl/O4;)Lio/appmetrica/analytics/impl/V4;

    move-result-object p5

    iput-object p5, p0, Lio/appmetrica/analytics/impl/O4;->e:Lio/appmetrica/analytics/impl/V4;

    .line 10
    invoke-static {p4}, Lio/appmetrica/analytics/impl/O4;->b(Lio/appmetrica/analytics/impl/G4;)V

    .line 11
    iget-object p4, p4, Lio/appmetrica/analytics/impl/G4;->a:Lio/appmetrica/analytics/impl/Kl;

    invoke-virtual {p2, p1, p3, p4}, Lio/appmetrica/analytics/impl/sl;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/Kl;)Lio/appmetrica/analytics/impl/mm;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/O4;->c:Lio/appmetrica/analytics/impl/mm;

    .line 12
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    move-result-object p4

    invoke-virtual {p4}, Lio/appmetrica/analytics/impl/za;->b()Lio/appmetrica/analytics/impl/O;

    move-result-object p4

    .line 13
    invoke-static {p1, p4}, Lio/appmetrica/analytics/impl/m4;->a(Lio/appmetrica/analytics/impl/mm;Lio/appmetrica/analytics/impl/O;)Lio/appmetrica/analytics/impl/l4;

    move-result-object p4

    iput-object p4, p0, Lio/appmetrica/analytics/impl/O4;->j:Lio/appmetrica/analytics/impl/l4;

    .line 14
    invoke-virtual {p8, p0, p1}, Lio/appmetrica/analytics/impl/Q4;->a(Lio/appmetrica/analytics/impl/O4;Lio/appmetrica/analytics/impl/mm;)Lio/appmetrica/analytics/impl/Sm;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/O4;->f:Lio/appmetrica/analytics/impl/Sm;

    .line 15
    iput-object p6, p0, Lio/appmetrica/analytics/impl/O4;->i:Lio/appmetrica/analytics/impl/jg;

    .line 16
    iput-object p9, p0, Lio/appmetrica/analytics/impl/O4;->k:Lio/appmetrica/analytics/impl/og;

    .line 17
    invoke-virtual {p2, p3, p0}, Lio/appmetrica/analytics/impl/sl;->a(Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/Bl;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/sl;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/G4;Lio/appmetrica/analytics/impl/jg;)V
    .locals 10

    .line 1
    new-instance v5, Lio/appmetrica/analytics/impl/Ah;

    iget-object v0, p4, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/F4;

    invoke-direct {v5, v0}, Lio/appmetrica/analytics/impl/Ah;-><init>(Lio/appmetrica/analytics/impl/F4;)V

    new-instance v7, Lio/appmetrica/analytics/impl/i5;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/i5;-><init>()V

    new-instance v8, Lio/appmetrica/analytics/impl/Q4;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/Q4;-><init>()V

    new-instance v9, Lio/appmetrica/analytics/impl/og;

    invoke-direct {v9}, Lio/appmetrica/analytics/impl/og;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v9}, Lio/appmetrica/analytics/impl/O4;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/sl;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/G4;Lio/appmetrica/analytics/impl/Ah;Lio/appmetrica/analytics/impl/jg;Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Q4;Lio/appmetrica/analytics/impl/og;)V

    return-void
.end method

.method public static b(Lio/appmetrica/analytics/impl/G4;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/F4;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F4;->n:Ljava/lang/Boolean;

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 3
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 4
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->b()Lio/appmetrica/analytics/impl/O;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/O;->b(Z)V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/l4;
    .locals 1

    .line 69
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->j:Lio/appmetrica/analytics/impl/l4;

    return-object v0
.end method

.method public final a(Landroid/os/ResultReceiver;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->k:Lio/appmetrica/analytics/impl/og;

    new-instance v1, Lio/appmetrica/analytics/impl/N4;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/N4;-><init>(Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/og;->a(Lio/appmetrica/analytics/impl/bg;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/F4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->d:Lio/appmetrica/analytics/impl/Ah;

    .line 2
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Ah;->a:Lio/appmetrica/analytics/impl/F4;

    .line 3
    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/F4;->b(Lio/appmetrica/analytics/impl/F4;)Lio/appmetrica/analytics/impl/F4;

    move-result-object p1

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Ah;->a:Lio/appmetrica/analytics/impl/F4;

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/G4;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->c:Lio/appmetrica/analytics/impl/mm;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/G4;->a:Lio/appmetrica/analytics/impl/Kl;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/mm;->a(Lio/appmetrica/analytics/impl/Kl;)V

    .line 71
    iget-object p1, p1, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/F4;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/O4;->a(Lio/appmetrica/analytics/impl/F4;)V

    return-void
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/L4;)V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->h:Lio/appmetrica/analytics/impl/i5;

    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->c:Lio/appmetrica/analytics/impl/mm;

    .line 8
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/mm;->e()Lio/appmetrica/analytics/impl/Ql;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ql;->l:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Lio/appmetrica/analytics/impl/rm;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/impl/O4;->j:Lio/appmetrica/analytics/impl/l4;

    .line 12
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/l4;->a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/k4;

    move-result-object v0

    .line 13
    iget-object p1, p1, Lio/appmetrica/analytics/impl/L4;->c:Landroid/os/ResultReceiver;

    .line 14
    invoke-static {p1, v0}, Lio/appmetrica/analytics/impl/M6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/k4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Ql;)V
    .locals 7

    .line 27
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/O4;->h:Lio/appmetrica/analytics/impl/i5;

    .line 29
    iget-object v1, v1, Lio/appmetrica/analytics/impl/i5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/impl/L4;

    .line 31
    iget-object v3, p1, Lio/appmetrica/analytics/impl/Ql;->l:Ljava/lang/String;

    .line 32
    invoke-static {v3}, Lio/appmetrica/analytics/impl/rm;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 33
    iget-object v4, p0, Lio/appmetrica/analytics/impl/O4;->j:Lio/appmetrica/analytics/impl/l4;

    .line 34
    invoke-virtual {v4, v3}, Lio/appmetrica/analytics/impl/l4;->a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/k4;

    move-result-object v3

    .line 35
    iget-object v2, v2, Lio/appmetrica/analytics/impl/L4;->c:Landroid/os/ResultReceiver;

    .line 36
    invoke-static {v2, v3}, Lio/appmetrica/analytics/impl/M6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/k4;)V

    goto :goto_0

    .line 37
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v2, p0, Lio/appmetrica/analytics/impl/O4;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/impl/jb;

    .line 39
    iget-object v4, v3, Lio/appmetrica/analytics/impl/jb;->b:Ljava/util/List;

    .line 40
    iget-object v5, v3, Lio/appmetrica/analytics/impl/jb;->c:Ljava/util/HashMap;

    new-instance v6, Lio/appmetrica/analytics/impl/hb;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/hb;-><init>()V

    invoke-static {p1, v4, v5, v6}, Lio/appmetrica/analytics/impl/Nl;->a(Lio/appmetrica/analytics/impl/Ql;Ljava/util/Collection;Ljava/util/Map;Lid/a;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    iget-object v4, v3, Lio/appmetrica/analytics/impl/jb;->a:Landroid/os/ResultReceiver;

    .line 42
    iget-object v3, v3, Lio/appmetrica/analytics/impl/jb;->c:Ljava/util/HashMap;

    .line 43
    iget-object v5, p0, Lio/appmetrica/analytics/impl/O4;->j:Lio/appmetrica/analytics/impl/l4;

    .line 44
    invoke-virtual {v5, v3}, Lio/appmetrica/analytics/impl/l4;->a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/k4;

    move-result-object v3

    .line 45
    invoke-static {v4, v3}, Lio/appmetrica/analytics/impl/M6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/k4;)V

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 47
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/O4;->g:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 49
    iget-object p1, p0, Lio/appmetrica/analytics/impl/O4;->f:Lio/appmetrica/analytics/impl/Sm;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Sm;->c()V

    .line 50
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/L4;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->e:Lio/appmetrica/analytics/impl/V4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v1, Lio/appmetrica/analytics/impl/U4;

    invoke-direct {v1, p2}, Lio/appmetrica/analytics/impl/U4;-><init>(Lio/appmetrica/analytics/impl/L4;)V

    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/O2;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/N2;)Z

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/jb;)V
    .locals 4

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p1, Lio/appmetrica/analytics/impl/jb;->b:Ljava/util/List;

    .line 53
    iget-object v1, p1, Lio/appmetrica/analytics/impl/jb;->a:Landroid/os/ResultReceiver;

    .line 54
    iget-object v2, p1, Lio/appmetrica/analytics/impl/jb;->c:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v2, v0

    move-object v0, v1

    .line 55
    :goto_0
    iget-object v3, p0, Lio/appmetrica/analytics/impl/O4;->c:Lio/appmetrica/analytics/impl/mm;

    invoke-virtual {v3, v0, v2}, Lio/appmetrica/analytics/impl/mm;->a(Ljava/util/List;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    iget-object v3, p0, Lio/appmetrica/analytics/impl/O4;->j:Lio/appmetrica/analytics/impl/l4;

    .line 57
    invoke-virtual {v3, v2}, Lio/appmetrica/analytics/impl/l4;->a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/k4;

    move-result-object v3

    .line 58
    invoke-static {v1, v3}, Lio/appmetrica/analytics/impl/M6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/k4;)V

    .line 59
    :cond_1
    iget-object v3, p0, Lio/appmetrica/analytics/impl/O4;->c:Lio/appmetrica/analytics/impl/mm;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/mm;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 60
    iget-object v3, p0, Lio/appmetrica/analytics/impl/O4;->l:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 61
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object p1, p0, Lio/appmetrica/analytics/impl/O4;->f:Lio/appmetrica/analytics/impl/Sm;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Sm;->c()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 64
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    if-eqz v0, :cond_4

    .line 65
    iget-object p1, p0, Lio/appmetrica/analytics/impl/O4;->j:Lio/appmetrica/analytics/impl/l4;

    .line 66
    invoke-virtual {p1, v2}, Lio/appmetrica/analytics/impl/l4;->a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/k4;

    move-result-object p1

    .line 67
    invoke-static {v1, p1}, Lio/appmetrica/analytics/impl/M6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/k4;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/ul;Lio/appmetrica/analytics/impl/Ql;)V
    .locals 4

    .line 17
    iget-object p2, p0, Lio/appmetrica/analytics/impl/O4;->l:Ljava/lang/Object;

    monitor-enter p2

    .line 18
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/jb;

    .line 19
    iget-object v2, v1, Lio/appmetrica/analytics/impl/jb;->a:Landroid/os/ResultReceiver;

    .line 20
    iget-object v3, p0, Lio/appmetrica/analytics/impl/O4;->j:Lio/appmetrica/analytics/impl/l4;

    .line 21
    iget-object v1, v1, Lio/appmetrica/analytics/impl/jb;->c:Ljava/util/HashMap;

    .line 22
    invoke-virtual {v3, v1}, Lio/appmetrica/analytics/impl/l4;->a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/k4;

    move-result-object v1

    .line 23
    invoke-static {v2, p1, v1}, Lio/appmetrica/analytics/impl/M6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/ul;Lio/appmetrica/analytics/impl/k4;)V

    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/O4;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 25
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()Lio/appmetrica/analytics/impl/h5;
    .locals 1

    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->b:Lio/appmetrica/analytics/impl/h5;

    return-object v0
.end method

.method public final declared-synchronized b(Lio/appmetrica/analytics/impl/L4;)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->h:Lio/appmetrica/analytics/impl/i5;

    .line 6
    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->COMMUTATION:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lio/appmetrica/analytics/impl/F4;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->d:Lio/appmetrica/analytics/impl/Ah;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ah;->a:Lio/appmetrica/analytics/impl/F4;

    .line 4
    .line 5
    return-object v0
.end method

.method public final e()Lio/appmetrica/analytics/impl/jg;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->i:Lio/appmetrica/analytics/impl/jg;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O4;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method
