.class public final Ld6/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ld6/t;

.field private final b:Landroid/content/Context;

.field private c:Z

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld6/t;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ld6/m;->c:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Ld6/m;->d:Ljava/util/Map;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Ld6/m;->e:Ljava/util/Map;

    .line 20
    .line 21
    new-instance v0, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Ld6/m;->f:Ljava/util/Map;

    .line 27
    .line 28
    iput-object p1, p0, Ld6/m;->b:Landroid/content/Context;

    .line 29
    .line 30
    iput-object p2, p0, Ld6/m;->a:Ld6/t;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Ld6/m;->a:Ld6/t;

    .line 2
    .line 3
    check-cast v0, Ld6/x;

    .line 4
    .line 5
    iget-object v0, v0, Ld6/x;->a:Ld6/y;

    .line 6
    .line 7
    invoke-static {v0}, Ld6/y;->m0(Ld6/y;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Ld6/m;->a:Ld6/t;

    .line 11
    .line 12
    check-cast v0, Ld6/x;

    .line 13
    .line 14
    invoke-virtual {v0}, Ld6/x;->a()Ld6/i;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p1}, Ld6/i;->b(Ljava/lang/String;)Landroid/location/Location;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public final b()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Ld6/m;->a:Ld6/t;

    .line 2
    .line 3
    check-cast v0, Ld6/x;

    .line 4
    .line 5
    iget-object v0, v0, Ld6/x;->a:Ld6/y;

    .line 6
    .line 7
    invoke-static {v0}, Ld6/y;->m0(Ld6/y;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Ld6/m;->a:Ld6/t;

    .line 11
    .line 12
    check-cast v0, Ld6/x;

    .line 13
    .line 14
    invoke-virtual {v0}, Ld6/x;->a()Ld6/i;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ld6/i;->n()Landroid/location/Location;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public final c(Ld6/p;Lm5/j;Ld6/g;)V
    .locals 10

    .line 1
    iget-object v0, p0, Ld6/m;->a:Ld6/t;

    .line 2
    .line 3
    check-cast v0, Ld6/x;

    .line 4
    .line 5
    iget-object v0, v0, Ld6/x;->a:Ld6/y;

    .line 6
    .line 7
    invoke-static {v0}, Ld6/y;->m0(Ld6/y;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lm5/j;->b()Lm5/j$a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    :goto_0
    move-object v8, p2

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v1, p0, Ld6/m;->f:Ljava/util/Map;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v2, p0, Ld6/m;->f:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ld6/l;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    new-instance v2, Ld6/l;

    .line 33
    .line 34
    invoke-direct {v2, p2}, Ld6/l;-><init>(Lm5/j;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    move-object p2, v2

    .line 38
    iget-object v2, p0, Ld6/m;->f:Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    goto :goto_0

    .line 45
    :goto_1
    if-nez v8, :cond_2

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    iget-object p2, p0, Ld6/m;->a:Ld6/t;

    .line 49
    .line 50
    check-cast p2, Ld6/x;

    .line 51
    .line 52
    invoke-virtual {p2}, Ld6/x;->a()Ld6/i;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    new-instance v0, Ld6/r;

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    move-object v3, v0

    .line 62
    move-object v5, p1

    .line 63
    move-object v9, p3

    .line 64
    invoke-direct/range {v3 .. v9}, Ld6/r;-><init>(ILd6/p;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p2, v0}, Ld6/i;->v0(Ld6/r;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    throw p1
.end method

.method public final d(Lm5/j$a;Ld6/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld6/m;->a:Ld6/t;

    .line 2
    .line 3
    check-cast v0, Ld6/x;

    .line 4
    .line 5
    iget-object v0, v0, Ld6/x;->a:Ld6/y;

    .line 6
    .line 7
    invoke-static {v0}, Ld6/y;->m0(Ld6/y;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "Invalid null listener key"

    .line 11
    .line 12
    invoke-static {p1, v0}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Ld6/m;->f:Ljava/util/Map;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Ld6/m;->f:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ld6/l;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Ld6/l;->f()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Ld6/m;->a:Ld6/t;

    .line 32
    .line 33
    check-cast v1, Ld6/x;

    .line 34
    .line 35
    invoke-virtual {v1}, Ld6/x;->a()Ld6/i;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {p1, p2}, Ld6/r;->g(Lg6/o;Ld6/g;)Ld6/r;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {v1, p1}, Ld6/i;->v0(Ld6/r;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p1
.end method

.method public final e(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld6/m;->a:Ld6/t;

    .line 2
    .line 3
    check-cast v0, Ld6/x;

    .line 4
    .line 5
    iget-object v0, v0, Ld6/x;->a:Ld6/y;

    .line 6
    .line 7
    invoke-static {v0}, Ld6/y;->m0(Ld6/y;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Ld6/m;->a:Ld6/t;

    .line 11
    .line 12
    check-cast v0, Ld6/x;

    .line 13
    .line 14
    invoke-virtual {v0}, Ld6/x;->a()Ld6/i;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p1}, Ld6/i;->c1(Z)V

    .line 19
    .line 20
    .line 21
    iput-boolean p1, p0, Ld6/m;->c:Z

    .line 22
    .line 23
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Ld6/m;->d:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ld6/m;->d:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Ld6/m;->d:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 31
    .line 32
    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 34
    iget-object v1, p0, Ld6/m;->f:Ljava/util/Map;

    .line 35
    .line 36
    monitor-enter v1

    .line 37
    :try_start_1
    iget-object v0, p0, Ld6/m;->f:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Ld6/l;

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    iget-object v3, p0, Ld6/m;->a:Ld6/t;

    .line 62
    .line 63
    check-cast v3, Ld6/x;

    .line 64
    .line 65
    invoke-virtual {v3}, Ld6/x;->a()Ld6/i;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-static {v2, v4}, Ld6/r;->g(Lg6/o;Ld6/g;)Ld6/r;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v3, v2}, Ld6/i;->v0(Ld6/r;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    iget-object v0, p0, Ld6/m;->f:Ljava/util/Map;

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 81
    .line 82
    .line 83
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    iget-object v0, p0, Ld6/m;->e:Ljava/util/Map;

    .line 85
    .line 86
    monitor-enter v0

    .line 87
    :try_start_2
    iget-object v1, p0, Ld6/m;->e:Ljava/util/Map;

    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_3

    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v2}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    iget-object v1, p0, Ld6/m;->e:Ljava/util/Map;

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 114
    .line 115
    .line 116
    monitor-exit v0

    .line 117
    return-void

    .line 118
    :catchall_0
    move-exception v1

    .line 119
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    throw v1

    .line 121
    :catchall_1
    move-exception v0

    .line 122
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    throw v0

    .line 124
    :catchall_2
    move-exception v1

    .line 125
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 126
    throw v1
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld6/m;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Ld6/m;->e(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
