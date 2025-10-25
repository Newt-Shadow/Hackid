.class final Lj4/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx4/e0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lx4/e0;

.field private final c:Lx4/j;

.field private d:Lj4/g;

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Z

.field private j:Ljava/io/IOException;

.field final synthetic k:Lj4/c;


# direct methods
.method public constructor <init>(Lj4/c;Landroid/net/Uri;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lj4/c$c;->k:Lj4/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lj4/c$c;->a:Landroid/net/Uri;

    .line 7
    .line 8
    new-instance p2, Lx4/e0;

    .line 9
    .line 10
    const-string v0, "DefaultHlsPlaylistTracker:MediaPlaylist"

    .line 11
    .line 12
    invoke-direct {p2, v0}, Lx4/e0;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lj4/c$c;->b:Lx4/e0;

    .line 16
    .line 17
    invoke-static {p1}, Lj4/c;->B(Lj4/c;)Li4/g;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 p2, 0x4

    .line 22
    invoke-interface {p1, p2}, Li4/g;->a(I)Lx4/j;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lj4/c$c;->c:Lx4/j;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic a(Lj4/c$c;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lj4/c$c;->m(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic b(Lj4/c$c;J)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lj4/c$c;->i(J)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic c(Lj4/c$c;Lj4/g;Ld4/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lj4/c$c;->w(Lj4/g;Ld4/n;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lj4/c$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lj4/c$c;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic e(Lj4/c$c;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lj4/c$c;->a:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lj4/c$c;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lj4/c$c;->q(Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lj4/c$c;)Lj4/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lj4/c$c;->d:Lj4/g;

    .line 2
    .line 3
    return-object p0
.end method

.method private i(J)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-long/2addr v0, p1

    .line 6
    iput-wide v0, p0, Lj4/c$c;->h:J

    .line 7
    .line 8
    iget-object p1, p0, Lj4/c$c;->a:Landroid/net/Uri;

    .line 9
    .line 10
    iget-object p2, p0, Lj4/c$c;->k:Lj4/c;

    .line 11
    .line 12
    invoke-static {p2}, Lj4/c;->w(Lj4/c;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lj4/c$c;->k:Lj4/c;

    .line 23
    .line 24
    invoke-static {p1}, Lj4/c;->x(Lj4/c;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    return p1
.end method

.method private j()Landroid/net/Uri;
    .locals 7

    .line 1
    iget-object v0, p0, Lj4/c$c;->d:Lj4/g;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, v0, Lj4/g;->v:Lj4/g$f;

    .line 6
    .line 7
    iget-wide v1, v0, Lj4/g$f;->a:J

    .line 8
    .line 9
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long v1, v1, v3

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-boolean v0, v0, Lj4/g$f;->e:Z

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lj4/c$c;->a:Landroid/net/Uri;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lj4/c$c;->d:Lj4/g;

    .line 30
    .line 31
    iget-object v2, v1, Lj4/g;->v:Lj4/g$f;

    .line 32
    .line 33
    iget-boolean v2, v2, Lj4/g$f;->e:Z

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget-wide v5, v1, Lj4/g;->k:J

    .line 38
    .line 39
    iget-object v1, v1, Lj4/g;->r:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    int-to-long v1, v1

    .line 46
    add-long/2addr v5, v1

    .line 47
    const-string v1, "_HLS_msn"

    .line 48
    .line 49
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lj4/c$c;->d:Lj4/g;

    .line 57
    .line 58
    iget-wide v5, v1, Lj4/g;->n:J

    .line 59
    .line 60
    cmp-long v2, v5, v3

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    iget-object v1, v1, Lj4/g;->s:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_1

    .line 75
    .line 76
    invoke-static {v1}, Lo6/t;->c(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lj4/g$b;

    .line 81
    .line 82
    iget-boolean v1, v1, Lj4/g$b;->m:Z

    .line 83
    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    add-int/lit8 v2, v2, -0x1

    .line 87
    .line 88
    :cond_1
    const-string v1, "_HLS_part"

    .line 89
    .line 90
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 95
    .line 96
    .line 97
    :cond_2
    iget-object v1, p0, Lj4/c$c;->d:Lj4/g;

    .line 98
    .line 99
    iget-object v1, v1, Lj4/g;->v:Lj4/g$f;

    .line 100
    .line 101
    iget-wide v5, v1, Lj4/g$f;->a:J

    .line 102
    .line 103
    cmp-long v2, v5, v3

    .line 104
    .line 105
    if-eqz v2, :cond_4

    .line 106
    .line 107
    iget-boolean v1, v1, Lj4/g$f;->b:Z

    .line 108
    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    const-string v1, "v2"

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    const-string v1, "YES"

    .line 115
    .line 116
    :goto_0
    const-string v2, "_HLS_skip"

    .line 117
    .line 118
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 119
    .line 120
    .line 121
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0

    .line 126
    :cond_5
    :goto_1
    iget-object v0, p0, Lj4/c$c;->a:Landroid/net/Uri;

    .line 127
    .line 128
    return-object v0
.end method

.method private synthetic m(Landroid/net/Uri;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lj4/c$c;->i:Z

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lj4/c$c;->p(Landroid/net/Uri;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private p(Landroid/net/Uri;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lj4/c$c;->k:Lj4/c;

    .line 2
    .line 3
    invoke-static {v0}, Lj4/c;->r(Lj4/c;)Lj4/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lj4/c$c;->k:Lj4/c;

    .line 8
    .line 9
    invoke-static {v1}, Lj4/c;->q(Lj4/c;)Lj4/h;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lj4/c$c;->d:Lj4/g;

    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Lj4/k;->a(Lj4/h;Lj4/g;)Lx4/g0$a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lx4/g0;

    .line 20
    .line 21
    iget-object v2, p0, Lj4/c$c;->c:Lx4/j;

    .line 22
    .line 23
    const/4 v3, 0x4

    .line 24
    invoke-direct {v1, v2, p1, v3, v0}, Lx4/g0;-><init>(Lx4/j;Landroid/net/Uri;ILx4/g0$a;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lj4/c$c;->b:Lx4/e0;

    .line 28
    .line 29
    iget-object v0, p0, Lj4/c$c;->k:Lj4/c;

    .line 30
    .line 31
    invoke-static {v0}, Lj4/c;->D(Lj4/c;)Lx4/d0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget v2, v1, Lx4/g0;->c:I

    .line 36
    .line 37
    invoke-interface {v0, v2}, Lx4/d0;->d(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p1, v1, p0, v0}, Lx4/e0;->n(Lx4/e0$e;Lx4/e0$b;I)J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    iget-object p1, p0, Lj4/c$c;->k:Lj4/c;

    .line 46
    .line 47
    invoke-static {p1}, Lj4/c;->C(Lj4/c;)Ld4/a0$a;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v0, Ld4/n;

    .line 52
    .line 53
    iget-wide v3, v1, Lx4/g0;->a:J

    .line 54
    .line 55
    iget-object v5, v1, Lx4/g0;->b:Lx4/n;

    .line 56
    .line 57
    move-object v2, v0

    .line 58
    invoke-direct/range {v2 .. v7}, Ld4/n;-><init>(JLx4/n;J)V

    .line 59
    .line 60
    .line 61
    iget v1, v1, Lx4/g0;->c:I

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Ld4/a0$a;->z(Ld4/n;I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private q(Landroid/net/Uri;)V
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lj4/c$c;->h:J

    .line 4
    .line 5
    iget-boolean v0, p0, Lj4/c$c;->i:Z

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lj4/c$c;->b:Lx4/e0;

    .line 10
    .line 11
    invoke-virtual {v0}, Lx4/e0;->j()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lj4/c$c;->b:Lx4/e0;

    .line 18
    .line 19
    invoke-virtual {v0}, Lx4/e0;->i()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iget-wide v2, p0, Lj4/c$c;->g:J

    .line 31
    .line 32
    cmp-long v2, v0, v2

    .line 33
    .line 34
    if-gez v2, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    iput-boolean v2, p0, Lj4/c$c;->i:Z

    .line 38
    .line 39
    iget-object v2, p0, Lj4/c$c;->k:Lj4/c;

    .line 40
    .line 41
    invoke-static {v2}, Lj4/c;->p(Lj4/c;)Landroid/os/Handler;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    new-instance v3, Lj4/d;

    .line 46
    .line 47
    invoke-direct {v3, p0, p1}, Lj4/d;-><init>(Lj4/c$c;Landroid/net/Uri;)V

    .line 48
    .line 49
    .line 50
    iget-wide v4, p0, Lj4/c$c;->g:J

    .line 51
    .line 52
    sub-long/2addr v4, v0

    .line 53
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-direct {p0, p1}, Lj4/c$c;->p(Landroid/net/Uri;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    return-void
.end method

.method private w(Lj4/g;Ld4/n;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lj4/c$c;->d:Lj4/g;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iput-wide v1, p0, Lj4/c$c;->e:J

    .line 8
    .line 9
    iget-object v3, p0, Lj4/c$c;->k:Lj4/c;

    .line 10
    .line 11
    invoke-static {v3, v0, p1}, Lj4/c;->t(Lj4/c;Lj4/g;Lj4/g;)Lj4/g;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iput-object v3, p0, Lj4/c$c;->d:Lj4/g;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-eq v3, v0, :cond_0

    .line 21
    .line 22
    iput-object v5, p0, Lj4/c$c;->j:Ljava/io/IOException;

    .line 23
    .line 24
    iput-wide v1, p0, Lj4/c$c;->f:J

    .line 25
    .line 26
    iget-object p1, p0, Lj4/c$c;->k:Lj4/c;

    .line 27
    .line 28
    iget-object p2, p0, Lj4/c$c;->a:Landroid/net/Uri;

    .line 29
    .line 30
    invoke-static {p1, p2, v3}, Lj4/c;->u(Lj4/c;Landroid/net/Uri;Lj4/g;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-boolean v3, v3, Lj4/g;->o:Z

    .line 35
    .line 36
    if-nez v3, :cond_3

    .line 37
    .line 38
    iget-wide v7, p1, Lj4/g;->k:J

    .line 39
    .line 40
    iget-object p1, p1, Lj4/g;->r:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    int-to-long v9, p1

    .line 47
    add-long/2addr v7, v9

    .line 48
    iget-object p1, p0, Lj4/c$c;->d:Lj4/g;

    .line 49
    .line 50
    iget-wide v9, p1, Lj4/g;->k:J

    .line 51
    .line 52
    cmp-long v3, v7, v9

    .line 53
    .line 54
    if-gez v3, :cond_1

    .line 55
    .line 56
    new-instance v5, Lj4/l$c;

    .line 57
    .line 58
    iget-object p1, p0, Lj4/c$c;->a:Landroid/net/Uri;

    .line 59
    .line 60
    invoke-direct {v5, p1}, Lj4/l$c;-><init>(Landroid/net/Uri;)V

    .line 61
    .line 62
    .line 63
    move p1, v6

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-wide v7, p0, Lj4/c$c;->f:J

    .line 66
    .line 67
    sub-long v7, v1, v7

    .line 68
    .line 69
    long-to-double v7, v7

    .line 70
    iget-wide v9, p1, Lj4/g;->m:J

    .line 71
    .line 72
    invoke-static {v9, v10}, Ly4/q0;->X0(J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v9

    .line 76
    long-to-double v9, v9

    .line 77
    iget-object p1, p0, Lj4/c$c;->k:Lj4/c;

    .line 78
    .line 79
    invoke-static {p1}, Lj4/c;->v(Lj4/c;)D

    .line 80
    .line 81
    .line 82
    move-result-wide v11

    .line 83
    mul-double/2addr v9, v11

    .line 84
    cmpl-double p1, v7, v9

    .line 85
    .line 86
    if-lez p1, :cond_2

    .line 87
    .line 88
    new-instance v5, Lj4/l$d;

    .line 89
    .line 90
    iget-object p1, p0, Lj4/c$c;->a:Landroid/net/Uri;

    .line 91
    .line 92
    invoke-direct {v5, p1}, Lj4/l$d;-><init>(Landroid/net/Uri;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    move p1, v4

    .line 96
    :goto_0
    if-eqz v5, :cond_3

    .line 97
    .line 98
    iput-object v5, p0, Lj4/c$c;->j:Ljava/io/IOException;

    .line 99
    .line 100
    iget-object v3, p0, Lj4/c$c;->k:Lj4/c;

    .line 101
    .line 102
    iget-object v7, p0, Lj4/c$c;->a:Landroid/net/Uri;

    .line 103
    .line 104
    new-instance v8, Lx4/d0$c;

    .line 105
    .line 106
    new-instance v9, Ld4/q;

    .line 107
    .line 108
    const/4 v10, 0x4

    .line 109
    invoke-direct {v9, v10}, Ld4/q;-><init>(I)V

    .line 110
    .line 111
    .line 112
    invoke-direct {v8, p2, v9, v5, v6}, Lx4/d0$c;-><init>(Ld4/n;Ld4/q;Ljava/io/IOException;I)V

    .line 113
    .line 114
    .line 115
    invoke-static {v3, v7, v8, p1}, Lj4/c;->n(Lj4/c;Landroid/net/Uri;Lx4/d0$c;Z)Z

    .line 116
    .line 117
    .line 118
    :cond_3
    :goto_1
    iget-object p1, p0, Lj4/c$c;->d:Lj4/g;

    .line 119
    .line 120
    iget-object p2, p1, Lj4/g;->v:Lj4/g$f;

    .line 121
    .line 122
    iget-boolean p2, p2, Lj4/g$f;->e:Z

    .line 123
    .line 124
    if-nez p2, :cond_5

    .line 125
    .line 126
    if-eq p1, v0, :cond_4

    .line 127
    .line 128
    iget-wide p1, p1, Lj4/g;->m:J

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_4
    iget-wide p1, p1, Lj4/g;->m:J

    .line 132
    .line 133
    const-wide/16 v7, 0x2

    .line 134
    .line 135
    div-long/2addr p1, v7

    .line 136
    goto :goto_2

    .line 137
    :cond_5
    const-wide/16 p1, 0x0

    .line 138
    .line 139
    :goto_2
    invoke-static {p1, p2}, Ly4/q0;->X0(J)J

    .line 140
    .line 141
    .line 142
    move-result-wide p1

    .line 143
    add-long/2addr v1, p1

    .line 144
    iput-wide v1, p0, Lj4/c$c;->g:J

    .line 145
    .line 146
    iget-object p1, p0, Lj4/c$c;->d:Lj4/g;

    .line 147
    .line 148
    iget-wide p1, p1, Lj4/g;->n:J

    .line 149
    .line 150
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    cmp-long p1, p1, v0

    .line 156
    .line 157
    if-nez p1, :cond_6

    .line 158
    .line 159
    iget-object p1, p0, Lj4/c$c;->a:Landroid/net/Uri;

    .line 160
    .line 161
    iget-object p2, p0, Lj4/c$c;->k:Lj4/c;

    .line 162
    .line 163
    invoke-static {p2}, Lj4/c;->w(Lj4/c;)Landroid/net/Uri;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_7

    .line 172
    .line 173
    :cond_6
    move v4, v6

    .line 174
    :cond_7
    if-eqz v4, :cond_8

    .line 175
    .line 176
    iget-object p1, p0, Lj4/c$c;->d:Lj4/g;

    .line 177
    .line 178
    iget-boolean p1, p1, Lj4/g;->o:Z

    .line 179
    .line 180
    if-nez p1, :cond_8

    .line 181
    .line 182
    invoke-direct {p0}, Lj4/c$c;->j()Landroid/net/Uri;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-direct {p0, p1}, Lj4/c$c;->q(Landroid/net/Uri;)V

    .line 187
    .line 188
    .line 189
    :cond_8
    return-void
.end method


# virtual methods
.method public bridge synthetic h(Lx4/e0$e;JJLjava/io/IOException;I)Lx4/e0$c;
    .locals 0

    .line 1
    check-cast p1, Lx4/g0;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Lj4/c$c;->v(Lx4/g0;JJLjava/io/IOException;I)Lx4/e0$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public k()Lj4/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lj4/c$c;->d:Lj4/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lj4/c$c;->d:Lj4/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iget-object v0, p0, Lj4/c$c;->d:Lj4/g;

    .line 12
    .line 13
    iget-wide v4, v0, Lj4/g;->u:J

    .line 14
    .line 15
    invoke-static {v4, v5}, Ly4/q0;->X0(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    const-wide/16 v6, 0x7530

    .line 20
    .line 21
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    iget-object v0, p0, Lj4/c$c;->d:Lj4/g;

    .line 26
    .line 27
    iget-boolean v6, v0, Lj4/g;->o:Z

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    if-nez v6, :cond_1

    .line 31
    .line 32
    iget v0, v0, Lj4/g;->d:I

    .line 33
    .line 34
    const/4 v6, 0x2

    .line 35
    if-eq v0, v6, :cond_1

    .line 36
    .line 37
    if-eq v0, v7, :cond_1

    .line 38
    .line 39
    iget-wide v8, p0, Lj4/c$c;->e:J

    .line 40
    .line 41
    add-long/2addr v8, v4

    .line 42
    cmp-long v0, v8, v2

    .line 43
    .line 44
    if-lez v0, :cond_2

    .line 45
    .line 46
    :cond_1
    move v1, v7

    .line 47
    :cond_2
    return v1
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj4/c$c;->a:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lj4/c$c;->q(Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic o(Lx4/e0$e;JJ)V
    .locals 0

    .line 1
    check-cast p1, Lx4/g0;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lj4/c$c;->u(Lx4/g0;JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj4/c$c;->b:Lx4/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx4/e0;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj4/c$c;->j:Ljava/io/IOException;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    throw v0
.end method

.method public bridge synthetic s(Lx4/e0$e;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Lx4/g0;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Lj4/c$c;->t(Lx4/g0;JJZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public t(Lx4/g0;JJZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    new-instance v14, Ld4/n;

    .line 5
    .line 6
    iget-wide v3, v1, Lx4/g0;->a:J

    .line 7
    .line 8
    iget-object v5, v1, Lx4/g0;->b:Lx4/n;

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->f()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->d()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->b()J

    .line 19
    .line 20
    .line 21
    move-result-wide v12

    .line 22
    move-object v2, v14

    .line 23
    move-wide/from16 v8, p2

    .line 24
    .line 25
    move-wide/from16 v10, p4

    .line 26
    .line 27
    invoke-direct/range {v2 .. v13}, Ld4/n;-><init>(JLx4/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lj4/c$c;->k:Lj4/c;

    .line 31
    .line 32
    invoke-static {v2}, Lj4/c;->D(Lj4/c;)Lx4/d0;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-wide v3, v1, Lx4/g0;->a:J

    .line 37
    .line 38
    invoke-interface {v2, v3, v4}, Lx4/d0;->c(J)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lj4/c$c;->k:Lj4/c;

    .line 42
    .line 43
    invoke-static {v1}, Lj4/c;->C(Lj4/c;)Ld4/a0$a;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v2, 0x4

    .line 48
    invoke-virtual {v1, v14, v2}, Ld4/a0$a;->q(Ld4/n;I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public u(Lx4/g0;JJ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->e()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lj4/i;

    .line 10
    .line 11
    new-instance v15, Ld4/n;

    .line 12
    .line 13
    iget-wide v4, v1, Lx4/g0;->a:J

    .line 14
    .line 15
    iget-object v6, v1, Lx4/g0;->b:Lx4/n;

    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->f()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->d()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->b()J

    .line 26
    .line 27
    .line 28
    move-result-wide v13

    .line 29
    move-object v3, v15

    .line 30
    move-wide/from16 v9, p2

    .line 31
    .line 32
    move-wide/from16 v11, p4

    .line 33
    .line 34
    invoke-direct/range {v3 .. v14}, Ld4/n;-><init>(JLx4/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 35
    .line 36
    .line 37
    instance-of v3, v2, Lj4/g;

    .line 38
    .line 39
    const/4 v4, 0x4

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    check-cast v2, Lj4/g;

    .line 43
    .line 44
    invoke-direct {v0, v2, v15}, Lj4/c$c;->w(Lj4/g;Ld4/n;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v0, Lj4/c$c;->k:Lj4/c;

    .line 48
    .line 49
    invoke-static {v2}, Lj4/c;->C(Lj4/c;)Ld4/a0$a;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2, v15, v4}, Ld4/a0$a;->t(Ld4/n;I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string v2, "Loaded playlist has unexpected type."

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-static {v2, v3}, Lb3/e3;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lb3/e3;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iput-object v2, v0, Lj4/c$c;->j:Ljava/io/IOException;

    .line 65
    .line 66
    iget-object v2, v0, Lj4/c$c;->k:Lj4/c;

    .line 67
    .line 68
    invoke-static {v2}, Lj4/c;->C(Lj4/c;)Ld4/a0$a;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget-object v3, v0, Lj4/c$c;->j:Ljava/io/IOException;

    .line 73
    .line 74
    const/4 v5, 0x1

    .line 75
    invoke-virtual {v2, v15, v4, v3, v5}, Ld4/a0$a;->x(Ld4/n;ILjava/io/IOException;Z)V

    .line 76
    .line 77
    .line 78
    :goto_0
    iget-object v2, v0, Lj4/c$c;->k:Lj4/c;

    .line 79
    .line 80
    invoke-static {v2}, Lj4/c;->D(Lj4/c;)Lx4/d0;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iget-wide v3, v1, Lx4/g0;->a:J

    .line 85
    .line 86
    invoke-interface {v2, v3, v4}, Lx4/d0;->c(J)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public v(Lx4/g0;JJLjava/io/IOException;I)Lx4/e0$c;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    new-instance v15, Ld4/n;

    .line 8
    .line 9
    iget-wide v4, v1, Lx4/g0;->a:J

    .line 10
    .line 11
    iget-object v6, v1, Lx4/g0;->b:Lx4/n;

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->f()Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->d()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->b()J

    .line 22
    .line 23
    .line 24
    move-result-wide v13

    .line 25
    move-object v3, v15

    .line 26
    move-wide/from16 v9, p2

    .line 27
    .line 28
    move-wide/from16 v11, p4

    .line 29
    .line 30
    invoke-direct/range {v3 .. v14}, Ld4/n;-><init>(JLx4/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->f()Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "_HLS_msn"

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x1

    .line 44
    const/4 v5, 0x0

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    move v3, v4

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v3, v5

    .line 50
    :goto_0
    instance-of v6, v2, Lj4/j$a;

    .line 51
    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    if-eqz v6, :cond_3

    .line 55
    .line 56
    :cond_1
    instance-of v3, v2, Lx4/a0;

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    move-object v3, v2

    .line 61
    check-cast v3, Lx4/a0;

    .line 62
    .line 63
    iget v3, v3, Lx4/a0;->d:I

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const v3, 0x7fffffff

    .line 67
    .line 68
    .line 69
    :goto_1
    if-nez v6, :cond_7

    .line 70
    .line 71
    const/16 v6, 0x190

    .line 72
    .line 73
    if-eq v3, v6, :cond_7

    .line 74
    .line 75
    const/16 v6, 0x1f7

    .line 76
    .line 77
    if-ne v3, v6, :cond_3

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    new-instance v3, Ld4/q;

    .line 81
    .line 82
    iget v6, v1, Lx4/g0;->c:I

    .line 83
    .line 84
    invoke-direct {v3, v6}, Ld4/q;-><init>(I)V

    .line 85
    .line 86
    .line 87
    new-instance v6, Lx4/d0$c;

    .line 88
    .line 89
    move/from16 v7, p7

    .line 90
    .line 91
    invoke-direct {v6, v15, v3, v2, v7}, Lx4/d0$c;-><init>(Ld4/n;Ld4/q;Ljava/io/IOException;I)V

    .line 92
    .line 93
    .line 94
    iget-object v3, v0, Lj4/c$c;->k:Lj4/c;

    .line 95
    .line 96
    iget-object v7, v0, Lj4/c$c;->a:Landroid/net/Uri;

    .line 97
    .line 98
    invoke-static {v3, v7, v6, v5}, Lj4/c;->n(Lj4/c;Landroid/net/Uri;Lx4/d0$c;Z)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_5

    .line 103
    .line 104
    iget-object v3, v0, Lj4/c$c;->k:Lj4/c;

    .line 105
    .line 106
    invoke-static {v3}, Lj4/c;->D(Lj4/c;)Lx4/d0;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-interface {v3, v6}, Lx4/d0;->a(Lx4/d0$c;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v6

    .line 114
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    cmp-long v3, v6, v8

    .line 120
    .line 121
    if-eqz v3, :cond_4

    .line 122
    .line 123
    invoke-static {v5, v6, v7}, Lx4/e0;->h(ZJ)Lx4/e0$c;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    goto :goto_2

    .line 128
    :cond_4
    sget-object v3, Lx4/e0;->g:Lx4/e0$c;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    sget-object v3, Lx4/e0;->f:Lx4/e0$c;

    .line 132
    .line 133
    :goto_2
    invoke-virtual {v3}, Lx4/e0$c;->c()Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    xor-int/2addr v4, v5

    .line 138
    iget-object v5, v0, Lj4/c$c;->k:Lj4/c;

    .line 139
    .line 140
    invoke-static {v5}, Lj4/c;->C(Lj4/c;)Ld4/a0$a;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    iget v6, v1, Lx4/g0;->c:I

    .line 145
    .line 146
    invoke-virtual {v5, v15, v6, v2, v4}, Ld4/a0$a;->x(Ld4/n;ILjava/io/IOException;Z)V

    .line 147
    .line 148
    .line 149
    if-eqz v4, :cond_6

    .line 150
    .line 151
    iget-object v2, v0, Lj4/c$c;->k:Lj4/c;

    .line 152
    .line 153
    invoke-static {v2}, Lj4/c;->D(Lj4/c;)Lx4/d0;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    iget-wide v4, v1, Lx4/g0;->a:J

    .line 158
    .line 159
    invoke-interface {v2, v4, v5}, Lx4/d0;->c(J)V

    .line 160
    .line 161
    .line 162
    :cond_6
    return-object v3

    .line 163
    :cond_7
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 164
    .line 165
    .line 166
    move-result-wide v5

    .line 167
    iput-wide v5, v0, Lj4/c$c;->g:J

    .line 168
    .line 169
    invoke-virtual/range {p0 .. p0}, Lj4/c$c;->n()V

    .line 170
    .line 171
    .line 172
    iget-object v3, v0, Lj4/c$c;->k:Lj4/c;

    .line 173
    .line 174
    invoke-static {v3}, Lj4/c;->C(Lj4/c;)Ld4/a0$a;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-static {v3}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    check-cast v3, Ld4/a0$a;

    .line 183
    .line 184
    iget v1, v1, Lx4/g0;->c:I

    .line 185
    .line 186
    invoke-virtual {v3, v15, v1, v2, v4}, Ld4/a0$a;->x(Ld4/n;ILjava/io/IOException;Z)V

    .line 187
    .line 188
    .line 189
    sget-object v1, Lx4/e0;->f:Lx4/e0$c;

    .line 190
    .line 191
    return-object v1
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj4/c$c;->b:Lx4/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx4/e0;->l()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
