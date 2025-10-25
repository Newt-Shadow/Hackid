.class public final Lcom/google/android/gms/measurement/internal/vb;
.super Lcom/google/android/gms/measurement/internal/e5;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/gms/measurement/internal/pb;

.field private d:Li6/e;

.field private volatile e:Ljava/lang/Boolean;

.field private final f:Lcom/google/android/gms/measurement/internal/x;

.field private g:Ljava/util/concurrent/ScheduledExecutorService;

.field private final h:Lcom/google/android/gms/measurement/internal/qc;

.field private final i:Ljava/util/List;

.field private final j:Lcom/google/android/gms/measurement/internal/x;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/w6;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/e5;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->i:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/measurement/internal/qc;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/qc;-><init>(Lcom/google/android/gms/common/util/d;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->h:Lcom/google/android/gms/measurement/internal/qc;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/gms/measurement/internal/pb;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/pb;-><init>(Lcom/google/android/gms/measurement/internal/vb;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->c:Lcom/google/android/gms/measurement/internal/pb;

    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/measurement/internal/va;

    .line 30
    .line 31
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/va;-><init>(Lcom/google/android/gms/measurement/internal/vb;Lcom/google/android/gms/measurement/internal/b8;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->f:Lcom/google/android/gms/measurement/internal/x;

    .line 35
    .line 36
    new-instance v0, Lcom/google/android/gms/measurement/internal/za;

    .line 37
    .line 38
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/za;-><init>(Lcom/google/android/gms/measurement/internal/vb;Lcom/google/android/gms/measurement/internal/b8;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->j:Lcom/google/android/gms/measurement/internal/x;

    .line 42
    .line 43
    return-void
.end method

.method private final R()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0
.end method

.method private final S()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->h:Lcom/google/android/gms/measurement/internal/qc;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/qc;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/google/android/gms/measurement/internal/c5;->Z:Lcom/google/android/gms/measurement/internal/b5;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b5;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/vb;->f:Lcom/google/android/gms/measurement/internal/x;

    .line 28
    .line 29
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/x;->b(J)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private final T(Ljava/lang/Runnable;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/vb;->W()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->i:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    int-to-long v1, v1

    .line 21
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 24
    .line 25
    .line 26
    const-wide/16 v4, 0x3e8

    .line 27
    .line 28
    cmp-long v1, v1, v4

    .line 29
    .line 30
    if-ltz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "Discarding data. Max runnable queue size reached"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/vb;->j:Lcom/google/android/gms/measurement/internal/x;

    .line 50
    .line 51
    const-wide/32 v0, 0xea60

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/x;->b(J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/vb;->w()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private final U()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/vb;->i:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "Processing queued up service tasks"

    .line 25
    .line 26
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/Runnable;

    .line 44
    .line 45
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v3, "Task exception while flushing queue"

    .line 61
    .line 62
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->i:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->j:Lcom/google/android/gms/measurement/internal/x;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/x;->d()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private final V(Z)Lcom/google/android/gms/measurement/internal/ae;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->L()Lcom/google/android/gms/measurement/internal/f5;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d6;->e:Lcom/google/android/gms/measurement/internal/b6;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/d6;->e:Lcom/google/android/gms/measurement/internal/b6;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/b6;->b()Landroid/util/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    sget-object v0, Lcom/google/android/gms/measurement/internal/d6;->A:Landroid/util/Pair;

    .line 43
    .line 44
    if-ne p1, v0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    add-int/2addr v2, v3

    .line 74
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, ":"

    .line 81
    .line 82
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    :cond_2
    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/f5;->o(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/ae;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    return-object p1
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->c:Lcom/google/android/gms/measurement/internal/pb;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pb;->c()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static {}, Lr5/b;->b()Lr5/b;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2, v0}, Lr5/b;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->d:Li6/e;

    .line 27
    .line 28
    return-void
.end method

.method public final B(Lcom/google/android/gms/internal/measurement/w1;Lcom/google/android/gms/measurement/internal/g0;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const v2, 0xbdfcb8

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/yd;->X(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const-string p3, "Not bundling data. Service unavailable or out of date"

    .line 31
    .line 32
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const/4 p3, 0x0

    .line 40
    new-array p3, p3, [B

    .line 41
    .line 42
    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/yd;->d0(Lcom/google/android/gms/internal/measurement/w1;[B)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/ya;

    .line 47
    .line 48
    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/measurement/internal/ya;-><init>(Lcom/google/android/gms/measurement/internal/vb;Lcom/google/android/gms/measurement/internal/g0;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/w1;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method final C()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/vb;->y()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/yd;->W()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sget-object v2, Lcom/google/android/gms/measurement/internal/c5;->K0:Lcom/google/android/gms/measurement/internal/b5;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/b5;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-lt v0, v2, :cond_0

    .line 38
    .line 39
    return v1

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    return v0

    .line 42
    :cond_1
    return v1
.end method

.method final D()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/vb;->y()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/yd;->W()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const v2, 0x3ae30

    .line 25
    .line 26
    .line 27
    if-lt v0, v2, :cond_0

    .line 28
    .line 29
    return v1

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    return v0

    .line 32
    :cond_1
    return v1
.end method

.method final synthetic E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->d:Li6/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "Failed to send storage consent settings to service"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Li6/e;->T(Lcom/google/android/gms/measurement/internal/ae;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/vb;->S()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "Failed to send storage consent settings to the service"

    .line 48
    .line 49
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method final synthetic F()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->d:Li6/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "Failed to send Dma consent settings to service"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Li6/e;->g0(Lcom/google/android/gms/measurement/internal/ae;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/vb;->S()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "Failed to send Dma consent settings to the service"

    .line 48
    .line 49
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method final synthetic G(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/ae;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->d:Li6/e;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-string p3, "Failed to request trigger URIs; not connected to service"

    .line 17
    .line 18
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    return-void

    .line 23
    :cond_0
    :try_start_2
    invoke-static {p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/google/android/gms/measurement/internal/na;

    .line 27
    .line 28
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/na;-><init>(Lcom/google/android/gms/measurement/internal/vb;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, p2, p3, v1}, Li6/e;->t(Lcom/google/android/gms/measurement/internal/ae;Landroid/os/Bundle;Li6/h;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/vb;->S()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p2

    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception p2

    .line 41
    :try_start_3
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 42
    .line 43
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    const-string v0, "Failed to request trigger URIs; remote exception"

    .line 52
    .line 53
    invoke-virtual {p3, v0, p2}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 57
    .line 58
    .line 59
    :goto_0
    monitor-exit p1

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    throw p2
.end method

.method final synthetic H(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/ae;Li6/g0;)V
    .locals 2

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->d:Li6/e;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-string p3, "[sgtm] Failed to get upload batches; not connected to service"

    .line 17
    .line 18
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    return-void

    .line 23
    :cond_0
    :try_start_2
    invoke-static {p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/google/android/gms/measurement/internal/oa;

    .line 27
    .line 28
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/oa;-><init>(Lcom/google/android/gms/measurement/internal/vb;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, p2, p3, v1}, Li6/e;->O(Lcom/google/android/gms/measurement/internal/ae;Li6/g0;Li6/k;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/vb;->S()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p2

    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception p2

    .line 41
    :try_start_3
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 42
    .line 43
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    const-string v0, "[sgtm] Failed to get upload batches; remote exception"

    .line 52
    .line 53
    invoke-virtual {p3, v0, p2}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 57
    .line 58
    .line 59
    :goto_0
    monitor-exit p1

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    throw p2
.end method

.method final synthetic I(Lcom/google/android/gms/measurement/internal/ae;Lcom/google/android/gms/measurement/internal/g;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->d:Li6/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "[sgtm] Discarding data. Failed to update batch upload status."

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Li6/e;->k0(Lcom/google/android/gms/measurement/internal/ae;Lcom/google/android/gms/measurement/internal/g;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/vb;->S()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception p1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-wide v1, p2, Lcom/google/android/gms/measurement/internal/g;->a:J

    .line 40
    .line 41
    const-string p2, "[sgtm] Failed to update batch upload status, rowId, exception"

    .line 42
    .line 43
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, p2, v1, p1}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method final synthetic J()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/vb;->S()V

    return-void
.end method

.method final synthetic K(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->d:Li6/e;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->d:Li6/e;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "Disconnected from device MeasurementService"

    .line 22
    .line 23
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/vb;->w()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method final synthetic L()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/vb;->U()V

    return-void
.end method

.method final synthetic M()Lcom/google/android/gms/measurement/internal/pb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->c:Lcom/google/android/gms/measurement/internal/pb;

    return-object v0
.end method

.method final synthetic N()Li6/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->d:Li6/e;

    return-object v0
.end method

.method final synthetic O(Li6/e;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/vb;->d:Li6/e;

    return-void
.end method

.method final synthetic P()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->g:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method final synthetic Q(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/vb;->g:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public final W()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->d:Li6/e;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method protected final X()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/google/android/gms/measurement/internal/ab;

    .line 13
    .line 14
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/ab;-><init>(Lcom/google/android/gms/measurement/internal/vb;Lcom/google/android/gms/measurement/internal/ae;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method protected final Y(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/vb;->C()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Lcom/google/android/gms/measurement/internal/bb;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/bb;-><init>(Lcom/google/android/gms/measurement/internal/vb;Lcom/google/android/gms/measurement/internal/ae;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method protected final Z(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lcom/google/android/gms/measurement/internal/ub;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/ub;-><init>(Lcom/google/android/gms/measurement/internal/vb;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method protected final a0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/measurement/internal/qb;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/qb;-><init>(Lcom/google/android/gms/measurement/internal/vb;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method final b0(Li6/e;Lo5/a;Lcom/google/android/gms/measurement/internal/ae;)V
    .locals 57

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 11
    .line 12
    .line 13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/vb;->R()Z

    .line 14
    .line 15
    .line 16
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 17
    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 19
    .line 20
    .line 21
    const/16 v6, 0x64

    .line 22
    .line 23
    move-object/from16 v0, p3

    .line 24
    .line 25
    move v8, v6

    .line 26
    const/4 v7, 0x0

    .line 27
    :goto_0
    const/16 v9, 0x3e9

    .line 28
    .line 29
    if-ge v7, v9, :cond_a

    .line 30
    .line 31
    if-ne v8, v6, :cond_a

    .line 32
    .line 33
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 34
    .line 35
    new-instance v9, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/w6;->E()Lcom/google/android/gms/measurement/internal/h5;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/h5;->t(I)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    if-eqz v8, :cond_0

    .line 49
    .line 50
    invoke-interface {v9, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    const/4 v8, 0x0

    .line 59
    :goto_1
    if-eqz v3, :cond_1

    .line 60
    .line 61
    if-ge v8, v6, :cond_1

    .line 62
    .line 63
    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/ae;->c:Ljava/lang/String;

    .line 64
    .line 65
    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/ae;->j:J

    .line 66
    .line 67
    new-instance v13, Li6/l;

    .line 68
    .line 69
    invoke-direct {v13, v3, v10, v11, v12}, Li6/l;-><init>(Lo5/a;Ljava/lang/String;J)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    sget-object v11, Lcom/google/android/gms/measurement/internal/c5;->P0:Lcom/google/android/gms/measurement/internal/b5;

    .line 80
    .line 81
    const/4 v12, 0x0

    .line 82
    invoke-virtual {v10, v12, v11}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    const/4 v13, 0x0

    .line 91
    :goto_2
    if-ge v13, v11, :cond_9

    .line 92
    .line 93
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    check-cast v14, Li6/l;

    .line 98
    .line 99
    iget-object v15, v14, Li6/l;->a:Lo5/a;

    .line 100
    .line 101
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    sget-object v6, Lcom/google/android/gms/measurement/internal/c5;->c1:Lcom/google/android/gms/measurement/internal/b5;

    .line 106
    .line 107
    invoke-virtual {v5, v12, v6}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_2

    .line 112
    .line 113
    iget-object v5, v14, Li6/l;->b:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v16

    .line 119
    if-nez v16, :cond_2

    .line 120
    .line 121
    move/from16 v56, v13

    .line 122
    .line 123
    iget-wide v12, v14, Li6/l;->c:J

    .line 124
    .line 125
    move-wide/from16 v20, v12

    .line 126
    .line 127
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/ae;->a:Ljava/lang/String;

    .line 128
    .line 129
    move-object/from16 v17, v12

    .line 130
    .line 131
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/ae;->b:Ljava/lang/String;

    .line 132
    .line 133
    move-object/from16 v18, v12

    .line 134
    .line 135
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/ae;->d:Ljava/lang/String;

    .line 136
    .line 137
    move-object/from16 v22, v12

    .line 138
    .line 139
    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/ae;->e:J

    .line 140
    .line 141
    move-wide/from16 v23, v12

    .line 142
    .line 143
    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/ae;->f:J

    .line 144
    .line 145
    move-wide/from16 v25, v12

    .line 146
    .line 147
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/ae;->g:Ljava/lang/String;

    .line 148
    .line 149
    move-object/from16 v27, v12

    .line 150
    .line 151
    iget-boolean v12, v0, Lcom/google/android/gms/measurement/internal/ae;->h:Z

    .line 152
    .line 153
    move/from16 v28, v12

    .line 154
    .line 155
    iget-boolean v12, v0, Lcom/google/android/gms/measurement/internal/ae;->i:Z

    .line 156
    .line 157
    move/from16 v29, v12

    .line 158
    .line 159
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/ae;->k:Ljava/lang/String;

    .line 160
    .line 161
    move-object/from16 v30, v12

    .line 162
    .line 163
    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/ae;->l:J

    .line 164
    .line 165
    move-wide/from16 v31, v12

    .line 166
    .line 167
    iget v12, v0, Lcom/google/android/gms/measurement/internal/ae;->m:I

    .line 168
    .line 169
    move/from16 v33, v12

    .line 170
    .line 171
    iget-boolean v12, v0, Lcom/google/android/gms/measurement/internal/ae;->n:Z

    .line 172
    .line 173
    move/from16 v34, v12

    .line 174
    .line 175
    iget-boolean v12, v0, Lcom/google/android/gms/measurement/internal/ae;->o:Z

    .line 176
    .line 177
    move/from16 v35, v12

    .line 178
    .line 179
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/ae;->p:Ljava/lang/Boolean;

    .line 180
    .line 181
    move-object/from16 v36, v12

    .line 182
    .line 183
    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/ae;->q:J

    .line 184
    .line 185
    move-wide/from16 v37, v12

    .line 186
    .line 187
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/ae;->r:Ljava/util/List;

    .line 188
    .line 189
    move-object/from16 v39, v12

    .line 190
    .line 191
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/ae;->s:Ljava/lang/String;

    .line 192
    .line 193
    move-object/from16 v40, v12

    .line 194
    .line 195
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/ae;->t:Ljava/lang/String;

    .line 196
    .line 197
    move-object/from16 v41, v12

    .line 198
    .line 199
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/ae;->u:Ljava/lang/String;

    .line 200
    .line 201
    move-object/from16 v42, v12

    .line 202
    .line 203
    iget-boolean v12, v0, Lcom/google/android/gms/measurement/internal/ae;->v:Z

    .line 204
    .line 205
    move/from16 v43, v12

    .line 206
    .line 207
    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/ae;->w:J

    .line 208
    .line 209
    move-wide/from16 v44, v12

    .line 210
    .line 211
    iget v12, v0, Lcom/google/android/gms/measurement/internal/ae;->x:I

    .line 212
    .line 213
    move/from16 v46, v12

    .line 214
    .line 215
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/ae;->y:Ljava/lang/String;

    .line 216
    .line 217
    move-object/from16 v47, v12

    .line 218
    .line 219
    iget v12, v0, Lcom/google/android/gms/measurement/internal/ae;->z:I

    .line 220
    .line 221
    move/from16 v48, v12

    .line 222
    .line 223
    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/ae;->A:J

    .line 224
    .line 225
    move-wide/from16 v49, v12

    .line 226
    .line 227
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/ae;->B:Ljava/lang/String;

    .line 228
    .line 229
    move-object/from16 v51, v12

    .line 230
    .line 231
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/ae;->C:Ljava/lang/String;

    .line 232
    .line 233
    move-object/from16 v52, v12

    .line 234
    .line 235
    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/ae;->D:J

    .line 236
    .line 237
    move-wide/from16 v53, v12

    .line 238
    .line 239
    iget v0, v0, Lcom/google/android/gms/measurement/internal/ae;->E:I

    .line 240
    .line 241
    move/from16 v55, v0

    .line 242
    .line 243
    new-instance v0, Lcom/google/android/gms/measurement/internal/ae;

    .line 244
    .line 245
    move-object/from16 v16, v0

    .line 246
    .line 247
    move-object/from16 v19, v5

    .line 248
    .line 249
    invoke-direct/range {v16 .. v55}, Lcom/google/android/gms/measurement/internal/ae;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_2
    move/from16 v56, v13

    .line 254
    .line 255
    :goto_3
    move-object v5, v0

    .line 256
    instance-of v0, v15, Lcom/google/android/gms/measurement/internal/g0;

    .line 257
    .line 258
    if-eqz v0, :cond_4

    .line 259
    .line 260
    const-wide/16 v12, 0x0

    .line 261
    .line 262
    if-eqz v10, :cond_3

    .line 263
    .line 264
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    invoke-interface {v6}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 271
    .line 272
    .line 273
    move-result-wide v16
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 274
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 279
    .line 280
    .line 281
    move-result-wide v18
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 282
    move-wide/from16 v24, v16

    .line 283
    .line 284
    move-wide/from16 v26, v18

    .line 285
    .line 286
    goto :goto_4

    .line 287
    :catch_0
    move-exception v0

    .line 288
    move-wide/from16 v26, v12

    .line 289
    .line 290
    move-wide/from16 v19, v16

    .line 291
    .line 292
    goto :goto_5

    .line 293
    :catch_1
    move-exception v0

    .line 294
    move-wide/from16 v19, v12

    .line 295
    .line 296
    move-wide/from16 v26, v19

    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_3
    move-wide/from16 v24, v12

    .line 300
    .line 301
    move-wide/from16 v26, v24

    .line 302
    .line 303
    :goto_4
    :try_start_2
    check-cast v15, Lcom/google/android/gms/measurement/internal/g0;

    .line 304
    .line 305
    invoke-interface {v2, v15, v5}, Li6/e;->b0(Lcom/google/android/gms/measurement/internal/g0;Lcom/google/android/gms/measurement/internal/ae;)V

    .line 306
    .line 307
    .line 308
    if-eqz v10, :cond_5

    .line 309
    .line 310
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    const-string v6, "Logging telemetry for logEvent from database"

    .line 319
    .line 320
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 324
    .line 325
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/l5;->a(Lcom/google/android/gms/measurement/internal/w6;)Lcom/google/android/gms/measurement/internal/l5;

    .line 326
    .line 327
    .line 328
    move-result-object v16

    .line 329
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    invoke-interface {v6}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 334
    .line 335
    .line 336
    move-result-wide v21

    .line 337
    const v17, 0x8dcd

    .line 338
    .line 339
    .line 340
    const/16 v18, 0x0

    .line 341
    .line 342
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 347
    .line 348
    .line 349
    move-result-wide v14

    .line 350
    sub-long v14, v14, v26

    .line 351
    .line 352
    long-to-int v0, v14

    .line 353
    move-wide/from16 v19, v24

    .line 354
    .line 355
    move/from16 v23, v0

    .line 356
    .line 357
    invoke-virtual/range {v16 .. v23}, Lcom/google/android/gms/measurement/internal/l5;->b(IIJJI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 358
    .line 359
    .line 360
    goto :goto_6

    .line 361
    :catch_2
    move-exception v0

    .line 362
    move-wide/from16 v19, v24

    .line 363
    .line 364
    :goto_5
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 365
    .line 366
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    const-string v14, "Failed to send event to the service"

    .line 375
    .line 376
    invoke-virtual {v6, v14, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    if-eqz v10, :cond_5

    .line 380
    .line 381
    cmp-long v0, v19, v12

    .line 382
    .line 383
    if-eqz v0, :cond_5

    .line 384
    .line 385
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 386
    .line 387
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/l5;->a(Lcom/google/android/gms/measurement/internal/w6;)Lcom/google/android/gms/measurement/internal/l5;

    .line 388
    .line 389
    .line 390
    move-result-object v16

    .line 391
    const v17, 0x8dcd

    .line 392
    .line 393
    .line 394
    const/16 v18, 0xd

    .line 395
    .line 396
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    invoke-interface {v6}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 401
    .line 402
    .line 403
    move-result-wide v21

    .line 404
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 409
    .line 410
    .line 411
    move-result-wide v12

    .line 412
    sub-long v12, v12, v26

    .line 413
    .line 414
    long-to-int v0, v12

    .line 415
    move/from16 v23, v0

    .line 416
    .line 417
    invoke-virtual/range {v16 .. v23}, Lcom/google/android/gms/measurement/internal/l5;->b(IIJJI)V

    .line 418
    .line 419
    .line 420
    goto :goto_6

    .line 421
    :cond_4
    instance-of v0, v15, Lcom/google/android/gms/measurement/internal/ud;

    .line 422
    .line 423
    if-eqz v0, :cond_6

    .line 424
    .line 425
    :try_start_3
    check-cast v15, Lcom/google/android/gms/measurement/internal/ud;

    .line 426
    .line 427
    invoke-interface {v2, v15, v5}, Li6/e;->s0(Lcom/google/android/gms/measurement/internal/ud;Lcom/google/android/gms/measurement/internal/ae;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 428
    .line 429
    .line 430
    goto :goto_6

    .line 431
    :catch_3
    move-exception v0

    .line 432
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 433
    .line 434
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 435
    .line 436
    .line 437
    move-result-object v6

    .line 438
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 439
    .line 440
    .line 441
    move-result-object v6

    .line 442
    const-string v12, "Failed to send user property to the service"

    .line 443
    .line 444
    invoke-virtual {v6, v12, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    :cond_5
    :goto_6
    const/4 v13, 0x0

    .line 448
    goto :goto_7

    .line 449
    :cond_6
    instance-of v0, v15, Lcom/google/android/gms/measurement/internal/i;

    .line 450
    .line 451
    if-eqz v0, :cond_7

    .line 452
    .line 453
    :try_start_4
    check-cast v15, Lcom/google/android/gms/measurement/internal/i;

    .line 454
    .line 455
    invoke-interface {v2, v15, v5}, Li6/e;->o(Lcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/ae;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 456
    .line 457
    .line 458
    goto :goto_6

    .line 459
    :catch_4
    move-exception v0

    .line 460
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 461
    .line 462
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 467
    .line 468
    .line 469
    move-result-object v6

    .line 470
    const-string v12, "Failed to send conditional user property to the service"

    .line 471
    .line 472
    invoke-virtual {v6, v12, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    goto :goto_6

    .line 476
    :cond_7
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 477
    .line 478
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 479
    .line 480
    .line 481
    move-result-object v12

    .line 482
    const/4 v13, 0x0

    .line 483
    invoke-virtual {v12, v13, v6}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 484
    .line 485
    .line 486
    move-result v6

    .line 487
    if-eqz v6, :cond_8

    .line 488
    .line 489
    instance-of v6, v15, Lcom/google/android/gms/measurement/internal/e0;

    .line 490
    .line 491
    if-eqz v6, :cond_8

    .line 492
    .line 493
    :try_start_5
    check-cast v15, Lcom/google/android/gms/measurement/internal/e0;

    .line 494
    .line 495
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/e0;->o()Landroid/os/Bundle;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-interface {v2, v0, v5}, Li6/e;->w0(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/ae;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 500
    .line 501
    .line 502
    goto :goto_7

    .line 503
    :catch_5
    move-exception v0

    .line 504
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 505
    .line 506
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 507
    .line 508
    .line 509
    move-result-object v6

    .line 510
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 511
    .line 512
    .line 513
    move-result-object v6

    .line 514
    const-string v12, "Failed to send default event parameters to the service"

    .line 515
    .line 516
    invoke-virtual {v6, v12, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    goto :goto_7

    .line 520
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    const-string v6, "Discarding data. Unrecognized parcel type."

    .line 529
    .line 530
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    :goto_7
    add-int/lit8 v0, v56, 0x1

    .line 534
    .line 535
    move-object v12, v13

    .line 536
    const/16 v6, 0x64

    .line 537
    .line 538
    move v13, v0

    .line 539
    move-object v0, v5

    .line 540
    goto/16 :goto_2

    .line 541
    .line 542
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 543
    .line 544
    const/16 v6, 0x64

    .line 545
    .line 546
    goto/16 :goto_0

    .line 547
    .line 548
    :cond_a
    return-void
.end method

.method protected final c0(Lcom/google/android/gms/measurement/internal/g0;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/vb;->R()Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->E()Lcom/google/android/gms/measurement/internal/h5;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/h5;->p(Lcom/google/android/gms/measurement/internal/g0;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    new-instance v0, Lcom/google/android/gms/measurement/internal/cb;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    move-object v1, v0

    .line 32
    move-object v2, p0

    .line 33
    move-object v6, p1

    .line 34
    move-object v7, p2

    .line 35
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/cb;-><init>(Lcom/google/android/gms/measurement/internal/vb;ZLcom/google/android/gms/measurement/internal/ae;ZLcom/google/android/gms/measurement/internal/g0;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method protected final d0(Lcom/google/android/gms/measurement/internal/i;)V
    .locals 8

    .line 1
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->E()Lcom/google/android/gms/measurement/internal/h5;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/h5;->r(Lcom/google/android/gms/measurement/internal/i;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    new-instance v6, Lcom/google/android/gms/measurement/internal/i;

    .line 26
    .line 27
    invoke-direct {v6, p1}, Lcom/google/android/gms/measurement/internal/i;-><init>(Lcom/google/android/gms/measurement/internal/i;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    new-instance v0, Lcom/google/android/gms/measurement/internal/db;

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    move-object v1, v0

    .line 39
    move-object v2, p0

    .line 40
    move-object v7, p1

    .line 41
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/db;-><init>(Lcom/google/android/gms/measurement/internal/vb;ZLcom/google/android/gms/measurement/internal/ae;ZLcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/i;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method protected final e0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    new-instance p2, Lcom/google/android/gms/measurement/internal/eb;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    move-object v0, p2

    .line 16
    move-object v1, p0

    .line 17
    move-object v2, p1

    .line 18
    move-object v4, p3

    .line 19
    move-object v5, p4

    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/eb;-><init>(Lcom/google/android/gms/measurement/internal/vb;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ae;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method protected final f0(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    new-instance v0, Lcom/google/android/gms/measurement/internal/fb;

    .line 13
    .line 14
    move-object v1, v0

    .line 15
    move-object v2, p0

    .line 16
    move-object v3, p2

    .line 17
    move-object v4, p3

    .line 18
    move-object v6, p1

    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/fb;-><init>(Lcom/google/android/gms/measurement/internal/vb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ae;Lcom/google/android/gms/internal/measurement/w1;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method protected final g0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    new-instance p2, Lcom/google/android/gms/measurement/internal/gb;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    move-object v0, p2

    .line 16
    move-object v1, p0

    .line 17
    move-object v2, p1

    .line 18
    move-object v4, p3

    .line 19
    move-object v5, p4

    .line 20
    move v7, p5

    .line 21
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/gb;-><init>(Lcom/google/android/gms/measurement/internal/vb;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ae;Z)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method protected final h0(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    new-instance v0, Lcom/google/android/gms/measurement/internal/ma;

    .line 13
    .line 14
    move-object v1, v0

    .line 15
    move-object v2, p0

    .line 16
    move-object v3, p2

    .line 17
    move-object v4, p3

    .line 18
    move v6, p4

    .line 19
    move-object v7, p1

    .line 20
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/ma;-><init>(Lcom/google/android/gms/measurement/internal/vb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ae;ZLcom/google/android/gms/internal/measurement/w1;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method protected final i0(Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/google/android/gms/measurement/internal/rb;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/rb;-><init>(Lcom/google/android/gms/measurement/internal/vb;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/ae;Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method protected final j0(Ljava/util/concurrent/atomic/AtomicReference;Li6/g0;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/google/android/gms/measurement/internal/sb;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/sb;-><init>(Lcom/google/android/gms/measurement/internal/vb;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/ae;Li6/g0;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method protected final k0(Lcom/google/android/gms/measurement/internal/g;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/measurement/internal/tb;

    .line 16
    .line 17
    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/tb;-><init>(Lcom/google/android/gms/measurement/internal/vb;Lcom/google/android/gms/measurement/internal/ae;Lcom/google/android/gms/measurement/internal/g;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method protected final l0()Li6/a;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->d:Li6/e;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/vb;->w()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v2, "Failed to get consents; not connected to service yet."

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_0
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-interface {v0, v2}, Li6/e;->t0(Lcom/google/android/gms/measurement/internal/ae;)Li6/a;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/vb;->S()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "Failed to get consents; remote exception"

    .line 59
    .line 60
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-object v1
.end method

.method protected final m()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method protected final o(Lcom/google/android/gms/measurement/internal/ud;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/vb;->R()Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->E()Lcom/google/android/gms/measurement/internal/h5;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/h5;->q(Lcom/google/android/gms/measurement/internal/ud;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lcom/google/android/gms/measurement/internal/pa;

    .line 26
    .line 27
    invoke-direct {v2, p0, v1, v0, p1}, Lcom/google/android/gms/measurement/internal/pa;-><init>(Lcom/google/android/gms/measurement/internal/vb;Lcom/google/android/gms/measurement/internal/ae;ZLcom/google/android/gms/measurement/internal/ud;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method protected final p()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/vb;->R()Z

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->E()Lcom/google/android/gms/measurement/internal/h5;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/h5;->o()V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/google/android/gms/measurement/internal/qa;

    .line 25
    .line 26
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/qa;-><init>(Lcom/google/android/gms/measurement/internal/vb;Lcom/google/android/gms/measurement/internal/ae;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final q(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/google/android/gms/measurement/internal/ra;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/measurement/internal/ra;-><init>(Lcom/google/android/gms/measurement/internal/vb;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/ae;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final r(Lcom/google/android/gms/internal/measurement/w1;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/google/android/gms/measurement/internal/sa;

    .line 13
    .line 14
    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/sa;-><init>(Lcom/google/android/gms/measurement/internal/vb;Lcom/google/android/gms/measurement/internal/ae;Lcom/google/android/gms/internal/measurement/w1;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method protected final s()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/vb;->R()Z

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    sget-object v4, Lcom/google/android/gms/measurement/internal/c5;->c1:Lcom/google/android/gms/measurement/internal/b5;

    .line 23
    .line 24
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->E()Lcom/google/android/gms/measurement/internal/h5;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/h5;->u()Z

    .line 34
    .line 35
    .line 36
    new-instance v2, Lcom/google/android/gms/measurement/internal/ta;

    .line 37
    .line 38
    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/measurement/internal/ta;-><init>(Lcom/google/android/gms/measurement/internal/vb;Lcom/google/android/gms/measurement/internal/ae;Z)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method protected final t()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/google/android/gms/measurement/internal/ua;

    .line 13
    .line 14
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/ua;-><init>(Lcom/google/android/gms/measurement/internal/vb;Lcom/google/android/gms/measurement/internal/ae;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method protected final u(Lcom/google/android/gms/measurement/internal/da;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/measurement/internal/wa;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/wa;-><init>(Lcom/google/android/gms/measurement/internal/vb;Lcom/google/android/gms/measurement/internal/da;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final v(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    new-instance v5, Lcom/google/android/gms/measurement/internal/e0;

    .line 8
    .line 9
    invoke-direct {v5, p1}, Lcom/google/android/gms/measurement/internal/e0;-><init>(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/vb;->R()Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    sget-object v2, Lcom/google/android/gms/measurement/internal/c5;->c1:Lcom/google/android/gms/measurement/internal/b5;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->E()Lcom/google/android/gms/measurement/internal/h5;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/h5;->s(Lcom/google/android/gms/measurement/internal/e0;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    move v4, v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v4, v1

    .line 47
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/vb;->V(Z)Lcom/google/android/gms/measurement/internal/ae;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    new-instance v7, Lcom/google/android/gms/measurement/internal/xa;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    move-object v0, v7

    .line 55
    move-object v1, p0

    .line 56
    move-object v6, p1

    .line 57
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/xa;-><init>(Lcom/google/android/gms/measurement/internal/vb;ZLcom/google/android/gms/measurement/internal/ae;ZLcom/google/android/gms/measurement/internal/e0;Landroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v7}, Lcom/google/android/gms/measurement/internal/vb;->T(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method final w()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/vb;->W()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/vb;->y()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m;->m()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v2, Landroid/content/Intent;

    .line 44
    .line 45
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "com.google.android.gms.measurement.AppMeasurementService"

    .line 53
    .line 54
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const/high16 v3, 0x10000

    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    new-instance v1, Landroid/content/Intent;

    .line 73
    .line 74
    const-string v2, "com.google.android.gms.measurement.START"

    .line 75
    .line 76
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v2, Landroid/content/ComponentName;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 86
    .line 87
    .line 88
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->c:Lcom/google/android/gms/measurement/internal/pb;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/pb;->b(Landroid/content/Intent;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    :goto_0
    return-void

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->c:Lcom/google/android/gms/measurement/internal/pb;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pb;->e()V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method final x()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method final y()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->e:Ljava/lang/Boolean;

    .line 8
    .line 9
    if-nez v0, :cond_d

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "use_service"

    .line 31
    .line 32
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v4, 0x0

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :goto_0
    const/4 v2, 0x1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_1

    .line 61
    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 65
    .line 66
    .line 67
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 68
    .line 69
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->L()Lcom/google/android/gms/measurement/internal/f5;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/f5;->v()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-ne v5, v2, :cond_2

    .line 78
    .line 79
    :goto_1
    move v4, v2

    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const-string v6, "Checking service availability"

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    const v6, 0xbdfcb8

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/yd;->X(I)I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_a

    .line 107
    .line 108
    if-eq v5, v2, :cond_9

    .line 109
    .line 110
    const/4 v6, 0x2

    .line 111
    if-eq v5, v6, :cond_6

    .line 112
    .line 113
    const/4 v1, 0x3

    .line 114
    if-eq v5, v1, :cond_5

    .line 115
    .line 116
    const/16 v1, 0x9

    .line 117
    .line 118
    if-eq v5, v1, :cond_4

    .line 119
    .line 120
    const/16 v1, 0x12

    .line 121
    .line 122
    if-eq v5, v1, :cond_3

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    const-string v5, "Unexpected service status"

    .line 137
    .line 138
    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const-string v4, "Service updating"

    .line 151
    .line 152
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const-string v2, "Service invalid"

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    const-string v2, "Service disabled"

    .line 179
    .line 180
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :goto_2
    move v2, v4

    .line 184
    goto :goto_4

    .line 185
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    const-string v6, "Service container out of date"

    .line 194
    .line 195
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/yd;->W()I

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    const/16 v6, 0x4423

    .line 207
    .line 208
    if-ge v5, v6, :cond_7

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_7
    if-nez v1, :cond_8

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_8
    move v2, v4

    .line 215
    :goto_3
    move v7, v4

    .line 216
    move v4, v2

    .line 217
    move v2, v7

    .line 218
    goto :goto_4

    .line 219
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    const-string v5, "Service missing"

    .line 228
    .line 229
    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    const-string v4, "Service available"

    .line 242
    .line 243
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_1

    .line 247
    .line 248
    :goto_4
    if-nez v4, :cond_b

    .line 249
    .line 250
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m;->m()Z

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    if-eqz v1, :cond_b

    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    const-string v1, "No way to upload. Consider using the full version of Analytics"

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_b
    if-eqz v2, :cond_c

    .line 275
    .line 276
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 292
    .line 293
    .line 294
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 295
    .line 296
    .line 297
    :cond_c
    :goto_5
    move v2, v4

    .line 298
    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->e:Ljava/lang/Boolean;

    .line 303
    .line 304
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vb;->e:Ljava/lang/Boolean;

    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    return v0
.end method

.method protected final z(Li6/e;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/vb;->d:Li6/e;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/vb;->S()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/vb;->U()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
