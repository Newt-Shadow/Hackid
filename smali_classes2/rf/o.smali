.class public final Lrf/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrf/l;


# instance fields
.field private final a:Lrf/s;

.field private final b:Lrf/n;

.field private final c:Ltd/l0;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Lqf/a;

.field private g:Lrf/p;

.field private h:Lsf/d;


# direct methods
.method public constructor <init>(Lrf/s;Lrf/n;)V
    .locals 1

    .line 1
    const-string v0, "wrappedPlayer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "soundPoolManager"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lrf/o;->a:Lrf/s;

    .line 15
    .line 16
    iput-object p2, p0, Lrf/o;->b:Lrf/n;

    .line 17
    .line 18
    invoke-static {}, Ltd/z0;->c()Ltd/d2;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Ltd/m0;->a(Lad/i;)Ltd/l0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lrf/o;->c:Ltd/l0;

    .line 27
    .line 28
    invoke-virtual {p1}, Lrf/s;->j()Lqf/a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lrf/o;->f:Lqf/a;

    .line 33
    .line 34
    const/16 v0, 0x20

    .line 35
    .line 36
    invoke-virtual {p2, v0, p1}, Lrf/n;->b(ILqf/a;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lrf/o;->f:Lqf/a;

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Lrf/n;->e(Lqf/a;)Lrf/p;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    iput-object p1, p0, Lrf/o;->g:Lrf/p;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v0, "Could not create SoundPool "

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lrf/o;->f:Lqf/a;

    .line 63
    .line 64
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public static final synthetic k(Lrf/o;)Ltd/l0;
    .locals 0

    .line 1
    iget-object p0, p0, Lrf/o;->c:Ltd/l0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic l(Lrf/o;)Landroid/media/SoundPool;
    .locals 0

    .line 1
    invoke-direct {p0}, Lrf/o;->q()Landroid/media/SoundPool;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic m(Lrf/o;)Lrf/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lrf/o;->g:Lrf/p;

    .line 2
    .line 3
    return-object p0
.end method

.method private final q()Landroid/media/SoundPool;
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/o;->g:Lrf/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Lrf/p;->c()Landroid/media/SoundPool;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private final t(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final u(Lqf/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrf/o;->f:Lqf/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqf/a;->a()Landroid/media/AudioAttributes;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lqf/a;->a()Landroid/media/AudioAttributes;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lrf/o;->release()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lrf/o;->b:Lrf/n;

    .line 21
    .line 22
    const/16 v1, 0x20

    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Lrf/n;->b(ILqf/a;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lrf/o;->b:Lrf/n;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lrf/n;->e(Lqf/a;)Lrf/p;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iput-object v0, p0, Lrf/o;->g:Lrf/p;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "Could not create SoundPool "

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_1
    :goto_0
    iput-object p1, p0, Lrf/o;->f:Lqf/a;

    .line 66
    .line 67
    return-void
.end method

.method private final x(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "LOW_LATENCY mode does not support: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrf/o;->e:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p0}, Lrf/o;->q()Landroid/media/SoundPool;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0, p1}, Lrf/o;->t(Z)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v1, v0, p1}, Landroid/media/SoundPool;->setLoop(II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public d(Lsf/c;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p0}, Lsf/c;->b(Lrf/o;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lrf/o;->e:Ljava/lang/Integer;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0}, Lrf/o;->stop()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lrf/o;->a:Lrf/s;

    .line 15
    .line 16
    invoke-virtual {v0}, Lrf/s;->o()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-direct {p0}, Lrf/o;->q()Landroid/media/SoundPool;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->resume(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :cond_1
    const-string p1, "seek"

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lrf/o;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 33
    .line 34
    .line 35
    new-instance p1, Lxc/c;

    .line 36
    .line 37
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public bridge synthetic f()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrf/o;->n()Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Integer;

    .line 6
    .line 7
    return-object v0
.end method

.method public g(Lqf/a;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lrf/o;->u(Lqf/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public bridge synthetic getDuration()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrf/o;->o()Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Integer;

    .line 6
    .line 7
    return-object v0
.end method

.method public h(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrf/o;->e:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p0}, Lrf/o;->q()Landroid/media/SoundPool;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0, p1, p2}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public j(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrf/o;->e:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p0}, Lrf/o;->q()Landroid/media/SoundPool;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0, p1}, Landroid/media/SoundPool;->setRate(IF)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public n()Ljava/lang/Void;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Ljava/lang/Void;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final p()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/o;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrf/o;->e:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p0}, Lrf/o;->q()Landroid/media/SoundPool;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->pause(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final r()Lsf/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/o;->h:Lsf/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public release()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lrf/o;->stop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lrf/o;->d:Ljava/lang/Integer;

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lrf/o;->h:Lsf/d;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v2, p0, Lrf/o;->g:Lrf/p;

    .line 18
    .line 19
    invoke-virtual {v2}, Lrf/p;->d()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    iget-object v3, p0, Lrf/o;->g:Lrf/p;

    .line 25
    .line 26
    invoke-virtual {v3}, Lrf/p;->d()Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    monitor-exit v2

    .line 39
    return-void

    .line 40
    :cond_1
    :try_start_1
    invoke-static {v3}, Lyc/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-ne v4, p0, :cond_2

    .line 45
    .line 46
    iget-object v3, p0, Lrf/o;->g:Lrf/p;

    .line 47
    .line 48
    invoke-virtual {v3}, Lrf/p;->d()Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lrf/o;->q()Landroid/media/SoundPool;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->unload(I)Z

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lrf/o;->g:Lrf/p;

    .line 63
    .line 64
    invoke-virtual {v1}, Lrf/p;->b()Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lrf/o;->a:Lrf/s;

    .line 76
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v4, "unloaded soundId "

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v1, v0}, Lrf/s;->t(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    :goto_0
    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lrf/o;->d:Ljava/lang/Integer;

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lrf/o;->w(Lsf/d;)V

    .line 105
    .line 106
    .line 107
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .line 109
    monitor-exit v2

    .line 110
    return-void

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    monitor-exit v2

    .line 113
    throw v0

    .line 114
    :cond_3
    return-void
.end method

.method public final s()Lrf/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/o;->a:Lrf/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public start()V
    .locals 9

    .line 1
    iget-object v0, p0, Lrf/o;->e:Ljava/lang/Integer;

    .line 2
    .line 3
    iget-object v1, p0, Lrf/o;->d:Ljava/lang/Integer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lrf/o;->q()Landroid/media/SoundPool;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->resume(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-direct {p0}, Lrf/o;->q()Landroid/media/SoundPool;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object v0, p0, Lrf/o;->a:Lrf/s;

    .line 30
    .line 31
    invoke-virtual {v0}, Lrf/s;->r()F

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    iget-object v0, p0, Lrf/o;->a:Lrf/s;

    .line 36
    .line 37
    invoke-virtual {v0}, Lrf/s;->r()F

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const/4 v6, 0x0

    .line 42
    iget-object v0, p0, Lrf/o;->a:Lrf/s;

    .line 43
    .line 44
    invoke-virtual {v0}, Lrf/s;->v()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-direct {p0, v0}, Lrf/o;->t(Z)I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    iget-object v0, p0, Lrf/o;->a:Lrf/s;

    .line 53
    .line 54
    invoke-virtual {v0}, Lrf/s;->q()F

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lrf/o;->e:Ljava/lang/Integer;

    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrf/o;->e:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p0}, Lrf/o;->q()Landroid/media/SoundPool;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lrf/o;->e:Ljava/lang/Integer;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final v(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrf/o;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final w(Lsf/d;)V
    .locals 17

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v1, v8, Lrf/o;->g:Lrf/p;

    .line 8
    .line 9
    invoke-virtual {v1}, Lrf/p;->d()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v9

    .line 13
    monitor-enter v9

    .line 14
    :try_start_0
    iget-object v1, v8, Lrf/o;->g:Lrf/p;

    .line 15
    .line 16
    invoke-virtual {v1}, Lrf/p;->d()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_0
    move-object v10, v2

    .line 35
    check-cast v10, Ljava/util/List;

    .line 36
    .line 37
    invoke-static {v10}, Lyc/m;->Q(Ljava/util/List;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lrf/o;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-object v2, v1, Lrf/o;->a:Lrf/s;

    .line 46
    .line 47
    invoke-virtual {v2}, Lrf/s;->p()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iget-object v3, v8, Lrf/o;->a:Lrf/s;

    .line 52
    .line 53
    invoke-virtual {v3, v2}, Lrf/s;->J(Z)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v1, Lrf/o;->d:Ljava/lang/Integer;

    .line 57
    .line 58
    iput-object v1, v8, Lrf/o;->d:Ljava/lang/Integer;

    .line 59
    .line 60
    iget-object v1, v8, Lrf/o;->a:Lrf/s;

    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v4, "Reusing soundId "

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v4, v8, Lrf/o;->d:Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v4, " for "

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, " is prepared="

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const/16 v2, 0x20

    .line 94
    .line 95
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Lrf/s;->t(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 110
    .line 111
    .line 112
    move-result-wide v5

    .line 113
    iget-object v1, v8, Lrf/o;->a:Lrf/s;

    .line 114
    .line 115
    const/4 v2, 0x0

    .line 116
    invoke-virtual {v1, v2}, Lrf/s;->J(Z)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v8, Lrf/o;->a:Lrf/s;

    .line 120
    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v3, "Fetching actual URL for "

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Lrf/s;->t(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v11, v8, Lrf/o;->c:Ltd/l0;

    .line 142
    .line 143
    invoke-static {}, Ltd/z0;->b()Ltd/i0;

    .line 144
    .line 145
    .line 146
    move-result-object v12

    .line 147
    const/4 v13, 0x0

    .line 148
    new-instance v14, Lrf/o$a;

    .line 149
    .line 150
    const/4 v7, 0x0

    .line 151
    move-object v1, v14

    .line 152
    move-object/from16 v2, p1

    .line 153
    .line 154
    move-object/from16 v3, p0

    .line 155
    .line 156
    move-object/from16 v4, p0

    .line 157
    .line 158
    invoke-direct/range {v1 .. v7}, Lrf/o$a;-><init>(Lsf/d;Lrf/o;Lrf/o;JLad/e;)V

    .line 159
    .line 160
    .line 161
    const/4 v15, 0x2

    .line 162
    const/16 v16, 0x0

    .line 163
    .line 164
    invoke-static/range {v11 .. v16}, Ltd/g;->d(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;ILjava/lang/Object;)Ltd/t1;

    .line 165
    .line 166
    .line 167
    :goto_0
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .line 169
    .line 170
    monitor-exit v9

    .line 171
    goto :goto_1

    .line 172
    :catchall_0
    move-exception v0

    .line 173
    monitor-exit v9

    .line 174
    throw v0

    .line 175
    :cond_2
    :goto_1
    iput-object v0, v8, Lrf/o;->h:Lsf/d;

    .line 176
    .line 177
    return-void
.end method
